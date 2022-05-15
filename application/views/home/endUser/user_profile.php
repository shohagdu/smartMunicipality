<!-- <link href="all/custom_js/application_form.css" rel="stylesheet" type="text/css" media="all" /> -->
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 20%;
  height: 100vh;
}

/* Style the buttons inside the tab */
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 12px 8px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 15px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 80%;
  border-left: none;
  height: 100vh;
  background-color:#fff;
}
.profileImg {
    width: 50px;
    height: 50px;
    /* border-radius: 50%; */
    float: right;
    padding-top: 5px;
}
.badgePrimary{
	background-color:#2b64b9;
}
.badgeSuccess{
	background-color:#118b47;
}
.badgeWarning{
	background-color:#ed5d26;
}
.badgeDanger{
	background-color:#e91111;
}
@media only screen and (max-width: 600px) {
  .tabcontent h3 {
    font-size:13px;
  }
  .tabcontent p {
    font-size:11px;
  }
  table tr, td{
	font-size:10px;
	padding: 2px !important;
  }
  .badge{
	font-size:8px;
  }
  .profileImg {
    width: 20px;
    height: 20px;
    float: right;
    padding-top: 1px;
}
.tab button{
	font-size:10px;
}
#PaymentStatus a{
	font-size:10px;
	width: 70px;
	height:20px;
	padding:1px;
}
label{
	font-size:10px;
}
.passwordChangeArearcls{
	padding:8px;
}
.passwordChangeArearcls input{
	height:30px;
}
}
</style>
<div class="main_con"><!--Content Start-->
	<div class="row"><!--- row start--->
		<div class="col-md-9 left_con clearfix" style="z-index: 2;"><!-- left Content Start-->
			<div class="panel panel-primary"  >
				<div class="panel-heading" style="font-weight: bold; font-size: 15px;background:#642a5d;text-align:right;">  প্রোফাইল  &nbsp;&nbsp;&nbsp; <a href="index.php/home/user_profile_edit" class="btn btn-info btn-xs text-right"> <i class="fa fa-pencil"></i> আপডেট </a> </div>
				<!-- <?php if($this->session->flashdata('success')){ ?>
					<div class="alert alert-success text-center">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
						<p><?php echo $this->session->flashdata('success'); ?></p>
					</div>
				<?php } ?> -->
				<div class="tab">
					<button class="tablinks" onclick="openUserProfile(event, 'myProfile')" id="defaultOpen"> <i class="fa fa-user"></i> আমার প্রোফাইল </button>
					<button class="tablinks" onclick="openUserProfile(event, 'PaymentStatus')"><i class="fa fa-dollar"></i>  পেমেন্ট স্ট্যাটাস </button>
					<button class="tablinks" onclick="openUserProfile(event, 'passwordChange')"><i class="fa fa-eye"></i>  পাসওয়ার্ড পরিবর্তন </button>
					</div>

					<div id="myProfile" class="tabcontent">
						<div class="row">
							<div class="col-sm-10 col-xs-9">
								<h3> নাম :  <?php echo $profile_info->name; ?> </h3>
								<p> মোবাইল : <?php echo $profile_info->mobile; ?> </p>
							</div>
							<div class="col-sm-2 col-sm-3">
								<?php if(!empty($profile_info->profile)) { ?>
								<img src="<?php echo base_url().'all/assets/user_img/'.$profile_info->profile; ?>" class="profileImg" class="img-responsive">
								<?php }else{ ?>
								<img src="all/assets/image/avatar.png" class="profileImg" class="img-responsive">
								<?php }?>
							</div>
						</div>
						<div class="row"><br>
						<div class="col-sm-12 col-xs-12">
								<table class="table table-bordered table-responsive " > 
									<thead>
									<tr>
										<th>সনদের নাম </th>
										<th>ট্র্যাকিং নং </th>
										<th>সনদ নং </th>
										<th>স্ট্যাটাস</th>
									</tr>
									</thead>
									<tbody>
									<?php if(!empty($trade_data)) {?>
									<tr>
										<td> ট্রেড লাইসেন্স  </td>
										<td> 
											<?php echo  $trade_data->trackid;?>
										</td>
										<td> 
											<?php echo  $trade_data->sonodno;?>
										</td>
										<td>
											<?php if($trade_data->is_process==0){?>
												<span class="badge badgePrimary">Pending</span>
												<a href='index.php/home/application_tpreview?scode=<?php echo $trade_data->trackid?>'>View </a>
											<?php }else if($trade_data->is_process==3){?>
												<span class="badge badgeSuccess"> Complte</span>
											<?php }else{ ?>
												<span class="badge badgeWarning"> Processing</span>
												<a href='index.php/home/application_tpreview?scode=<?php echo $trade_data->trackid?>'>View </a>
											<?php }?>
										
										</td>
										
									</tr>
									<?php } ?>
									<?php if(!empty($nagorik_data)) {?>
									<tr>
										<td> নাগরিক সনদ   </td>
										<td> 
											<?php echo  $nagorik_data->trackid;?>
										</td>
										<td> 
											<?php echo  $nagorik_data->sonodno;?>
										</td>
										<td>
											<?php if($nagorik_data->is_process==0){?>
												<span class="badge badgePrimary">Pending <a href='index.php/home/application_ppreview?scode=<?php echo $nagorik_data->trackid?>'>View </a></span>
											<?php }else if($nagorik_data->is_process==3){?>
												<span class="badge badgeSuccess">  Complte</span>
											<?php }else{ ?>
												<span class="badge badgeWarning">Processing </span> <a href='index.php/home/application_ppreview?scode=<?php echo $nagorik_data->trackid?>'>View </a>
											<?php }?>
										
										</td>
									</tr>
									<?php } ?>
									<?php if(!empty($others_nagorik_data)) {?>
									<?php foreach($others_nagorik_data as $item){?>
									<tr>
										<td> <?php echo $this->applicant->serviceNameShow($item->serviceId)->listName;?> </td>
										<td> 
											<?php echo  $item->trackid;?>
										</td>
										<td> 
											<?php echo  $item->sonodno;?>
										</td>
										<td>
											<?php if($item->is_process==0){?>
												<span class="badge badgePrimary">Pending</span>
												<a href='index.php/home/application_opreview?scode=<?php echo $item->trackid?>'>View </a>
											<?php }else if($item->is_process==3){?>
												<span class="badge badgeSuccess"> Complte</span>
											<?php }else{ ?>
												<span class="badge badgeWarning"> Processing  </span>
												<a href='index.php/home/application_opreview?scode=<?php echo $item->trackid?>'>View </a>
											<?php }?>
										
										</td>
										
									</tr>
									<?php } ?>
									<?php } ?>
									<?php if(!empty($warish_data)) {?>
									<tr>
										<td>  ওয়ারিশ সনদ </td>
										<td> 
											<?php echo  $warish_data->trackid;?>
										</td>
										<td> 
											<?php echo  $warish_data->sonodno;?>
										</td>
										<td>
											<?php if($warish_data->is_process==0){?>
												<span class="badge badgePrimary">Pending</span>
												<a href='index.php/home/application_wpreview?scode=<?php echo $warish_data->trackid?>'>View </a>
											<?php }else if($warish_data->is_process==3){?>
												<span class="badge badgeSuccess"> Complte</span>
											<?php }else{ ?>
												<span class="badge badgeWarning"> Processing  </span>
												<a href='index.php/home/application_wpreview?scode=<?php echo $warish_data->trackid?>'>View </a>
											<?php }?>
										
										</td>
									</tr>
									<?php } ?>
									<?php if(empty($trade_data) && empty($nagorik_data) && empty($others_nagorik_data) && empty($warish_data)){ ?>
										<tr>
											<td colspan="4" style="text-align:center; ">  কোন তথ্য পাওয়া যাইনি ।  </td>
									    </tr>
									<?php } ?>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div id="PaymentStatus" class="tabcontent">
						<div class="row">
							<div class="col-sm-12 col-xs-12 ">
							   <h3>পেমেন্ট স্ট্যাটাস</h3>
							   <table class="table table-bordered table-responsive">
									<thead>
									<tr>
										<!-- <th>  ক্রঃ নং </th> -->
										<th>  সনদের নাম </th>
										<!-- <th>  ফি  </th> -->
										<th>  মোট ফি  </th>
										<th>স্ট্যাটাস</th>
										<th>আকশন </th>
									</tr>
									</thead>
									<tbody>
										<?php
										$i= 1;
										foreach($invoice_data as $item) {?>
										<tr>
											<!-- <td><?php echo  $i++; ?></td> -->
											<td>
												<?php  if($item->type == 1){ ?>
													ট্রেড লাইসেন্স
												<?php  }else if($item->type == 2 ){ ?>
													নাগরিক সনদপত্র
												<?php  }else if($item->type == 20 ){ ?>		
													ওয়ারিশ  সনদপত্র
												<?php  }else if($item->type == 25 ){ ?>
													হোল্ডিং ট্যাক্স 
												<?php  }else{?>
													অন্যান্য
												<?php }?>
											</td>
											<!-- <td><?php echo  $item->fee?></td> -->
											<td><?php echo  $item->total_fee?></td>
											<td>
											<?php if($item->is_paid==0){?>
												<span class="badge badgeDanger">Unpaid</span>
											<?php }else{ ?>
												<span class="badge badgeSuccess">Paid </span>
											<?php }?>
											</td>
											<td>
											<?php if($item->is_paid!=0){?>
												<!-- <a href='Home/viewInvoice?id=<?php echo sha1($item->id)?>'  class="btn btn-success btn-info btn-sm"> View </a> -->
												<span class="badge ">Done </span>
											<?php }else{ ?>
												<a href='index.php/home/invoice_payment?id=<?php echo sha1($item->id)?>'  class="btn btn-success btn-success btn-sm"> Payment Now </a>
											<?php }?>
											</td>
										</tr>
										<?php }?>

										<?php if(empty($invoice_data)){ ?>
										<tr>
											<td colspan="4" style="text-align:center; ">  কোন তথ্য পাওয়া যাইনি ।  </td>
									    </tr>
									   <?php } ?>
									</tbody>
								</table>
							</div>
					    </div>	
					</div>

					<div id="passwordChange" class="tabcontent">
						<div class="row passwordChangeArearcls">
							<div class="col-sm-12 col-xs-12">
								<h3>পাসওয়ার্ড পরিবর্তন </h3>
								<form action="index.php/home/change_password" method="post" onsubmit="return validation();" id="validall" enctype="multipart/form-data" class="form-horizontal">
									<p id="error" style="font-size:18px;font-family:comicsans-ms;color:red;text-align:center;"></p>
										<div class="row"> 
											<div class="form-group">
												<label for="Name-english" class="col-sm-3 control-label"> পূর্বের পাসওয়ার্ড  <span>*</span></label>
												<div class="col-sm-6">
													<input type="text" name="pre_password" id="pre_password" class="form-control" placeholder="পূর্বের পাসওয়ার্ড"  />
												</div>
											</div>
										</div>
										<div class="row"> 
											<div class="form-group" >
												<label for="Name-bangla" class="col-sm-3 control-label"> নতুন পাসওয়ার্ড   <span>*</span></label>
												<div class="col-sm-6">
													<input type="text" name="password" id="password" class="form-control" placeholder="নতুন পাসওয়ার্ড" required />
												</div>
											</div>
										</div>
										<div class="row"> 
											<div class="form-group" >
												<label for="Name-bangla" class="col-sm-3 control-label"> পুনরায়  পাসওয়ার্ড   <span>*</span></label>
												<div class="col-sm-6">
													<input type="text" name="confirm_password" id="confirm_password" class="form-control" placeholder="পুনরায় পাসওয়ার্ড"  />
												</div>
											</div>
										</div>
										<div class="row"> 
											<div class="form-group" >
											<div class="col-sm-3"></div>
												<div class="col-sm-6">
												<input type='submit' value="পাসওয়ার্ড পরিবর্তন" name='submit_btn' class="btn btn-info btn-sm"/><br>
												</div>
											</div>
										</div>
								<form>
							</div>
						</div>
					</div>
			</div>
	</div><!-- left Content End-->
<script>
	function openUserProfile(evt, cityName) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " active";
	}

	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();
</script>
<!-- <script src="all/custom_js/nagorick_form.js" type="text/javascript"></script> -->
