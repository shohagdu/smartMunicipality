<?php
class End_user extends CI_Model{
	public function __construct(){
		ob_start();
		parent::__construct();
	}
	
	public function enduserSignup_action($data1,$tbl1)
	{
		$this->db->insert($tbl1,$data1);
		if($this->db->affected_rows()>0){
			return true;
		}
		else{
			return false;
		}
	}
	public function login_action($mobile_nid_birth_id, $password){

		if(trim($mobile_nid_birth_id)=='' || trim($password)==''){
			redirect('home/login','location');
		}
		$password = md5($password);
		$query = $this->db->query("SELECT id,name,nid,birthcertificate_no,mobile FROM end_users WHERE password='$password' AND mobile='$mobile_nid_birth_id' || nid='$mobile_nid_birth_id' || birthcertificate_no='$mobile_nid_birth_id' ");
	    
		$login = $query->num_rows();

		if($login!='1'){
			redirect('home/login','location');
		}

		if($login=='1'){
			$row=$query->row();
			
			$device_browser = NULL;
			$ip             = $this->input->ip_address();
			//$mac          = $this->pc_mac_address();
			$login_time     = date("Y-m-d H:i:s");
			$login_history  = [
				'user_id'		=>	$row->id,
				'device_browser'=>	$device_browser,
				'pc_ip'			=>	$ip,
				'mac'			=>	'mac',
				'login_time'	=>	$login_time
			];
			$this->db->insert("dcb_login_history",$login_history);
			
			$data = [
				'id'                 => $row->id,
				'name'               => $row->name,
				'mobile'             => $row->mobile,
				'nid'                => $row->nid,
				'birthcertificate_no'=> $row->birthcertificate_no,
			   ];

			$this->session->set_userdata($data);

			$status = array("logged_status" => TRUE);
			$this->session->set_userdata($status);

			$end_user_data = [
				'last_login_time'=> $login_time,
				'is_active'      =>'1'
			];

			$this->db->where('id',$row->id)->update('end_users',$end_user_data);

			if($this->db->affected_rows()>0){
				return true;
			}
			else{
				return false;
			}
		}
	}
	
	public function enduserChangePasswordAction($data1,$sesID)
	{
	    $this->db->where('id',$sesID)->update('end_users',$data1);
		if($this->db->affected_rows()>0){
			return true;
		}
		else{
			return false;
		}
	}
	
	public function getUserApplicationTrade($user_id){
		$query = $this->db->where('user_id',$user_id)
						 ->where('type', 1)				
						 ->get("tradelicense");
		if(!empty($query)):
			return  $query->row();
		else:
			return false;
		endif;	
	}
	public function getUserApplicationNagorik($user_id){
		$query = $this->db->where('user_id',$user_id)
						 ->where('type', 1)				
						 ->get("personalinfo");
		if(!empty($query)):
			return  $query->row();
		else:
			return false;
		endif;	
	}
	public function getUserApplicationOthersNagorik($user_id){
		$query = $this->db->where('user_id',$user_id)
						 ->where('type', 1)				
						 ->get("otherserviceinfo");
		if(!empty($query)):
			return  $query->result();
		else:
			return false;
		endif;	
	}
	public function getUserApplicationWarish($user_id){
		$query = $this->db->where('user_id',$user_id)
						 ->where('type', 1)				
						 ->get("tbl_warishesinfo");
		if(!empty($query)):
			return  $query->row();
		else:
			return false;
		endif;	
	}

	public function enduserInvoiceAction($data1,$tbl1)
	{
		$this->db->insert($tbl1,$data1);
		if($this->db->affected_rows()>0){
			return true;
		}
		else{
			return false;
		}
	}

	public function enduserSonodStatusAction($sonod_status_data,$id, $type)
	{
		if($type == 1){
	    	$this->db->where('id',$id)->update('tradelicense',$sonod_status_data);
		}else if($type == 2){
			$this->db->where('id',$id)->update('personalinfo',$sonod_status_data);
		}else if($type == 3){
			$this->db->where('id',$id)->update('otherserviceinfo',$sonod_status_data);
		}else if($type == 20){
			$this->db->where('id',$id)->update('tbl_warishesinfo',$sonod_status_data);
		}else{
			return false;
		}

		if($this->db->affected_rows()>0){
			return true;
		}
		else{
			return false;
		}
	}

	public function getUserInvoiceInfo($user_id)
	{
		$query = $this->db->where('user_id',$user_id)
						 //->where('is_paid', 0)
						 ->order_by('id','DESC')				
						 ->get("end_user_invoice");
		if(!empty($query)):
			return  $query->result();
		else:
			return false;
		endif;	
	}
	public function getUserInvoice($id)
	{
		$query = $this->db->where('sha1(id)',$id)
						 ->where('is_paid', 0)
						 ->order_by('id','DESC')				
						 ->get("end_user_invoice");
		if(!empty($query)):
			return  $query->row();
		else:
			return false;
		endif;	
	}
	public function enduserPaymentAction($payment_data,$id)
	{
		$this->db->where('id',$id)->update('end_user_invoice',$payment_data);
		if($this->db->affected_rows()>0){
			return true;
		}else{
			return false;
		}
	}
	public function getUserInvoiceGenerate($id)
	{
		$query = $this->db->where('sha1(trackid)',$id)
						 ->where('is_paid', 1)
						 ->where('type', 1)
						 ->order_by('id','DESC')				
						 ->get("end_user_invoice");
		if(!empty($query)):
			return  $query->row();
		else:
			return false;
		endif;	
	}
	public function getUserInvoiceGenerateWarish($id)
	{
		$query = $this->db->where('sha1(trackid)',$id)
						 ->where('is_paid', 1)
						 ->where('type', 20)
						 ->order_by('id','DESC')				
						 ->get("end_user_invoice");
		if(!empty($query)):
			return  $query->row();
		else:
			return false;
		endif;	
	}
	public function enduserNagorikStatusAction($nagorik_data,$id)
	{
	    $this->db->where('id',$id)->update('personalinfo',$nagorik_data);
		if($this->db->affected_rows()>0){
			return true;
		}else{
			return false;
		}
	}
	public function enduserOthersNagorikStatusAction($nagorik_data,$id)
	{
	    $this->db->where('id',$id)->update('otherserviceinfo',$nagorik_data);
		if($this->db->affected_rows()>0){
			return true;
		}else{
			return false;
		}
	}
	public function getUserInvoiceGenerateNagorik($id)
	{
		$query = $this->db->where('sha1(record_id)',$id)
						 ->where('is_paid', 1)
						 ->where('type', 2)
						 ->order_by('id','DESC')				
						 ->get("end_user_invoice");
		if(!empty($query)):
			return  $query->row();
		else:
			return false;
		endif;	
	}
	public function getUserInvoiceGenerateOthersNagorik($id)
	{
		$query = $this->db->where('sha1(trackid)',$id)
						 ->where('is_paid', 1)
						 //->where('type', 2)
						 ->order_by('id','DESC')				
						 ->get("end_user_invoice");
		if(!empty($query)):
			return  $query->row();
		else:
			return false;
		endif;	
	}
	public function enduserWarishStatusAction($warish_data,$id)
	{
	    $this->db->where('id',$id)->update('tbl_warishesinfo',$warish_data);
		if($this->db->affected_rows()>0){
			return true;
		}else{
			return false;
		}
	}
	public function otherServiceInfo($id){
		$query = $this->db->select('id, trackid,user_id, serviceId, name, bfname, mobile, attachment, profile')->from('otherserviceinfo')->where('sha1(trackid)',$id)->get();
		return $query->row();
	}
	public function wccinfo($id)
	{
	 $query=$this->db->select('*')->from('tbl_warishesinfo')->where('sha1(trackid)',$id)->get();
	 return $query->row();
	}

	public function smsSendAction($message, $mobile_no)
	{
		$url = 'https://www.24bulksmsbd.com/api/smsSendApi';
			$data = array(
				'customer_id' => 177,
				'api_key' => 172808547692947701839707645,
				'message' =>$message,	
				'mobile_no' => $mobile_no
			);

			$curl = curl_init($url);
			curl_setopt($curl, CURLOPT_POST, true);
			curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
			curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
			curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
			curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);     
			$output = curl_exec($curl);
			curl_close($curl);
			//echo $output;

	}
} 