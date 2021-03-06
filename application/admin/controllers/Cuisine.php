
<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Cuisine extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $language = $this->session->userdata('lang') ? $this->session->userdata('lang') : 'english';
        $this->lang->load("common", $language);
    }
    public function index()
    {
        $this->dataModule['results'] =  $this->Sitefunction->get_all_rows(TBL_CUISINE, "*", array('status!=' => 9), array(), array(), '', '', array(), '', array(), array());
        $this->load->view('cuisine/index', $this->dataModule);
    }
    public function add()
    {
        $postData = $this->input->post();
        if ($postData && !empty($postData)) {
            $this->form_validation->set_rules('title', 'title', 'required|min_length[5]|max_length[125]');
            $this->form_validation->set_error_delimiters('<p class="error">', '</p>');
            if ($this->form_validation->run() != FALSE) {
                $data_array['title'] = urlencode($this->input->post('title'));
                $data_array['created'] =$this->utc_time;
                $data_array['image']= "";
                if(isset($_FILES['image']) && !empty($_FILES['image']))
                {
                    $randdom= round(microtime(time()*1000)).rand(000, 999);
                    $file_extension1 =pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION);
                    $file_name1= $randdom.'.'.$file_extension1;
                    if ($_FILES["image"]["error"] <=0) { 
                        move_uploaded_file($_FILES['image']['tmp_name'], UPLOAD_PATH.'cuisine/'. $file_name1);
                        $data_array['image']= $file_name1;
                    } 
                
                
                }
                if ($this->Sitefunction->insert(TBL_CUISINE, $data_array)) {
                    $this->session->set_flashdata('success', $this->lang->line('cuisine_added_successfully'));
                    redirect(CUISINE_PATH);
                } else {
                    $this->session->set_flashdata('error', $this->lang->line('error_try_again'));
                }
            }
        }
        $this->load->view('cuisine/add', $this->dataModule);
    }
    public function delete()
    {

        $this->Sitefunction->delete(TBL_CUISINE, array('id' => $this->input->get_post('id')));
    }

    public function multiple_delete()
    {
        $ids = $this->input->get_post('id');

        foreach ($ids as $id) {
            $this->Sitefunction->delete(TBL_CUISINE, array('id' => $id));
        }
    }
    public function edit($id)
    {
        $this->dataModule['results'] = $this->Sitefunction->get_single_row(TBL_CUISINE, '*', array('id' => $id));
        if (!$id || empty($this->dataModule['results'])) {
            redirect(ERROR_PATH);
        }
        $postData = $this->input->post();
        if ($postData && !empty($postData)) {
            $this->form_validation->set_rules('title', 'title', 'required|min_length[5]|max_length[125]');
            $this->form_validation->set_error_delimiters('<p class="error">', '</p>');
            if ($this->form_validation->run() != FALSE) {
                $data_array['title'] = urlencode($this->input->post('title'));
                $data_array['updated'] = $this->utc_time;
                if(isset($_FILES['image']) && !empty($_FILES['image']))
                {
                    $randdom= round(microtime(time()*1000)).rand(000, 999);
                    $file_extension1 =pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION);
                    $file_name1= $randdom.'.'.$file_extension1;
                    if ($_FILES["image"]["error"] <=0) { 
                        move_uploaded_file($_FILES['image']['tmp_name'], UPLOAD_PATH.'cuisine/'. $file_name1);
                        $data_array['image']= $file_name1;
                    } 
                
                
                }
                if ($this->Sitefunction->update(TBL_CUISINE, $data_array, array('id' => $id))) {
                    $this->session->set_flashdata('success', $this->lang->line('cuisine_updated_successfully'));
                    redirect(CUISINE_PATH);
                } else {
                    $this->session->set_flashdata('error', $this->lang->line('error_try_again'));
                }
            }
        }

        $this->load->view('cuisine/edit', $this->dataModule);
    }
}
?>