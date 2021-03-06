<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Show extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		
		$this->load->model('Role_chk', 'chk');
		$this->load->model('numbertobangla', 'bnc');
	}
	public function _remap($method, $params=array()){
		$funcs = get_class_methods($this);
		if(in_array($method, $funcs)){ // We are trying to go to a method in this class
			return call_user_func_array(array($this, $method), $params);
		}
		else{
		  show_404();
		}
	}
	/*==== font page show function start =====*/
	public function index()
	{
		$data = array();
		$data['title'] = "Union Parishad";
		$data['all_data'] = $this->setup->getdata();
		$this->load->view('home/header',$data);
		$this->load->view('home/slide');
		$this->load->view('home/content');
		$this->load->view('home/right_content');
		$this->load->view('home/footer');
	}
	/*==== font page show function end =======*/
	
	/* ==========nagorik application search start ==========*/
	public function searchNagorickInformation()
	{
		$this->load->view('home/filterApplication/searchNagorickInformation');
	}
	/* ==========nagorik application search end ==========*/
	/*========= other service application search start ========*/
	public function searchOtherServiceInformation()
	{
		$this->load->view('home/filterApplication/searchOtherServiceInformation');
	}
	/*========= other service application search end ==========*/
	
	/*======= trade application search start==========*/
	public function searchTradelicenseInformation()
	{
		$this->load->view('home/filterApplication/searchTradelicenseInformation');
	}
	/*======= trade application search end==========*/
	
	/*===========oarish application serach start ===========*/
	public function searchOarishInformation()
	{
		$this->load->view('home/filterApplication/searchOarishInformation');
	}

	// holding tax
	public function holdingTaxBill()
	{
		if(isset($_GET['id']) && !empty($_GET['id'])){
			$receive = $this->input->get();
			$data=array(
				'all_data'=> $this->setup->getdata(),
				'row'	  => $this->setup->holding_tax_invoice_info(sha1($receive['id']))
			);
			
			$this->load->view('admin/moneyReceipt/bosodbitaTaxInvoice',$data);
		}
	}
	// holding tax
	public function holdingTaxBillInvoice()
	{
		if(isset($_GET['holding_no']) && !empty($_GET['holding_no'])){
			$receive = $this->input->get();
			$data=array(
				'all_data'=> $this->setup->getdata(),
				'row'	  => $this->setup->holding_tax_invoice_info_user($receive['holding_no'])
			);
			
			$this->load->view('admin/moneyReceipt/bosodbitaTaxInvoice',$data);
		}
	}
	
	/*===========oarish application serach end ===========*/
}