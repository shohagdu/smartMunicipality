<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	
	public function __construct(){
		ob_start();
		parent::__construct();
        $this->load->library('session');
		$this->load->model('Transition_model','transition');
		$this->load->model('Generate_model','mgenerate');
		$this->load->model('Manage_admin','manageAdmin');
		$this->load->model('End_user','EndUser');
		$this->load->model('dashboard');
		$this->load->model('Security_set', 'sq');
		$this->load->model('Role_chk', 'chk');

		 $logged_status=$this->session->userdata('logged_status');
		// echo $this->sq->check_exist_q();
		$logged_users =$this->session->userdata('nid');
		if($logged_status==TRUE ){
			if(!empty($logged_users) || $logged_users > 0){
				redirect('show'); 
			}
		}

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
	public function index()
	{
		$data=array(
			'bank_report'=>$this->dashboard->getdata('acinfo'),
			'sms_report'=>$this->dashboard->sms_query('inbox')
		);

		$this->load->view('admin/topBar',$data);
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/content');
		$this->load->view('admin/footer');
	}
	
	function viewQuery()
	{
		$this->load->view('admin/topBar',$data);
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/query');
		$this->load->view('admin/footer');
	}
	// for mamla information 
	public function mamlaNotice(){
		$data = array(
			'mamlaInfo'	=> $this->manageAdmin->getAllMamla()
		);
		
		$this->load->view('admin/topBar',$data);
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/mamlaPage/mamlaNotice');
		$this->load->view('admin/footer');
	}
	public function mamlaInformationSubmit(){
		$this->load->view('admin/mamlaPage/mamlaInformationSubmit');
	}
	public function subjectAndStatusInfo(){
		if(isset($_POST['id'])){
			extract($_POST);
			$show = $this->manageAdmin->getSubjectAndStatusInfo("mamla_tbl",$id);
			//print_r($show);
			echo $show->id.'|'.$show->subject.'|'.$show->status.'|'.$show->comments;
		}
	}
	public function updateMamlaStatus(){
		extract($_POST);
		$comments = trim($comments);
		$data = array(
			'subject'	=> $subject,
			'status'	=> $status,
			'comments'	=> $comments
		);
		$this->db->trans_start();
			$this->db->where('id',$hid);
			$this->db->update('mamla_tbl',$data);
		$this->db->trans_complete();
		
		if($this->db->trans_status() === TRUE){
			redirect("Admin/mamlaNotice","location");
		}
		else {
			echo "Oops!!! Something error";
		}
	}
	public function editMamla(){
		extract($_GET);
		$data = array(
			'mamlaInfo' => $this->manageAdmin->getMamlaInfo($id),
			'badiInfo'	=> $this->manageAdmin->badiInfo($id),
			'bibadiInfo'=> $this->manageAdmin->bibadiInfo($id)
		);
		
		$this->load->view('admin/topBar',$data);
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/mamlaPage/editMamla');
		$this->load->view('admin/footer');
	}
	public function onebadiup(){
		extract($_GET);
		$data=array(
			'badi_name'			=>$badi_name,
			'badi_father_name'	=>$badi_father_name,
			'gram'				=>$badi_gram
		);
		$this->db->where('id',$id);
		$this->db->update('mamla_badi',$data);
		echo "Modified Successfully.";
	}
	public function badidelete(){
		extract($_GET);
		$this->db->where('id',$id);
		$this->db->delete('mamla_badi');
		echo "Deleted Successfully.";
	}
	public function onebibadiup(){
		extract($_GET);
		$data=array(
			'bibadi_name'		=>$bibadi_name,
			'bibadi_father_name'=>$bibadi_father_name,
			'gram'				=>$bibadi_gram
		);
		$this->db->where('id',$id);
		$this->db->update('mamla_bibadi',$data);
		echo "Modified Successfully.";
	}
	public function bibadidelete(){
		extract($_GET);
		$this->db->where('id',$id);
		$this->db->delete('mamla_bibadi');
		echo "Deleted Successfully.";
	}
	public function editAllmamlaInfo(){
		$this->load->view('admin/mamlaPage/editAllmamlaInfo');
	}
	public function mamlaNoticePrint(){
		extract($_GET);
		if(isset($_GET['id'])){$id = $this->input->get('id',TRUE);}
		else{
			$id = $this->session->userdata('sCode');
			$id=chop($id,'/');
			$id = sha1($id);
		}
		
		
		$data=array(
			'all_data'	=> $this->setup->getdata(),
			'mamlaInfo' => $this->manageAdmin->getMamlaInfo($id),
			'badiInfo'	=> $this->manageAdmin->badiInfo($id),
			'bibadiInfo'=> $this->manageAdmin->bibadiInfo($id)
		);
		
		$this->load->view('admin/mamlaPage/noticePrint/noticePrintPage',$data);
	}
	// for tax collection ...........
	public function taxCollection()
	{
		$data = [
			'member_info' => $this->setup->get_all_member_info(),
			'rate_sheet'  => $this->setup->get_current_active_rate_sheet()
		];
		// $data = [];
		// $page_view['main_content'] = $this->load->view('admin/taxPage/taxCollection', $data, true);
		// $this->load->view('admin/common/common_page', $page_view);
		
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/taxPage/taxCollection', $data);
		$this->load->view('admin/footer');
	}
	public function taxHoldingRegistration(){
		$data = [
			'member_info' => $this->setup->get_all_member_info(),
			'rate_sheet'  => $this->setup->get_current_active_rate_sheet()
		];
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/holdingTax/holdingRegister', $data);
		$this->load->view('admin/footer');
	}
	public function holdingRegisterEdit(){
		$id = (string) $_GET['id'];
		$data = [
			'holding_tax_person' => $this->manageAdmin->get_holding_tax_person($id),
			'rate_sheet'  => $this->setup->get_current_active_rate_sheet(),
			'member_info' => $this->setup->get_all_member_info()
		];
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/holdingTax/holdingRegisterEdit', $data);
		$this->load->view('admin/footer');
	}

	public function taxHoldingRegistersInfo(){
		$data['get_holding_info']  = $this->manageAdmin->get_holding_list();
		$data['rate_sheet']        = $this->setup->get_current_active_rate_sheet();
		// echo "<pre>";
		// print_r($data['get_holding_info']);exit;

		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/holdingTax/holdingRegisterList', $data);
		$this->load->view('admin/footer');
	}
	public function get_holding_person_list_data(){
		$postData = $this->input->post();
        $fetch_data = $this->setup->getAlHoldingInfo($postData);
        echo json_encode($fetch_data); exit;
	}
	
	public function holdingTaxGenerate(){
		$data['fiscal_year'] = $this->setup->get_fiscal_year();
		$data['rate_sheet']  = $this->setup->get_current_active_rate_sheet();

		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/holdingTax/holdingTaxGenerate', $data);
		$this->load->view('admin/footer');
	}
	// holding tax invoice
	public function holdingTaxGenerateInvoiceList(){
	//	$data['invoice_list']   = $this->setup->holding_tax_invoice_list();
		$data['rate_sheet']     = $this->setup->get_current_active_rate_sheet();

		// echo "<pre>";
        // print_r($data['invoice_list']);exit;

		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/holdingTax/holdingInvoiceGenerateList', $data);
		$this->load->view('admin/footer');
	}

	public function get_holding_tax_invoice_list_data(){
		$postData = $this->input->post();
        $fetch_data = $this->setup->getAlHoldingInvoiceInfo($postData);
        echo json_encode($fetch_data); exit;
	}

	// tax bill collection
	public function holdingTaxPayment(){
		$id =  $_GET['id'];
		$data['invoice_info']   = $this->setup->holding_tax_invoice_info($id);
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/holdingTax/holdingTaxPayment', $data);
		$this->load->view('admin/footer');
	}
	public function BosotbitaTaxPaymentAction(){
		$paymentId =  $_POST['id'];
		
		$payment_date = date('Y-m-d',strtotime($_POST['payment_date']));
		
		//updated logs
		$Qyy=$this->db->query("select acno from acinfo where acname='CASH ACCOUNT' LIMIT 1")->row();
		$acno=$Qyy->acno;
		
		//find last transaction no and store....
		$transno=$this->transition->get_transaction();
		$transaction_info=array('tid'=>$transno);
		
		//find last credet voucher no and store....	
		$voucherno=$this->transition->get_credit_voucher();
		$voucher_info=array('vno'=>$voucherno);
		
		//find trade license
		$key="হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর";
		$fRow = $this->mgenerate->get_subctg_info($key); 		// get sub category name,fund id,main category Name
		$fundId =  $this->mgenerate->get_fundId($fRow->mc_id);	// for fund id

		//previous balance
		$Rrow=$this->transition->get_account_last_balance($acno);
		$nBalance=($Rrow->balance+$_POST['totalAmount']);
		
		$ledg=array(
			'tid'			=> $transno,
			'voucherno'		=> $voucherno,
			'vtype'			=> 'C',
			'catid'			=> $fRow->mc_id,
			'subid'			=> $fRow->id,
			'fundtype'		=> $fundId->fund_id,
			'purpose'		=> $key,
			'ac'			=> $acno,
			'cr'			=> $_POST['totalAmount'],
			'balance'		=> $nBalance,
			'payment_date'	=> $payment_date,
			'inby'			=> $user
		);
		
		$moneyinfo=array(
			'trackid'		    => (string)$_POST['dagNo'],
			'bno'			    => NULL,
			'm_r_n'			    => NULL,
			'inno'			    => $voucherno,
			'fiscal_year_id'    => json_encode($_POST['fiscalYear']),
			'rate_sheet_id'	    => json_encode($_POST['holdingType']),
			'rate_sheet_amount'	=> json_encode($_POST['totalAmount']),
			'fee'			    => $_POST['totalAmount'],
			'discount'		    => $_POST['discount'],
			'total'			    => $_POST['totalAmount'],
			'payment_date'	    => $payment_date,
			'status'		    => 4
		);
		
		//get fund sub category last balance [ Individual sub category last balance]
		$scrow=$this->transition->get_fund_sub_category_last_balance($fRow->id);
		$snBalance=($scrow->balance+$money);
		
		$sLedg=array(
			'mc_id'			=> $fRow->mc_id,
			'subid'			=> $fRow->id,
			'fund_id'		=> $fundId->fund_id,
			'trno'			=> $transno,
			'voucherno'		=> $voucherno,
			'vtype'			=> 'C',
			'sub_title'		=> $fRow->sub_title,
			'cr'			=> $_POST['totalAmount'],
			'balance'		=> $snBalance,
			'payment_date'	=> $payment_date
		);
		
		if(array_key_exists("holding_money_receipt",$this->session->all_userdata())){
			$this->session->unset_userdata('holding_money_receipt');
		}
		$sData=array(
			'holdingNumber'	=>(string)$_POST['dagNo'],
			'vno'			=>$voucherno
		);

		$this->session->set_userdata('holding_money_receipt', $sData);

		$holdingPaymentData = array(
			'is_paid'     => 1,
			'type'        => 1,
			'status'      => 3,
			'voucherno'   => $voucherno,
			'payment_date'=> $payment_date,
			'updated_by'  => $this->session->userdata('id'),
			'updated_ip'  => $this->input->ip_address(),
			'updated_date'=> date("Y-m-d H:i:s"),
		);

		try {
			
		    $this->db->trans_begin();
			$this->mgenerate->common_insert("transaction",$transaction_info);
			$this->mgenerate->common_insert("credit_voucher",$voucher_info);
			$this->mgenerate->common_insert("money",$moneyinfo);
			$this->mgenerate->common_insert("fund_sub_ctg",$sLedg);
			$this->mgenerate->common_insert("ledger",$ledg);
			
			$this->db->where('id',$paymentId)->update('payment_log_bosotbita',$holdingPaymentData);
			
			//update bank account............
			$this->mgenerate->common_update_bankLedger("acinfo", "balance", "acno", $acno, $_POST['totalAmount']);
			$this->mgenerate->common_update_bankLedger("mainctg", "balance", "id", $fRow->mc_id, $_POST['totalAmount']);
			$this->mgenerate->common_update_bankLedger("subctg", "balance", "id",$fRow->id, $_POST['totalAmount']);
		$this->db->trans_complete();

		}
		catch (Exception $e){
			$this->db->trans_rollback();
			echo "<pre>";
			print_r($e); exit;
		}

		if($this->db->trans_status() === TRUE){
			redirect('Admin/holdingTaxGenerateInvoiceList', 'location');
		}
		else {
			$this->db->trans_rollback();
			
			redirect('Admin/holdingTaxGenerateInvoiceList', 'location');
		}
		
	}
	// holding tax bill collection
	public function holdingTaxBillCollection(){
		$data['fiscal_year'] = $this->setup->get_fiscal_year();
		$data['rate_sheet']  = $this->setup->get_current_active_rate_sheet();

		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/holdingTax/holdingTaxBillCollection', $data);
		$this->load->view('admin/footer');
	}
	public function taxHoldingTaxSend(){
		$data['fiscal_year'] = $this->setup->get_fiscal_year();
		$data['rate_sheet']  = $this->setup->get_current_active_rate_sheet();

		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/holdingTax/taxHoldingTaxSend', $data);
		$this->load->view('admin/footer');
	}

	public function taxCollectionPage(){
		$this->load->view('admin/taxPage/taxCollectionPage');
	}
	public function taxGeneratePage(){
		$data['fiscal_year'] = $this->setup->get_fiscal_year();
		$data['rate_sheet']  = $this->setup->get_current_active_rate_sheet();
	
		$this->load->view('admin/taxPage/taxGeneratePage', $data);
	}
	public function tradlicencePesajibiKorCollectionPage(){
		$this->load->view('admin/taxPage/tradlicencePesajibiKorCollectionPage');
	}
	public function tradlicenceHoldingTaxCollectionPage(){
		$this->load->view('admin/taxPage/tradlicenceHoldingTaxCollectionPage');
	}
	protected function _check_holding_tax_registration_form_required_field($receive){
		if(trim($receive['name']) == ''){
			return ['status' => 'error', 'message' => 'Name field is required'];
		}else if(trim($receive['fatherName']) == ''){
			return ['status' => 'error', 'message' => 'Father name field is required'];
		}else if(trim($receive['village']) == ''){
			return ['status' => 'error', 'message' => 'Village field is required'];
		}else if(trim($receive['wordNo']) == ''){
			return ['status' => 'error', 'message' => 'Word number field is required'];
		}else if(trim($receive['holdingNumber']) == ''){
			return ['status' => 'error', 'message' => 'Holding Number field is required'];
		}else if(trim($receive['dagNo']) == ''){
			return ['status' => 'error', 'message' => 'Dag Number field is required'];
		}else if(trim($receive['rateSheet']) == ''){
			return ['status' => 'error', 'message' => 'Bosot bitar Doron field is required'];
		}else{
			return ['status' => 'success', 'message' => 'Everything is ok' ];
		}
	}
	// New bosotbita tax collection ........
	public function newBosotbitaTaxCollection()
	{	$receive = $this->input->post();
		// check required value
		$check_required_field = $this->_check_holding_tax_registration_form_required_field($receive);
		if($check_required_field['status'] !== 'success'){
			echo json_encode($check_required_field);exit;
		}
		// check duplicate dagno
		$is_duplicate = $this->setup->is_insert_duplicate('holdingclientinfo', 'dag_no', $receive['dagNo']);
		if($is_duplicate){
			echo json_encode(['status' => 'error', 'message' => 'Oops!!! Dag number Already exist']); exit;
		}
		// check duplicate nationalId
		// $is_duplicate = $this->setup->is_insert_duplicate('holdingclientinfo', 'national_id', $receive['nationalId']);
		// if($is_duplicate){
			// echo json_encode(['status' => 'error', 'message' => 'Oops!!! national Id Already exist']); exit;
		// }
		
		// check duplicate birthCertificateId	
		// $is_duplicate = $this->setup->is_insert_duplicate('holdingclientinfo', 'birth_certificate_id', $receive['birthCertificateId']);
		// if($is_duplicate){
			// echo json_encode(['status' => 'error', 'message' => 'Oops!!! birthCertificate Id Already exist']); exit;
		// }
		$response = $this->manageAdmin->tax_registration_operation($receive);
		echo json_encode($response);exit;
	}
	public function UpdatenewBosotbitaTaxCollection()
	{	$receive = $this->input->post();
		// check required value
		$check_required_field = $this->_check_holding_tax_registration_form_required_field($receive);
		if($check_required_field['status'] !== 'success'){
			echo json_encode($check_required_field);exit;
		}
		// check duplicate dagno
		$is_duplicate = $this->setup->is_insert_duplicate('holdingclientinfo', 'dag_no', $receive['dagNo']);
		if($is_duplicate){
			echo json_encode(['status' => 'error', 'message' => 'Oops!!! Dag number Already exist']); exit;
		}
		$response = $this->manageAdmin->tax_registration_operation_update($receive);
		echo json_encode($response);exit;
	}
	// old bosodbit tax collection .........
	public function oldBosotbitaTaxCollection()
	{
		$this->load->view('admin/taxPage/jqueryPost/oldBosotbitaTaxCollection');
	}
	// bosodbita history page..............
	public function historyBosod()
	{
		 $this->load->view('admin/taxPage/history/historyBosod');
	}
	// boshod bita search query............
	public function search_dag_no()
	{
		$receive = (array)$this->input->post();
		$dag_no = (string) trim($receive['dagNo']);
		//$dag_no = (string) $_GET['dagNo'];
		$response = $this->manageAdmin->get_dag_no_wise_tax_person($dag_no);
		if($response['status'] !== 'success'){
			echo json_encode($response);exit;
		}else{
			
			$all_info = [
				'info'	  => $response,
				'history' => $this->manageAdmin->get_dag_no_wise_bosotbita_history($dag_no)
			];
			$feedback =[
				'status'	=> $response['status'],
				'message'   => $response['message'],
				'data'		=> $this->load->view('admin/taxPage/history/bosodBitaHistoryInformation.php', $all_info, true)
			];
			echo json_encode($feedback);exit;
		}
	}
	public function searchHolding()
	{
		$receive = (array)$this->input->post();
		$holding_no = (string) trim($receive['holdingNo']);
		//$dag_no = (string) $_GET['dagNo'];
		$response = $this->manageAdmin->get_holding_no_wise_tax_person($holding_no);
		if($response['status'] !== 'success'){
			echo json_encode($response);exit;
		}else{
			
			$all_info = [
				'info'	  => $response,
				'history' => $this->manageAdmin->get_dag_no_wise_bosotbita_history($response['data']->dag_no)
			];
			$feedback =[
				'status'	=> $response['status'],
				'message'   => $response['message'],
				'data'		=> $this->load->view('admin/taxPage/history/bosodBitaHistoryInformation.php', $all_info, true)
			];
			echo json_encode($feedback);exit;
		}
	}
	public function payment_holding_tax(){
		$receive = (array) $this->input->get();
		if($receive['id'] == '' || $this->manageAdmin->exists_holding_person($receive['id'])){
			redirect('Admin/taxCollection', 'location');
		}else{
			$info = $this->manageAdmin->get_holding_tax_member_info($receive['id'])['data'];
			$data = [
				'tax_member_info'     => $info,
				'fiscal_year'	      => $this->setup->get_person_wise_fiscal_year($info->dag_no),
				'rate_sheet'          => $this->setup->get_current_active_rate_sheet()
			];
			$this->load->view('admin/topBar');
			$this->load->view('admin/leftMenu');
			$this->load->view('admin/taxPage/payment_holding_tax', $data);
			$this->load->view('admin/footer');
		}
	}
	
	protected function holding_tax_payment_required_field($receive){
		
		if((int)count(array_filter(array_map('trim', $receive['fiscalYear']))) !== (int)count($receive['fiscalYear'])) {
			return ['status' => 'error', 'message' => 'Fiscal Year field is required'];
		}else if((int)count(array_filter(array_map('trim', $receive['holdingType']))) !== (int)count($receive['holdingType'])){
			return ['status' => 'error', 'message' => 'Holding Type field is required'];
		}else if((int)count(array_filter(array_map('trim', $receive['holdingAmount']))) !== (int)count($receive['holdingAmount'])){
			return ['status' => 'error', 'message' => 'Amount field is required'];
		}else if(trim($receive['paymentDate']) == ''){
			return ['status' => 'error', 'message' => 'Payment Date field is required'];
		}else if(trim($receive['bookNumber']) == ''){
			return ['status' => 'error', 'message' => 'Book Number field is required'];
		}else if(trim($receive['moneyNumber']) == ''){
			return ['status' => 'error', 'message' => 'Payment Date field is required'];
		}else if(trim($receive['discount']) == ''){
			return ['status' => 'error', 'message' => 'Discount field is required'];
		}else {
			return ['status' => 'success', 'message' => 'Everything is ok'];
		}
	}
	public function check_duplicate_fiscal_year($array){
		if(count(array_unique($array))<count($array)){
			return ['status' => 'warning', 'message' => 'Oops !!! Duplicate fiscal year found'];
		} else{
			return ['status' => 'success', 'message' => 'everything is ok'];
		}
	}
	public function payment_action_holding_tax(){
		$receive = $this->input->post();
		$check_required_field = $this->holding_tax_payment_required_field($receive);
		if($check_required_field['status'] !== 'success'){
			echo json_encode($check_required_field);exit;
		}
		$has_duplicate_year = $this->check_duplicate_fiscal_year($receive['fiscalYear']);
		if($has_duplicate_year['status'] !== 'success'){
			echo json_encode($has_duplicate_year);exit;
		}
		$has_duplicate_book_money = $this->manageAdmin->has_duplicate_book_money($receive['bookNumber'], $receive['moneyNumber']);
		if($has_duplicate_book_money['status'] !== 'success'){
			echo json_encode($has_duplicate_book_money);exit;
		}
		
		$this->load->view('admin/taxPage/jqueryPost/bosotbita_payment_action', ['request' => $receive]);
	}
	public function testt(){
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('test');
		$this->load->view('admin/footer');
	}
	
	/*=================== peshazibi kor start ====================*/
	
	// for peshazibikor tax collection action ........
	public function peshaZibikorTaxCollection()
	{
		$this->load->view('admin/taxPage/jqueryPost/peshaZibikorTaxCollection');
	}
	// for history peshazibi kor ............
	public function historyPesha()
	{
		$this->load->view('admin/taxPage/history/historyPesha');
	}
	// for tradelicense peshazibikor information search 
	public function searchTrade(){
		  $tradLicenceId=$_GET['tradLicenceId'];
		
		 $qu=$this->db->query("select * from  tradelicense where  sno='$tradLicenceId'");
		 $num_rows=$qu->num_rows();
		 if($num_rows<=0){
			 echo "1";exit;
		}
		else{
			 $row=$qu->row();
				$bcomname=$row->bcomname;
				$ownertype=$row->ownertype;
				$village=explode(',',$row->bb_gram);
				$gram="";
				foreach ($village as $var):
				$gram.=$var.' ';
				endforeach;
				$wordno=$row->bb_wordno;
				$mobileno=$row->mobile;	
				
				if($ownertype=='1'){
					$oType='ব্যাক্তি মালিকানা';
				}else if($ownertype=='2'){
					$oType='যেীথমালিকানা';
				}else if($ownertype=='3'){
					$oType='কোম্পানী';
				}
		 
			echo $bcomname.",".$oType.",".$gram.",".$wordno.",".$mobileno;
		}
	}
	/*================= peshazibi kor end================= */
	
	/*================= bosodbita kor start ================*/
	
	// for bosodbita tax collection action ...........
	public function boshodbitakorTaxCollection()
	{
      $this->load->view('admin/taxPage/jqueryPost/boshodbitakorTaxCollection');
	}
	// for history tradelicense bosodbita kor..........
	public function historyTradepesha()
	{
		$this->load->view('admin/taxPage/history/historyTradepesha');
	}
	// for tradelicense bosodbita information search ...............
	public function searchTradebosodbita(){
		$tradLicenceId=$_GET['tradLicenceIdNew'];
		
		$qu=$this->db->query("select bcomname, ownertype, btype, bb_gram, bb_wordno,mobile from  tradelicense where  sno='$tradLicenceId'");
		$num_rows=$qu->num_rows();
		if($num_rows<=0){
			 echo "1";exit;
		}
		else{
			$row=$qu->row();
			$bcomname=$row->bcomname;
			$ownertype=$row->ownertype;
			$village=explode(',',$row->bb_gram);
			$gram="";
			foreach ($village as $var):
				$gram.=$var.' ';
			endforeach;
			$wordno=$row->bb_wordno;
			$mobileno=$row->mobile;
				
			if($ownertype=='1'){
				$oType='ব্যাক্তি মালিকানা';
			}else if($ownertype=='2'){
				$oType='যেীথমালিকানা';
			}else if($ownertype=='3'){
				$oType='কোম্পানী';
			}
			echo $bcomname.",".$oType.",".$gram.",".$wordno.",".$mobileno;
		}
	}



	// Tax Generate
	public function searchHoldingTaxGenerate()
	{
		$receive     = (array)$this->input->post();
		$fiscal_year = (string) trim($receive['fiscal_year']);
		$rateSheet   = (string) trim($receive['rateSheet']);

		$response = $this->manageAdmin->get_rateSheet_wise_tax_person($rateSheet);

		// echo "<pre>"; 
		// print_r($response);exit;

		if($response['status'] !== 'success'){
			echo json_encode($response);exit;
		}else{
			
			$all_info = [
				'info'	      => $response,
				'fiscal_year' => $fiscal_year,
				'rateSheet'   => $rateSheet,
			];

			$feedback =[
				'status'	=> $response['status'],
				'message'   => $response['message'],
				'data'		=> $this->load->view('admin/taxPage/history/bosodBitaInformationList.php', $all_info, true)
			];
			echo json_encode($feedback);exit;
		}
		 
		}

		public function holdingTaxGenerateAction(){
			$fiscal_year     = $this->input->post('fiscal_year');
			$rate_sheet_id   = $this->input->post('rateSheet');
			$id              = $this->input->post('id');
			$user_id         = $this->input->post('user_id');
			$mobile          = $this->input->post('user_mobile');
			$holding_no      = $this->input->post('holding_no');
			$amount          = $this->input->post('amount');
			$due_amount      = $this->input->post('due_amount');
			$discount_amount = $this->input->post('discount_amount');
			$total_amount    = $this->input->post('total_amount');
			

			$has_duplicate_year_rate_sheet = $this->setup->check_duplicate_fiscal_year_rate_sheet($fiscal_year, $rate_sheet_id);

			
			if($has_duplicate_year_rate_sheet == true){
				echo "Duplicate fiscal Year & Rate sheet";exit;
			}
						
			//echo $this->db->last_query($has_duplicate_year_rate_sheet);exit;

			$this->db->trans_start();
			$data = [];
			$i = 1;
			foreach($id as $key => $item){
				$holding_count = $this->db->query("SELECT count(id) as totalInv FROM payment_log_bosotbita")->result();
			    $invoiceNo     =  $holding_count[0]->totalInv+1;

				$data = [
					'holding_info_id'=> $item,
					'invoice'        => $invoiceNo,
					'fisyal_year_id' => $fiscal_year,
					'rate_sheet_id'  => $rate_sheet_id,
					'holding_no'     => $holding_no[$key],
					'amount'         => $amount[$key],
					'due_amount'     => $due_amount[$key],
					'discount'       => $discount_amount[$key],
					'total'          => $total_amount[$key],
					'is_paid'        => 0,
					'status'         => 0,
					'is_active'      =>1,
					'created_by'     => $this->session->userdata('id'),
					'created_date'   => date("Y-m-d H:i:s"),
					'created_ip'     => $this->input->ip_address(),
				];
				
				$this->db->insert('payment_log_bosotbita', $data);
				$insert_id = $this->db->insert_id();
				$invoice_data = [
					'user_id'      => $user_id[$key],
					'trackid'      => NULL,
					'record_id'    => $insert_id,
					'fee'          => $amount[$key],
					'total_fee'    => $total_amount[$key],
					'account_no'   => NULL,
					'invoice_date' => date("Y-m-d"),
					'type'         => 25,
					'is_paid'      => 0,
					'is_active'    => 1,
					'created_by'   => $this->session->userdata('id'),
					'created_ip'   => $this->input->ip_address(),
					'created_at'   => date("Y-m-d H:i:s"),
				];

				$this->db->insert('end_user_invoice', $invoice_data);

				$message = "আপনার হোল্ডিং ট্যাক্স ,".$total_amount[$key]." টাকা,অনুগ্রপূর্বক ট্যাক্স পরিশোধ করুন ।";
				$sms_send = $this->EndUser->smsSendAction($message, $mobile[$key]);
				$sms_data = [
					'trackid'=> $insert_id,
					'mobile' => $mobile[$key],
					'msg'    => $message,
				];
				$inbox = $this->EndUser->smsInboxAction($sms_data);

			}
			$this->db->trans_complete();
			
			if($this->db->trans_status() === TRUE){
				redirect("Admin/holdingTaxGenerateInvoiceList");
			}
			else {
				redirect("Admin/holdingTaxGenerateInvoiceList");
			}

			// echo "<pre>";
			// print_r($data);
			// exit; 
		}


	// bill collection
	public function searchHoldingTaxBillColleaction()
	{
		$receive     = (array)$this->input->post();
		$invoice     =  trim($receive['invoice']);
		$holding_no  =  trim($receive['holding_no']);

		$response = $this->setup->holding_tax_bill_collection_info_row($receive);

		// echo "<pre>"; 
		// //echo $this->db->last_query();
		// print_r($response);exit;

		if($response['status'] !== 'success'){
			echo json_encode($response);exit;
		}else{
			
			$all_info = [
				'info'	     => $response,
				'invoice'    => $invoice,
				'holding_no' => $holding_no,
			];

			$feedback =[
				'status'	=> $response['status'],
				'message'   => $response['message'],
				'data'		=> $this->load->view('admin/holdingTax/bosodBitaInformationRow.php', $all_info, true)
			];
			echo json_encode($feedback);exit;
		}
		 
		}	

	// holding tax sms send
	public function searchHoldingTaxSmsSend()
	{
		$receive     = (array)$this->input->post();
		$fiscal_year = (string) trim($receive['fiscal_year']);
		$rateSheet   = (string) trim($receive['rateSheet']);

		$response = $this->setup->get_holding_tax_person_count($receive);

		if($response['status'] !== 'success'){
			echo json_encode($response);exit;
		}else{
			
			$all_info = [
				'info'	      => $response,
				'fiscal_year' => $fiscal_year,
				'rateSheet'   => $rateSheet,
			];

			$feedback =[
				'status'	=> $response['status'],
				'message'   => $response['message'],
				'data'		=> $this->load->view('admin/holdingTax/bosodBitaInformationSms.php', $all_info, true)
			];
			echo json_encode($feedback);exit;
		}
		}
	public function holdingTaxSmsSendAction(){
		$receive     = (array)$this->input->post();
		$fiscal_year = (int) trim($receive['fiscal_year']);
		$rateSheet   = (int) trim($receive['rateSheet']);
		$messageTxt  = trim($receive['message']);

		$response    = $this->setup->get_holding_tax_person_data($receive);
		$this->db->trans_begin();
		$sms_data =[];
		foreach($response['data'] as $item){
			$message = "নাম ".$item->name." টাকা ".$item->totalAmount." ।  ".$messageTxt;
				$sms_data = [
					'trackid'=> $item->taxId,
					'mobile' => $item->mobile_number,
					'msg'    => $message,
				];
				$sms_send = $this->EndUser->smsSendAction($message, $item->mobile_number);
				$inbox    = $this->EndUser->smsInboxAction($sms_data);

		}

		$this->db->trans_commit();

		if($inbox == FALSE){
			$error_message = $this->db->error()['message'];
			$this->db->trans_rollback();
			//return ['status' => 'error', 'message' => $error_message];
			echo "<script>window.history.back();alert('SMS Send Failed');</script>";
		}
		if ($this->db->trans_status() === FALSE){
			$this->db->trans_rollback();
			// return ['status' => 'error', 'message' => 'Sms Send  failed'];
			echo "<script>window.history.back();alert('SMS Send Failed');</script>";
		}else{
			// return ['status' => 'success', 'message' => 'SMS Send Successfully'];
			echo "<script>window.history.back();alert('SMS Send Successfully');</script>";
		}

	}	

	/*============ bosodbita kor end=======================*/
	
	/*============ daily submit section start =============*/
	public function dailySubmit()
	{
		$data=array(
			'trans'		=> $this->transition->get_transaction(),
			'voucher'	=> $this->transition->get_credit_voucher()
		);
		$this->load->view('admin/topBar',$data);
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/dailySubmit/dailySubmit');
		$this->load->view('admin/footer');
	}
	
	// for jquery post method......
	public function dailySubmit_action()
	{
		$this->load->view('admin/dailySubmit/jqueryPost/dailySubmit_action');
	}
	
	// for main cagegory search......
	public function daily_ctg()
	{
		$this->load->view('admin/dailySubmit/search/daily_ctg');
	}
	// for sub cagegory search .........
	public function sCategory()
	{
		$this->load->view('admin/dailySubmit/search/subctgs');
	}
	// for account type.......
	public function daily_sContent()
	{
		$this->load->view('admin/dailySubmit/search/daily_account');
	}
	public function daily_pType()
	{
		$this->load->view('admin/dailySubmit/search/daily_slip');
	}
	/*============ daily submit section end  =============*/
	
	/*============ daynamic slide section start =========*/
	public function dynamicSlide()
	{
		$data=array();
		$data['all_slide']=$this->db->select("*")->from("slide_setting")->order_by("id","desc")->get()->result();
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/slide/dynamicSlide',$data);
		$this->load->view('admin/footer');
	}
	
	public function slideEdit()
	{
		$data=array();
		extract($_POST);
		$data['slide_info']=$this->db->select("*")->from("slide_setting")->where("id",$submit)->get()->row();
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/slide/slideEdit',$data);
		$this->load->view('admin/footer');
	}
	
	public function slide_edit_submit()
	{	
		extract($_POST);
		if(empty($_FILES['image']['name']))
		{
			$data = array(
			"title"	=> $title,
			"description" => $description,
			"sequence" => $sequence,
			"status" => $status
			);
		}
		else 
		{
			$des="all/slide/".$hid_img;
			unlink($des);
			$name = $_FILES['image']['name'];
			$tmp_name = $_FILES['image']['tmp_name'];
			$path = "all/slide/";
			$m = move_uploaded_file($tmp_name, $path.$name);
			
			$data = array(
			"image_name" => $name,
			"title"	=> $title,
			"description" => $description,
			"sequence" => $sequence,
			"status" => $status
			);
		}
		
		$this->db->where("id",$uid);
		$up=$this->db->update("slide_setting",$data);
		
		if($up)
		{
			echo 1;
		}
		else 
		{
			echo 0;
		}
	}
	
	public function slide_upload()
	{
		if( isset($_POST['upload']) ):
			extract($_POST);

			$name = $_FILES['image']['name'];
			$tmp_name = $_FILES['image']['tmp_name'];

			// data array
    	$data = array(
    			"id" => '',
    			"image_name" => $name,
    			"title"	=> $title,
    			"description" => $description,
    			"sequence" => $sequence
    		);

    	$this->db->insert("slide_setting",$data);

		$path = "all/slide/";
    	$m = move_uploaded_file($tmp_name, $path.$name);

			if( $this->db->affected_rows() ):
				echo "<script>window.history.back();alert('Upload Successfully');</script>";
			else:
				redirect("Admin/dynamicSlide");
			endif;

		endif;
	}
	/*============ daynamic slide section start =========*/
	
	/*============= logo section start ==================*/
	public function logoManage()
	{
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/logoPage');
		$this->load->view('admin/footer');
	}
	public function logo_submit_action()
	{
		if(isset($_POST['logo_setup'])){
			
			$pic = 'logo.png';
			$tmp_name = $_FILES['picture']['tmp_name'];

			if(($_FILES['picture']['size']/1024)<=500){
				
				move_uploaded_file($tmp_name,"logo_images/".$pic);
				//copy("logo_images/logo.png","all/logo/logo.png");
				
				$err = array( "error" => 2 );
				$this->session->set_userdata($err);
			}
			else{
				$err = array( "error" => 1 );
				$this->session->set_userdata($err);
			}
		
			redirect("admin/logoManage","location");
		}
	}
	/*============== logo section end ===================*/
	
	/*============== websit tool section start ==========*/
		public function toolSetting()
	{
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/toolSetting');
		$this->load->view('admin/footer');
	}
	public function websiteTools_submit()
	{
		extract($_POST);
		//print_r($input_checked);
		//echo $hid_text;
		$explode=explode(",",$hid_text);
		foreach($explode as $value)
		{
			if(!(in_array($value,$input_checked)))
			{
				$up=$this->db->query("update tbl_webtools set status='0' where id='$value'");
			}
			else
			{
				$up=$this->db->query("update tbl_webtools set status='1' where id='$value'");
			}	
		}
		echo 1;
		
	}
	/*============== websit tool section end ==========*/
	/*=============== news and google map seeting start =====*/
	public function newsManage()
	{
		$data=array();
		$data['all_khobor']=$this->db->select("*")->from("tbl_news")->get()->result();
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/news/newsManage',$data);
		$this->load->view('admin/footer');
	}
	
	public function khobor_setting_submit()
	{
		extract($_POST);
		$data = array(
			"id" => '',
			"title"	=> $title,
			"descrip" => $msg,
			"entry_user" =>$this->session->userdata('username')
		);

    	$insert=$this->db->insert("tbl_news",$data);
		if($insert)
		{
			redirect("Admin/newsManage","location");
		}
		else
		{
			redirect("Admin/newsManage","location");
		}	
	}
	
	//news_edit
	public function newsEdit()
	{
		$data=array();
		extract($_POST);
		$data['khobor']=$this->db->select("*")->from("tbl_news")->where("id",$uid)->get()->row();
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/news/newsEdit',$data);
		$this->load->view('admin/footer');
	}
	
	public function khobor_setting_update()
	{
		extract($_POST);
		$data = array(
			"title"	=> $title,
			"descrip" => $msg,
			"status"=> $status
		);
		$this->db->where("id",$id);
		$up=$this->db->update("tbl_news",$data);
		if($up)
		{
			redirect("Admin/newsManage?id=1","location");
		}
		else
		{
			echo "<script>window.history.back();alert('Update Fail');</script>";
		}	
	}
	
	public function upMap()
	{
		$data=array();
		$data['map']=$this->db->select("*")->from("up_map")->limit("1")->get()->row();
		$data['row']=$this->db->affected_rows();
		$this->load->view('admin/topBar');
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/map/upMap',$data);
		$this->load->view('admin/footer');
	}
	
	public function up_map_submit()
	{
		$info=$this->db->select("*")->from("up_map")->limit("1")->get()->row();
		$row=$this->db->affected_rows();
		extract($_POST);
		$data=array('map_link'=>$link);
		if($row<1)
		{
			$insert=$this->db->insert("up_map",$data);
			if($insert)
			{
				echo 1;
			}
			else
			{
				echo 0;
			}
		}
		else
		{
			
			$up=$this->db->update("up_map",$data);
			if($up)
			{
				echo 1;
			}
			else
			{
				echo 0;
			}
		}
	}
	
	/*=============== news and google map seeting end =====*/
	/*============ daily expense section start ========== update by shohag 19.03.2016===*/

	public function dailyExp()
	{
		$data=array(
			'trans'		=> $this->transition->get_transaction(),
			'voucher'	=> $this->transition->get_debit_voucher()
		);
		$this->load->view('admin/topBar',$data);
		$this->load->view('admin/leftMenu');
		$this->load->view('admin/dailyExpense/dailyExp');
		$this->load->view('admin/footer');
	}
	/*============ daily expense section end =============*/

	public function daily_exp_ctg()
	{
		$this->load->view('admin/dailySubmit/search/daily_exp_ctg');
	}
	
	public function expense_sub_ctg()
	{
		$this->load->view('admin/dailySubmit/search/expense_sub_ctg');

	}


	public function dailyExpense_action()
	{
		$this->load->view('admin/dailySubmit/jqueryPost/dailyExpense_action');
	}
	
	
	//update by shohag 08.05.2016
	// for balance check start ................
	public function checkBalance(){
		extract($_GET);
		// echo $acc_no;
		// echo  $amount;
	 
		$query=$this->db->query("SELECT * from acinfo where acname='$acc_no' LIMIT 1");
		$rows=$query->row();
		$bal=$rows->balance;
		if($acc_no=='-1'){
			echo "empyAcc";
		}else{
			if($amount=='' && $acc_no!='-1'){
				echo "accEmpty";
			}else{
				if($amount>$bal && $acc_no!='-1'){
					echo $bal;
				}
				if($amount<$bal  && $acc_no!='-1'){
					echo "ValidBalance";
				}
			}
		}
	}
	// for balance check end.............
}
