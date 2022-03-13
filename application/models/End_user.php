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
		$query = $this->db->query("SELECT id,name,nid,birthcertificate_no,mobile FROM end_users WHERE mobile='$mobile_nid_birth_id' || nid='$mobile_nid_birth_id' || birthcertificate_no='$mobile_nid_birth_id' AND password='$password'");
	    
 
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
			$update = $this->db->where('id',$row->id)->update('end_users',$end_user_data);

			if($update){
				redirect('home/profile','location');
			}
		}
	}
	
} 