
<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Errors extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $language= $this->session->userdata('lang') ? $this->session->userdata('lang') : 'english';
        $this->lang->load("common",$language);
        $this->dataModule['country']= $this->Sitefunction->get_rows(TBL_COUNTRY, 'id, name', array('status'=>1));

	}
	public function index() {
        echo "<pre>";print_r($this->session); echo "<pre>";
    }
}
?>
