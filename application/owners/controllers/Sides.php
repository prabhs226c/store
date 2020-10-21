
<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Sides extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $language= $this->session->userdata('lang') ? $this->session->userdata('lang') : 'english';
        $this->lang->load("common",$language);
        $this->dataModule['foodcategory']= $this->Sitefunction->get_rows(TBL_SUBCATEGORIES, 'id, title', array('status'=>1));
        $this->dataModule['restaurants']= $this->Sitefunction->get_rows(TBL_RESTAURANTS, 'id, name', array('status'=>1,'owner_id'=>$this->user_id));
	}
	public function index() {
        $where = array('s.status!='=>9,'owner_id'=>$this->user_id);
        $columns = "s.*, c.title as sub_title, r.name as restaurant_name";
        $join = array(TBL_SUBCATEGORIES.' as c' => "c.id=s.subcategory_id", TBL_RESTAURANTS.' as r' => "r.id=s.restaurant_id");
        $group_by = '';
        $this->dataModule['results']=  $this->Sitefunction->get_all_rows(TBL_SIDES.' as s', $columns, $where, $join, array(), '', 'LEFT', array(), $group_by, array(), array());
		$this->load->view('sides/index', $this->dataModule);
	}
	public function add($restarent_id=false){
        $postData= $this->input->post();
        if($postData && !empty($postData)) {
            $this->form_validation->set_rules('title', 'title', 'required|min_length[3]|max_length[125]');
            $this->form_validation->set_rules('subcategory_id', 'subcategory', 'required');
            $this->form_validation->set_rules('restaurant_id', 'restaurant', 'required');
            $this->form_validation->set_rules('description', 'description', 'required|min_length[10]');
            $this->form_validation->set_rules('price', 'price', 'required');
            $this->form_validation->set_error_delimiters( '<p class="error">','</p>' );
			if ($this->form_validation->run() != FALSE)
			{
                $data_array['title']= urlencode($this->input->post('title'));
                $data_array['subcategory_id']= $this->input->post('subcategory_id');
                $data_array['restaurant_id']= $this->input->post('restaurant_id');
                $data_array['description']= urlencode($this->input->post('description'));
                $data_array['price']= $this->input->post('price');
                $data_array['created']= $this->utc_time;
                $data_array['updated']= $this->utc_time;
                $data_array['image']= "";
                if(isset($_FILES['image']) && !empty($_FILES['image']))
                {
                    $randdom= round(microtime(time()*1000)).rand(000, 999);
                    $file_extension1 =pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION);
                    $file_name1= $randdom.'.'.$file_extension1;
                    if ($_FILES["image"]["error"] <=0) { 
                        move_uploaded_file($_FILES['image']['tmp_name'], UPLOAD_PATH.'sides/'. $file_name1);
                        $data_array['image']= $file_name1;
                    } 
                
                
                }
                if($this->Sitefunction->insert(TBL_SIDES, $data_array)){
                    $this->session->set_flashdata('success', $this->lang->line('sides_added_successfully'));
                    redirect(SIDES_PATH);
                }else {
                    $this->session->set_flashdata('error', $this->lang->line('error_try_again'));
                }
            }
            
        }
        $this->dataModule['restarent_id']= $restarent_id;
        $this->load->view('sides/add',$this->dataModule);       
    }
	public function delete() {
		
        $this->Sitefunction->delete(TBL_SIDES, array('id'=>$this->input->get_post('id')));
        
    }
    
    public function multiple_delete() {
        $ids= $this->input->get_post('id');

        foreach($ids as $id){
            $this->Sitefunction->delete(TBL_SIDES, array('id'=>$id));
        }

    }

    public function edit($id) {
        $this->dataModule['results']= $this->Sitefunction->get_single_row(TBL_SIDES, '*', array('id'=>$id));
        if(!$id || empty($this->dataModule['results'])) {
            redirect(ERROR_PATH);
        }
        $postData= $this->input->post();
        if($postData && !empty($postData)) {
            $this->form_validation->set_rules('title', 'title', 'required|min_length[3]|max_length[125]');
            $this->form_validation->set_rules('subcategory_id', 'subcategory', 'required');
            $this->form_validation->set_rules('restaurant_id', 'restaurant', 'required');
            $this->form_validation->set_rules('description', 'description', 'required|min_length[10]');
            $this->form_validation->set_rules('price', 'price', 'required');
            $this->form_validation->set_error_delimiters( '<p class="error">','</p>' );
			if ($this->form_validation->run() != FALSE)
			{
                $data_array['title']= urlencode($this->input->post('title'));
                $data_array['subcategory_id']= $this->input->post('subcategory_id');
                $data_array['restaurant_id']= $this->input->post('restaurant_id');
                $data_array['description']= urlencode($this->input->post('description'));
                $data_array['price']= $this->input->post('price');
                $data_array['updated']= $this->utc_time;
                $data_array['image']= $this->dataModule['results']->image;
                if(isset($_FILES['image']) && !empty($_FILES['image']))
                {
                    $randdom= round(microtime(time()*1000)).rand(000, 999);
                    $file_extension1 =pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION);
                    $file_name1= $randdom.'.'.$file_extension1;
                    if ($_FILES["image"]["error"] <=0) { 
                        move_uploaded_file($_FILES['image']['tmp_name'], UPLOAD_PATH.'sides/'. $file_name1);
                        $data_array['image']= $file_name1;
                    } 
                
                
                }
                if($this->Sitefunction->update(TBL_SIDES, $data_array, array('id'=>$id))){
                    $this->session->set_flashdata('success', $this->lang->line('sides_updated_successfully'));
                    redirect(SIDES_PATH);
                }else {
                    $this->session->set_flashdata('error', $this->lang->line('error_try_again'));
                }
            }
            
        }
        
        $this->load->view('sides/edit',$this->dataModule);  
    }
}
?>
