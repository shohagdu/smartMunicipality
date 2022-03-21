<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class InvoiceGenerate extends CI_Controller {
	
	public function __construct(){
		ob_start();
		parent::__construct();
		
		$this->load->model('Transition_model','transition');
		$this->load->model('Generate_model','mgenerate');
        $this->load->model('End_user','EndUser');
		$this->load->model('applicant_model','applicant');
		$this->load->model('dashboard');
		$this->load->model('Role_chk', 'chk');
		$this->load->dbutil();
		
		$logged_status=$this->session->userdata('logged_status');
		if($logged_status==FALSE){
			redirect('mms24','location');
		}
		$passChang = $this->setup->forcePassChange();
		if($passChang==false){
			redirect("setup_section/changePassword");
		}
		$get = $this->setup->basicUnionSetup();
		if($get==false){
			redirect("setup/updatesetupform",'location');
		}
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
	public function index(){
		show_404();
	}
	/*======== nagorick genarate section start  ==============*/
	// for nagorick genarate
	public function nagorickGenarate()
	{
		extract($_GET);
		$data['row']=$this->web->pPorichoe($id);
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/application/invoice_genarate/nagorickGenarate',$data);
		$this->load->view('admin/footer');	
	}
	public function nagorickGenaratePaid()
	{
		extract($_GET);
		
		$data['row']=$this->web->pPorichoe($id);
		$data['invoice_data']=$this->EndUser->getUserInvoiceGenerateNagorik($id);
		  //echo $this->db->last_query($data['invoice_data']);exit;
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/application/invoice_genarate/nagorickGenaratePaid',$data);
		$this->load->view('admin/footer');	
	}
	public function nagorickGenarate_action()
	{
		if($_POST){
            $user=$this->session->userdata('username');
            extract($_POST);

			echo $user;exit;
            // if(trim($fee)==""){echo "দয়া করে ট্রেড লাইসেন্স ফি প্রবেশ করুন.";exit;}
		   
            // $ip         = $this->input->ip_address();
			// $created_at = date("Y-m-d H:i:s");

            // $invoice_data = [
            //     'user_id'            => $user_id,
            //     'trackid'            => $trackid,
            //     'record_id'          => $id,
            //     'fee'                => $fee,
            //     'total_fee'          => $fee,
            //     'account_no'         => $acno,
            //     'invoice_date'       => date('Y-m-d', strtotime($payment_date)),
            //     'type'               => 2,
            //     'is_paid'            => 0,
            //     'is_active'          => 1,
            //     'created_by'         => $user,
            //     'created_ip'         => $ip,
            //     'created_at'         => $created_at,
            // ];

			// echo "<pre>";
			// print_r($invoice_data); exit;

			// $nagorik_data = [
            //     'is_process' => 1,
            // ];

            // $nagorik_insert = $this->EndUser->enduserNagorikStatusAction($nagorik_data, $id);
            // $insert = $this->EndUser->enduserInvoiceAction($invoice_data, 'end_user_invoice');

            // if($insert==true){
			// 	$this->session->set_flashdata('success', 'সফলভাবে ইনভয়েস তৈরি  হয়েছে।');
            //    redirect('Applicant/nagorickapplicant?napply=new'); 
            // }else{
			// 	$this->session->set_flashdata('errors', 'কোন সমস্যা হয়েছে , আবার চেষ্টা করুন।');
            //    redirect('Applicant/nagorickapplicant?napply=new'); 
            // }
        }
	}
	public function nagorikInvoice()
	{
		if($_POST){
            $user=$this->session->userdata('username');
            extract($_POST);

			if(trim($fee)==""){echo "দয়া করে ফি প্রদান করুন.";exit;}
		   
            $ip         = $this->input->ip_address();
			$created_at = date("Y-m-d H:i:s");

            $invoice_data = [
                'user_id'            => $user_id,
                'trackid'            => $trackid,
                'record_id'          => $id,
                'fee'                => $fee,
                'total_fee'          => $fee,
                'account_no'         => $acno,
                'invoice_date'       => date('Y-m-d', strtotime($payment_date)),
                'type'               => 2,
                'is_paid'            => 0,
                'is_active'          => 1,
                'created_by'         => $user,
                'created_ip'         => $ip,
                'created_at'         => $created_at,
            ];

			$nagorik_data = [
                'is_process' => 1,
            ];

            $nagorik_insert = $this->EndUser->enduserNagorikStatusAction($nagorik_data, $id);
            $insert = $this->EndUser->enduserInvoiceAction($invoice_data, 'end_user_invoice');

            if($insert==true){
				$this->session->set_flashdata('success', 'সফলভাবে ইনভয়েস তৈরি  হয়েছে।');
               redirect('Applicant/nagorickapplicant?napply=new'); 
            }else{
				$this->session->set_flashdata('errors', 'কোন সমস্যা হয়েছে , আবার চেষ্টা করুন।');
               redirect('Applicant/nagorickapplicant?napply=new'); 
            }
		}
	}
	/*======== nagorick genarate section end  ==============*/
	
	/*======== Other service  genarate section start  ==============*/
	// for other service  genarate
	public function otherServiceGenarate()
	{
		extract($_GET);
		$data['row']=$this->mgenerate->otherServiceInfo($id);
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/application/invoice_genarate/otherServiceGenarate',$data);
		$this->load->view('admin/footer');	
	}
	public function otherServiceGenaratePaid()
	{
		extract($_GET);
		$data['row']=$this->EndUser->otherServiceInfo($id);
		$data['invoice_data']=$this->EndUser->getUserInvoiceGenerateOthersNagorik($id);
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/application/invoice_genarate/otherServiceGenaratePaid',$data);
		$this->load->view('admin/footer');	
	}
	public function otherServiceGenarate_action()
	{
		if($_POST){
            $user=$this->session->userdata('username');
            extract($_POST);

			if(trim($fee)==""){echo "দয়া করে ফি প্রদান করুন.";exit;}
		   
            $ip         = $this->input->ip_address();
			$created_at = date("Y-m-d H:i:s");

            $invoice_data = [
                'user_id'            => $user_id,
                'trackid'            => $trackid,
                'record_id'          => $id,
                'fee'                => $fee,
                'total_fee'          => $fee,
                'account_no'         => $acno,
                'invoice_date'       => date('Y-m-d', strtotime($payment_date)),
                'type'               => 3,
                'is_paid'            => 0,
                'is_active'          => 1,
                'created_by'         => $user,
                'created_ip'         => $ip,
                'created_at'         => $created_at,
            ];

			$nagorik_data = [
                'is_process' => 1,
            ];

            $nagorik_insert = $this->EndUser->enduserOthersNagorikStatusAction($nagorik_data, $id);
            $insert = $this->EndUser->enduserInvoiceAction($invoice_data, 'end_user_invoice');

            if($insert==true){
				$this->session->set_flashdata('success', 'সফলভাবে ইনভয়েস তৈরি  হয়েছে।');
               redirect('Applicant/otherService?napply=new'); 
            }else{
				$this->session->set_flashdata('errors', 'কোন সমস্যা হয়েছে , আবার চেষ্টা করুন।');
               redirect('Applicant/otherService?napply=new'); 
            }
		}
	}
	/*======== other service genarate section end  ==============*/
	
	/* ======== tradelicense genarate section start =========*/
	
	public function tradelicenseGenarate()
	{
		extract($_GET);
		$data['id']=$id;
		$data['row']=$this->web->getTinfo($id);
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/application/invoice_genarate/tradelicenseGenarate',$data);
		$this->load->view('admin/footer');
	}
	// 
	public function ctotal()
	{
		$total=0;
		extract($_GET);
		$total=($fee+$due)-$ds;
		$total=($total*15)/100;
		echo "<input type='text' class='form-control highlisht_font' name='vat' value='$total' id='vat' readonly />";
	}
	//
	public function intotal()
	{
		$total=0;
		extract($_GET);
		$total=($fee+$due+$vat+$sbf+$sub_charge)-$ds;
		echo "<input type='text' class='form-control highlisht_font' name='total' value='$total' id='total' readonly />";
	}
	//
	public function tradelicenseGenarate_action()
	{
		if($_POST){
            $user=$this->session->userdata('username');
            extract($_POST);
            if(trim($fee)==""){echo "দয়া করে ট্রেড লাইসেন্স ফি প্রবেশ করুন.";exit;}
		    if(trim($scharge)==""){echo "দয়া করে সাব চার্জ পরিমান প্রবেশ করুন.";exit;}
            $ip         = $this->input->ip_address();
			$created_at = date("Y-m-d H:i:s");

            $invoice_data = [
                'user_id'            => $user_id,
                'trackid'            => $trackid,
                'record_id'          => $id,
                'fee'                => $fee,
                'signboard_fee'      => $sbfee,
                'recommendation_fee' => $discount,
                'due_fee'            => $due,
                'vat'                => $vat,
                'sub_charge'         => $scharge,
                'total_fee'          => $total,
                'account_no'         => $acno,
                'invoice_date'       => date('Y-m-d', strtotime($payment_date)),
                'type'               => 1,
                'is_paid'            => 0,
                'is_active'          => 1,
                'created_by'         => $user,
                'created_ip'         => $ip,
                'created_at'         => $created_at,
            ];

			$trade_data = [
                'is_process' => 1,
            ];

            $trade_insert = $this->EndUser->enduserTradeStatusAction($trade_data, $id);
            $insert = $this->EndUser->enduserInvoiceAction($invoice_data, 'end_user_invoice');

            if($insert==true){
               redirect('Applicant/tradelicenseapplicant?napply=new'); 
            }else{
               redirect('Applicant/tradelicenseapplicant?napply=new'); 
            }
        }
	}

	public function tradelicenseGenaratePaid()
	{
		extract($_GET);
		$data['id']=$id;
		$data['row']=$this->web->getTinfo($id);
		$data['invoice_data']=$this->EndUser->getUserInvoiceGenerate($id);
		//  echo $this->db->last_query($data['invoice_data']);exit;
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/application/invoice_genarate/tradelicenseGenaratePaid',$data);
		$this->load->view('admin/footer');
	}
	
	/* ======== tradelicense genarate section end =========*/
	
	
	/*======== oarish genarate section start  ==============*/
	// for oarish genarate........
	public function warishGenarate()
	{
		extract($_GET);
		$data['row']=$this->web->wccinfo($id);
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view("admin/application/genarate/warishGenarate",$data);
		$this->load->view('admin/footer');	
	}
	
	public function warishGenarate_action()
	{
		$this->load->view('admin/application/jqueryPost/warishGenarate_action');
	}
	/*======== oarish genarate section end   ==============*/
}
