
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bkash extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->model('End_user','EndUser');
	}

    public function token(){
        $request_token= $this->bkash_Get_Token();
        $idtoken=$request_token['id_token'];
            
        $_SESSION['token']=$idtoken;
        $strJsonFileContents = file_get_contents("config.json");
        $array = json_decode($strJsonFileContents, true);

        $array['token']=$idtoken;

        $newJsonString = json_encode($array);
        file_put_contents('config.json',$newJsonString);

        echo $idtoken;
    }

    function bkash_Get_Token(){

        $strJsonFileContents = file_get_contents("config.json");
        $array = json_decode($strJsonFileContents, true);
        
        $post_token=array(
            'app_key'=>$array["app_key"],                                              
            'app_secret'=>$array["app_secret"]                  
        );	
        
        $url=curl_init($array["tokenURL"]);
        $proxy = $array["proxy"];
        $posttoken=json_encode($post_token);
        $header=array(
            'Content-Type:application/json',
            'password:'.$array["password"],                                                               
            'username:'.$array["username"]                                                           
        );				
        
        curl_setopt($url,CURLOPT_HTTPHEADER, $header);
        curl_setopt($url,CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($url,CURLOPT_RETURNTRANSFER, true);
        curl_setopt($url,CURLOPT_POSTFIELDS, $posttoken);
        curl_setopt($url,CURLOPT_FOLLOWLOCATION, 1);
        //curl_setopt($url, CURLOPT_PROXY, $proxy);
        $resultdata=curl_exec($url);
        curl_close($url);
        return json_decode($resultdata, true);    
    }

    public function createpayment(){

        $strJsonFileContents = file_get_contents("config.json");
        $array = json_decode($strJsonFileContents, true);
        $amount = $_GET['amount'];
        $invoice = "46f647h7"; // must be unique
        $intent = "sale";
        $proxy = $array["proxy"];
        $createpaybody=array('amount'=>$amount, 'currency'=>'BDT', 'merchantInvoiceNumber'=>$invoice,'intent'=>$intent);   
        $url = curl_init($array["createURL"]);
       
        $createpaybodyx = json_encode($createpaybody);
        $header=array(
            'Content-Type:application/json',
            'authorization:'.$array["token"],
            'x-app-key:'.$array["app_key"]
        );

        curl_setopt($url,CURLOPT_HTTPHEADER, $header);
        curl_setopt($url,CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($url,CURLOPT_RETURNTRANSFER, true);
        curl_setopt($url,CURLOPT_POSTFIELDS, $createpaybodyx);
        curl_setopt($url,CURLOPT_FOLLOWLOCATION, 1);
        //curl_setopt($url, CURLOPT_PROXY, $proxy);
        
        $resultdata = curl_exec($url);
        curl_close($url);
        echo $resultdata;

        }

    public function executepayment(){
        $strJsonFileContents = file_get_contents("config.json");
        $array = json_decode($strJsonFileContents, true);
        $paymentID = $_GET['paymentID'];
        $proxy = $array["proxy"];

        $url = curl_init($array["executeURL"].$paymentID);

        $record_id = $_GET['record_id'];
        $type      = $_GET['type'];
        $payment_data = [
            "is_paid"      => 1,
            "is_active"    => 1,
            "updated_ip"   => $this->input->ip_address(),
            "payment_date" => date('Y-m-d'),
            "updated_at"   => date('Y-m-d H:i:a'),
         ];

        $sonod_status_data = [
            'is_process' => 2,
        ];

        $this->EndUser->enduserSonodStatusAction($sonod_status_data, $record_id, $type);
        $this->EndUser->enduserPaymentAction($payment_data, $inv_id);


        $header=array(
            'Content-Type:application/json',
            'authorization:'.$array["token"],
            'x-app-key:'.$array["app_key"]              
        );	
            
        curl_setopt($url,CURLOPT_HTTPHEADER, $header);
        curl_setopt($url,CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($url,CURLOPT_RETURNTRANSFER, true);
        curl_setopt($url,CURLOPT_FOLLOWLOCATION, 1);
        //curl_setopt($url, CURLOPT_PROXY, $proxy);

        $resultdatax=curl_exec($url);
        curl_close($url);
        echo $resultdatax;  
    }    
}      