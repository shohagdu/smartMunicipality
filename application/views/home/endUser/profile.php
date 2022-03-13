<link href="all/custom_js/end_user.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"> 
	function validation(){
		var pre_password     = document.getElementById('pre_password').value;
		var password         = document.getElementById('password').value;
		var confirm_password = document.getElementById('confirm_password').value;

		if(pre_password=='' ){
			document.getElementById('error').innerHTML='পূর্বের পাসওয়ার্ড';
			return false;
		}
		else if(password==''){
			document.getElementById('error').innerHTML='নতুন পাসওয়ার্ড দিন ';
			return false;
		}
		else if(confirm_password==''){
			document.getElementById('error').innerHTML='পুনরায় পাসওয়ার্ড দিন ';
			return false;
		}
		else if(confirm_password!==password)
		{
			alert('দুঃখিত!!! পাসওয়ার্ড এবং পুনরায় পাসওয়ার্ড মিলছে না, আবার চেষ্টা করুন');
			return false;
		}
		else {
			return true;
		}
	}
</script>
<div class="main_con"><!--Content Start-->
	<div class="row"><!--- row start--->
		<div class="col-md-9 left_con"><!-- left Content Start-->
			<div class="row">
				<div class="col-md-12"> 
					<div class="panel panel-primary">
						<div class="panel-heading" style="font-weight: bold; font-size: 15px;background:#642a5d;text-align:center;"> প্রোফাইল  </div>
						
							<div class="row">
								<div class="col-xs-12">
									<!-- tabs -->
									<div class="tabbable tabs-left">
										<ul class="nav nav-tabs">
											<li class="active"><a href="#myProfile" data-toggle="tab"> আমার প্রোফাইল </a></li>
											<li><a href="#sonodApplicant" data-toggle="tab">সনদের আবেদন </a></li>
											<li><a href="#sonodRecived" data-toggle="tab">সনদ গ্রহণ </a></li>
											<li><a href="#paymentStatus" data-toggle="tab">পেমেন্ট স্ট্যাটাস </a></li>
											<li><a href="#changePassword" data-toggle="tab">পাসওয়ার্ড পরিবর্তন </a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="myProfile">
												<div class="row">
													<div class="col-sm-6">
														<h3> নাম :  <?php echo $this->session->userdata('name'); ?>  </h3>
														<p> মোবাইল : <?php echo $this->session->userdata('mobile'); ?> </p>
													</div>
													<div class="col-sm-3">
													<img src="all/assets/image/avatar.png" class="profileImg" class="img-responsive">
													</div>
												</div>
											</div>
											<div class="tab-pane" id="sonodApplicant">
												<div class="">
													<h3>সনদের আবেদন</h3>
													<p>
														because they are the most important for an encyclopedia to have, as determined by the community of participating editors. They may also be of interest to readers as an alternative to lists of overview
														articles.
													</p>
												</div>
											</div>

											<div class="tab-pane" id="sonodRecived">
												<div class="">
													<h3>সনদ গ্রহণ</h3>
													<p>
														meant to identify articles which deserve editor attention because they are the most important for an encyclopedia to have, as determined by the community of participating editors. They may also be of interest
														to readers as an alternative to lists of overview articles.
													</p>
												</div>
											</div>

											<div class="tab-pane" id="paymentStatus">
												<div class="">
													<h3>পেমেন্ট স্ট্যাটাস</h3>
													<p>
														deserve editor attention because they are the most important for an encyclopedia to have, as determined by the community of participating editors. They may also be of interest to readers as an alternative to
														lists of overview articles.
													</p>
												</div>
											</div>
											<div class="tab-pane" id="changePassword">
												<div class="">
													<h3>পাসওয়ার্ড পরিবর্তন</h3><br>
													<?php if( $this->session->flashdata('success') == true) {?>
													<div class="alert alert-success">
														<?php echo $this->session->flashdata('flsh_msg'); ?>
													</div>
													<?php }?>
													<?php if( $this->session->flashdata('error') == true) {?>
													<div class="alert alert-danger">
														<?php echo $this->session->flashdata('flsh_msg'); ?>
													</div>
													<?php }?>
													<form action="index.php/home/change_password" method="post" onsubmit="return validation();" id="validall" enctype="multipart/form-data" class="form-horizontal">
													<div class="row">
													<p id="error" style="font-size:18px;font-family:comicsans-ms;color:red;text-align:center;"></p>
														<div class="col-sm-9"> 
															<div class="form-group">
																<label for="Name-english" class="col-sm-3 control-label"> পূর্বের পাসওয়ার্ড  <span>*</span></label>
																<div class="col-sm-5">
																	<input type="text" name="pre_password" id="pre_password" class="form-control" placeholder="পূর্বের পাসওয়ার্ড"  />
																</div>
															</div>
														</div>
														<div class="col-sm-9"> 
															<div class="form-group" >
																<label for="Name-bangla" class="col-sm-3 control-label"> নতুন পাসওয়ার্ড   <span>*</span></label>
																<div class="col-sm-5">
																	<input type="text" name="password" id="password" class="form-control" placeholder="নতুন পাসওয়ার্ড"  />
																</div>
															</div>
														</div>
														<div class="col-sm-9"> 
															<div class="form-group" >
																<label for="Name-bangla" class="col-sm-3 control-label"> পুনরায়  পাসওয়ার্ড   <span>*</span></label>
																<div class="col-sm-5">
																	<input type="text" name="confirm_password" id="confirm_password" class="form-control" placeholder="পুনরায় পাসওয়ার্ড"  />
																</div>
															</div>
														</div>
														<div class="col-sm-9"> 
															<div class="form-group" >
															<div class="col-sm-3"></div>
																<div class="col-sm-5">
																<input type='submit' value="পাসওয়ার্ড পরিবর্তন" name='submit_btn' class="btn btn-info btn-sm"/><br>
																</div>
															</div>
														</div>
													</div>
												<form>
													
												</div>
											</div>
										</div>
									</div>
									<!-- /tabs -->
								</div>
							</div>
					</div>
				</div>
			</div><!-- row end--->
		</div><!-- left Content End-->
		
		<script src="all/custom_js/nagorick_form.js" type="text/javascript"></script>
