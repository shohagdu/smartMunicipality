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
									<?php if($this->session->flashdata('success')){ ?>
									<div class="alert alert-success text-center">
										<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
										<p><?php echo $this->session->flashdata('success'); ?></p>
									</div>
									<?php } ?>
									
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
													<div class="col-sm-7">
														<h3> নাম :  <?php echo $this->session->userdata('name'); ?>  </h3>
														<p> মোবাইল : <?php echo $this->session->userdata('mobile'); ?> </p>
														<table class="table table-bordered">
															<thead>
															<tr>
																<th>সনদের নাম </th>
																<th>স্ট্যাটাস</th>
																<th>আকশন </th>
															</tr>
															</thead>
															<tbody>
															<?php if(!empty($trade_data)) {?>
															<tr>
																<td> ট্রেড লাইসেন্স  </td>
																<td>
																	<?php if($trade_data->is_process==0){?>
																		<span class="badge badge-primary">Pending</span>
																	<?php }else if($trade_data->is_process==3){?>
																		<span class="badge badge-primary"> Complte</span>
																	<?php }else{ ?>
																		<span class="badge badge-primary"> Processing</span>
																	<?php }?>
																
																</td>
																<td> 
																<?php if($trade_data->is_process==3){?>
																	<a class=" btn btn-sm btn-success"> বাংলা  </a>
																	<a class=" btn btn-sm btn-info"> ইংরেজি  </a>
																<?php }?>
																</td>
															</tr>
															<?php } ?>
															<?php if(!empty($nagorik_data)) {?>
															<tr>
																<td> নাগরিক সনদ   </td>
																<td>
																	<?php if($nagorik_data->is_process==0){?>
																		<span class="badge badge-primary">Pending</span>
																	<?php }else if($nagorik_data->is_process==3){?>
																		<span class="badge badge-primary">  Complte</span>
																	<?php }else{ ?>
																		<span class="badge badge-primary">Processing </span>
																	<?php }?>
																
																</td>
																<td> 
																<?php if($nagorik_data->is_process==3){?>
																	<a class=" btn btn-sm btn-success"> বাংলা  </a>
																	<a class=" btn btn-sm btn-info"> ইংরেজি  </a>
																<?php }?>
																</td>
															</tr>
															<?php } ?>
															<?php if(!empty($others_nagorik_data)) {?>
															<tr>
																<td> <?php echo $this->applicant->serviceNameShow($others_nagorik_data->serviceId)->listName;?> </td>
																<td>
																	<?php if($others_nagorik_data->is_process==0){?>
																		<span class="badge badge-primary">Pending</span>
																	<?php }else if($others_nagorik_data->is_process==3){?>
																		<span class="badge badge-primary"> Complte</span>
																	<?php }else{ ?>
																		<span class="badge badge-primary"> Processing  </span>
																	<?php }?>
																
																</td>
																<td> 
																<?php if($others_nagorik_data->is_process==3){?>
																	<a class=" btn btn-sm btn-success"> বাংলা  </a>
																	<a class=" btn btn-sm btn-info"> ইংরেজি  </a>
																<?php }?>
																</td>
															</tr>
															<?php } ?>
															
															</tbody>
														</table>
													</div>
													<div class="col-sm-2">
													<img src="all/assets/image/avatar.png" class="profileImg" class="img-responsive">
													</div>
												</div>
												

											</div>
											<div class="tab-pane" id="sonodApplicant">
												<div class="row">
													<h3>সনদের আবেদন</h3>
													<div class="col-sm-9">
														<table class="table table-bordered">
															<thead>
															<tr>
																<th>আবেদনের তারিখ </th>
																<th>স্ট্যাটাস</th>
																<th>আকশন </th>
															</tr>
															</thead>
															<tbody>
															
															<tr>
																<td> <?php echo date('d-m-Y', strtotime($trade_data->insert_time)); ?></td>
																<td>
																	<?php if($trade_data->is_process==0){?>
																		<span class="badge badge-primary">Pending</span>
																	<?php }else{ ?>
																		<span class="badge badge-primary">Approve </span>
																	<?php }?>
																
																</td>
																<td> 
																	<a class=" btn btn-sm btn-info"> View </a>
																</td>
															</tr>
															
															</tbody>
														</table>
									                </div>
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
												
												<div class="row">
													<h3>পেমেন্ট স্ট্যাটাস</h3>
													<div class="col-sm-9 ">
														<table class="table table-bordered">
															<thead>
															<tr>
																<th>  ক্রঃ নং </th>
																<th>  সনদের নাম </th>
																<th>  ফি  </th>
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
																	<td><?php echo  $i++; ?></td>
																	<td>
																		<?php  if($item->type == 1){ ?>
																			ট্রেড লাইসেন্স
																	    <?php  }else if($item->type == 2 ){ ?>
																			নাগরিক সনদপত্র
																	    <?php  }else{?>
																			অন্যান্য
																		<?php }?>
																	</td>
																	<td><?php echo  $item->fee?></td>
																	<td><?php echo  $item->total_fee?></td>
																	<td>
																	<?php if($item->is_paid==0){?>
																		<span class="badge badge-primary">Unpaid</span>
																	<?php }else{ ?>
																		<span class="badge badge-success">Paid </span>
																	<?php }?>
																    </td>
																	<td>
																	<?php if($item->is_paid!=0){?>
																		<a href='Home/viewInvoice?id=<?php echo sha1($item->id)?>'  class="btn btn-success btn-info btn-sm"> View </a>
																	<?php }else{ ?>
																		<a href='index.php/home/invoice_payment?id=<?php echo sha1($item->id)?>'  class="btn btn-success btn-success btn-sm"> Payment </a>
																	<?php }?>
																    </td>
																</tr>
																<?php }?>
															</tbody>
														</table>
									                </div>
												</div>
											</div>
											<div class="tab-pane" id="changePassword">
												<div class="row">
													<h3>পাসওয়ার্ড পরিবর্তন</h3><br>
													
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
