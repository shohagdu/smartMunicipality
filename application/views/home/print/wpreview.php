<script>
	window.onbeforeunload = function(){ return 'আপনি যদি পেজটি  Reload দেন তাহলে আপনাকে নতুন করে ডাটা এন্ট্রি দিতে হবে.';};
</script>
<?php
if(isset($_GET['id']))
{
$scode=$this->input->get('id',true);
}
else {$scode=$this->session->userdata('wCode');}
$query=$this->db->select('*')->from('tbl_warishesinfo')->where('trackid',$scode)->get();
$row=$query->row();
$scode=chop($scode,'/');
$wQy=$this->db->select('*')->from('warishinfo')->where('trackid',$scode)->get();
$total=count($wQy->result());
$this->session->unset_userdata('wCode');
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
<base href='<?php echo base_url();?>'/>
	<meta charset="UTF-8">
	<title> Oarish Application </title>
	<link rel="stylesheet" type="text/css" href="certificate_css/oarish_application.css" media="all" />
</head>
<body>
<div style="left:300px;margin-top:10px;position:middle;background:#666;" align="center" id="bar">
<h2 style=" text-align: center; font-size:19px">  আপনার আবেদনটি যাচাই বাছাইয়ের জন্য অপেক্ষমান আছে... ।  <a href="index.php/home/profile"> প্রোফাইলে যান  </a> </h2>
	<?php //if($this->session->userdata('sCode')){?>
		<a href="" style="margin-right:50px;" title="Back Home Page">
			<img src="<?php echo base_url();?>img/home.png"> প্রিন্ট  করুন
		</a>
	<?php //}?>
	<a  target='_blank' href="javaScript:window.print();<?php if(isset($_GET['scode'])){?>home/tpreview?pcode=<?php echo $scode;}?>" title="Print">
		<img src="<?php echo base_url();?>library/print.png"/>
	</a>
</div>
<br />
	<div class="full"> 
		<div id="wrapper" >
		<!-----------top area start--------------->
			<div class="top_area">
				<div class="top_section">
					<div id="top_left">
						<img src="logo_images/logo.png" alt="logo" height="130px" width="130px" />
						
					</div>
					<div id="top_mid">
						<h2><?php echo $all_data->full_name;?></h2>
						<p><?php echo $all_data->gram;?>  <br />
						
						<?php 
							$ch=$this->db->count_all('setup_tbl');
							if($ch!=0):
						?>
							<?php echo $all_data->thana;?>,&nbsp;<?php echo $all_data->district;?>-<?php echo $all_data->postal_code;?> <br />
							ফোন : <?php echo $all_data->phone;?>,&nbsp;<?php echo $all_data->mobile;?>
						</p>
						<?php 
							endif;
						?>
					</div>
					<div id="top_right">
						
					</div>
				</div>
			</div>
						<!-----------top area end--------------->
						
						
						<!-----------header area start--------------->
			<div class="header_area">
				<div id="header_section"> 
					<h2> ওয়ারিশ সনদের আবেদন </h2>
					<form action="" method="post">
						<table>
							<tr>
								<td>ট্রেকিং আইডি নং -</td>
								<td><input type="text" readonly name="tra_no" id="" value="<?php echo $this->web->conArray($row->trackid);?>" /> </td>
							</tr>
						</table>
					</form>
				</div>
			</div>
				<!-----------header area end--------------->
			
				<!-----------application area start--------------->
			
			<div class="app_area">
				<div id="app_section">
					<table>
						<tr>
							<td style="width:180px;">আবেদনকারীর নাম </td>
							<td><p>: <?php echo $row->bangla_applicant_name;?></p></td>
						</tr>
						<tr> 
							<td>মৃত ব্যক্তির নাম</td>
							<td><p>: <?php echo $row->bname;?></p></td>
						</tr>
						<tr>
							<td>পিতার নাম</td>
							<td><p>: <?php echo $row->bfname;?> </p></td>
						</tr>
						<tr>
							<td>মাতার নাম</td>
							<td><p>: <?php echo $row->bmane;?></p></td>
						</tr>
						<tr style="height:80px;">
							<td valign="top">স্থাযী ঠিকানা</td>
							<td>
								<p style="font-size:14px;">
									গ্রাম/মহল্লা : &nbsp;<?php echo $row->pb_gram;?>,&nbsp;&nbsp;&nbsp;রোড/ব্লক/সেক্টর  : <?php echo $row->pb_rbs;?> <br />
									পোষ্ট অফিস : &nbsp;<?php echo $row->pb_postof;?>,&nbsp;&nbsp;&nbsp;ওয়ার্ড নং : <?php echo $row->pb_wordno;?><br />
									 থানা : &nbsp;<?php echo $row->pb_thana?> <br /> 
									 জেলা :  &nbsp;<?php echo $row->pb_dis;?> 
								</p>
							</td>
						</tr>
						<tr style="height:80px;">
							<td  valign="top">বর্তমান ঠিকানা</td>
							<td>
								<p style="font-size:14px;">
									গ্রাম/মহল্লা : &nbsp;<?php echo $row->perb_gram;?>,&nbsp;&nbsp;&nbsp;রোড/ব্লক/সেক্টর  : <?php echo $row->perb_rbs;?> <br />
									পোষ্ট অফিস : &nbsp;<?php echo $row->perb_postof;?>,&nbsp;&nbsp;&nbsp;ওয়ার্ড নং : <?php echo $row->perb_wordno;?><br />
									 থানা : &nbsp;<?php echo $row->perb_thana?> <br /> 
									 জেলা :  &nbsp;<?php echo $row->perb_dis;?> 
								</p>
							</td>
						</tr>
						<tr>
							<td>জন্ম তারিখ</td>
							<td><p>: <?php $Cdate=date('d/m/Y',strtotime($row->dofb));echo $this->web->banDate($Cdate);?></p></td>
						</tr>
					</table>
				</div>
			</div>
				<!-----------application area end--------------->
				
				<!-----------table area start--------------->
			<div class="table_area">
				<div id="table_section">
					<h2> ওয়ারিশ গনের তালিকা </h2>
					<table class="table1">
						<tr>
							<th style="width:5%;">নং</th>
							<th style="width:60%;">নাম</th>
							<th style="width:25%;">সম্পর্ক</th>
							<th style="width:10%;">বয়স</th>
							
						</tr>
						<?php
							if($total<=10){ $custom_font = "height: 25px;"; }
							else if(($total>10) && ($total<16)){ $custom_font = "height: 20px;";}
							else{ $custom_font = "height: 16px;";}
							
							for($i=1;$i<=$total;$i++):
						?>

						<tr style="<?php echo $custom_font;?>">
							<td  style="text-align:center;font-size:11px;"><?php echo $this->web->banDate($i)?></td>
							<td style="text-align:left;text-indent:15px;font-size:11px;" id='wn<?php echo $i?>'></td>
							<td style="text-align:left;text-indent:15px;font-size:11px;" id='wrel<?php echo $i?>'></td>
							<td style="text-align:left;text-indent:15px;font-size:11px;" id='wage<?php echo $i?>'></td>
						</tr>
						
						<?php endfor;?>
						
						<tr>
						 <td></td>
						 <td colspan='3' style="text-align:right;font-size: 12px; padding-right:100px;">উত্তরাধিকারীর সংখা <span id='total'>&nbsp;&nbsp;</span>&nbsp;&nbsp;জন</td>
						</tr>
					</table>
					<p style="padding-top: 10px;"><?php if(!empty($row->note)){echo $row->note;}?></p>
				</div>
			</div>
				<!-----------table area end--------------->
				
				<!-----------instraction area start--------------->
			<div class="ins_area">
				<div id="ins_section">
					<div class="hr_style"></div>
					<h2> নির্দেশনাবলী / Instruction  </h2>
					
					
					<ol style="padding-left:50px;list-style:none;">
						<li> ১) &nbsp; এলাকার গন্যমান্য ২ জন ব্যাক্তি এবং ওয়ার্ড মেম্বার কর্তৃক  সত্যায়িত করে পরিষদে জমা ।</li>
						<li> ২) &nbsp;১ কপি পাসপোর্ট সাইজ ছবি,(সত্যায়িত)</li>
						<li>৩)&nbsp; আবেদন পত্রের অবস্থান জানার জন্য  ট্রেকিং নম্বরটি <font style="color:blue;">http://<?php echo $this->web->getUrl();?>/Wtrack</font>  এ প্রবেশ করান  এবং অবস্থাটি জানুন ।</li>
					</ol>
				</div>
			</div>
				<!-----------instraction area end--------------->
				
				<!-----------verification area start--------------->
			<div class="veri_area">
				<div id="veri_section">
					<div class="hr_style"></div>
					<h2>সত্যায়ন / Verification</h2>
					<table class="table2"> 
						<tr>
							<td colspan="3"></td>
							<td rowspan="4" style="height:140px;width:160px; border-top:1px solid black; border-left:1px solid black;">
								<br/>
								<img src="https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=http%3A%2F%2Fhttp://<?php echo $all_data->web_link;?>/index.php/onlinetrack/warish_app_jachai?id=502818%2F&choe=UTF-8" style="height:120px;width:130px;">
							</td>
						</tr>
						<tr>
							<td><input type="text" name="first_person" disabled></td>
							<td><input type="text" name="second_person" disabled></td>
							<td><input type="text" name="third_person" disabled></td>
						</tr>
						<tr>
							<td>স্বাক্ষর</td>
							<td>স্বাক্ষর</td>
							<td>স্বাক্ষর</td>
						</tr>
						<tr>
							<td style="border-bottom:1px solid black;">ইউপি চেয়ারম্যান</td>
							<td style="border-bottom:1px solid black;">ওয়ার্ড মেম্বার</td>
							<td style="border-bottom:1px solid black;">গন্যমান্য ব্যাক্তি</td>
						</tr>
					</table>
					
				</div>
			</div>
	<script>
	<?php $nr=1; foreach ($wQy->result() as $wrow):?>
	document.getElementById('wn<?php echo $nr?>').innerHTML='<?php echo $wrow->w_name?>';
	document.getElementById('wrel<?php echo $nr?>').innerHTML='<?php echo $wrow->w_relation?>';
	document.getElementById('wage<?php echo $nr?>').innerHTML='<?php echo $this->web->conArray($wrow->w_age)?>';
	<?php $nr++;endforeach;?>
document.getElementById('total').innerHTML='<?php echo $this->web->banDate($total);?>';
	</script>
			<!-----------verification area end--------------->
			
			<!------------------ footer area start-------------------->
			<div class="footer_area">
				<div id="footer_section">
					<div id="footer_section_left">
						<p> <?php echo $all_data->web_link;?><br />
							E-mail&nbsp;:&nbsp;<?php echo $all_data->email;?>
						</p>
					</div>
					<div id="footer_section_right">
						<p> Develop By: Step Technology <br />
							www.steptechbd.com
						</p>
					</div>
				</div>
			</div>
			<!------------------ footer area end-------------------->
		</div>
	</div>
	
</body>
</html>