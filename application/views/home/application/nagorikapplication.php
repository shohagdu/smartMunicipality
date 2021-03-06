<link href="all/custom_js/application_form.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"> 
	/*========== reday function start ===========*/
	// $(document).reday(function(){
	// 	onload_hide_fun();
	// });
	/*========== reday function  end===========*/

</script>
<div class="main_con"><!--Content Start-->
	<div class="row"><!--- row start--->
		<div class="col-md-9 left_con"><!-- left Content Start-->
			<div class="row">
				<div class="col-md-12"> 
					<div class="panel panel-primary">
						<div class="panel-heading" style="font-weight: bold; font-size: 15px;background:#004884;text-align:center;">নাগরিক আবেদন</div>
						<?php if(empty($this->session->userdata('id'))){  ?>
							<h4 style="color:red;text-align:center;font-weight: bold"> আবেদন করার জন্য নিবন্ধন করতে হবে। নিবন্ধন করার পর লগইন করার মাধ্যমে আবেদন প্রক্রিয়া সম্পন্ন করা যাবে। </br> <span  style="font-size:13px;font-weight: bold" > (নিবন্ধন ব্যতিত কোন প্রকার আবেদন করা যাবে না)</span> </h4>
						<?php }?>
						<div class="panel-body all-input-form">
							<form action="index.php/home/nagorikapplication_action"  method="post" id="defaultForm" class="form-horizontal" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group">
                                            <label for="National-id-english" class="col-sm-6 control-label">ছবি  </label>
                                            <div class="col-sm-6">
                                                <input type="file" name="file" accept="image/jpeg, image/jpg, image/png" onchange="LoadFile(event);" class="form-control input-file-sm" />
												<input type="hidden" name="pre_picture" value="<?php echo $profile_info->profile; ?>"/>
											</div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="form-group">
                                            <label for="Delivery-type" class="col-sm-6 control-label">সরবরাহের ধরণ  <span>*</span></label>
                                            <div class="col-sm-6">
                                                <label class="radio-inline"><input type="radio" name="delivery_type" value="1" >জরুরী</label>
                                                <label class="radio-inline"><input type="radio" name="delivery_type" value="2">অতি জরুরী  </label>
                                                <label class="radio-inline"><input type="radio" name="delivery_type" value="3" checked="checked"> সাধারন</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="Birth-no" class="col-sm-6 control-label"></label>
                                            <div class="col-sm-6" id="img_div">

												<?php if(empty($profile_info->profile)) { ?>
                                                <img src="<?php echo base_url('library/profile/default.jpg') ?>" class="img-thumbnail" style="height: 100px" id="img_id">
											    <?php }else{?>		
													<img src="<?php echo base_url().'all/assets/user_img/'.$profile_info->profile; ?>"  id="img_id" class="img-thumbnail" style="height: 100px">
												<?php }?>
											</div>
                                        </div>

                                    </div>
                                </div>
								
								<div class="row">
									<div class="col-sm-6"> 
										<div class="form-group">
											<label for="National-id-english" class="col-sm-6 control-label">ন্যাশনাল আইডি (ইংরেজিতে)  </label>
											<div class="col-sm-6">
												<input type="text" name="nationid" id="nid" class="form-control" maxlength='17' onkeypress="return checkaccnumber(event);"  placeholder="" value="<?php echo $profile_info->nid; ?>" />
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Birth-no" class="col-sm-6 control-label">জন্ম নিবন্ধন নং ( ইংরেজিতে ) </label>
											<div class="col-sm-6">
												<input type="text" name="bcno" id="bcno" class="form-control" maxlength="17" onkeypress="return checkaccnumber(event);"  placeholder="" value="<?php echo $profile_info->birthcertificate_no; ?>"  />
											</div>
										</div>
									</div>
								</div>
							
								<div class="row">
									<div class="col-sm-6"> 
										<div class="form-group">
											<label for="Passport-no" class="col-sm-6 control-label">পাসপোর্ট নং ( ইংরেজিতে ) </label>
											<div class="col-sm-6">
												<input type="text" name="pno" id="pno" class="form-control" value="<?php echo $profile_info->pno; ?>" maxlength='17' placeholder=""/>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Birth-date" class="col-sm-6 control-label">জম্ম তারিখ  <span>*</span></label>
											<div class="col-sm-6 date">
												<div class="input-group input-append date" id="datePicker">
													<input type="text" class="form-control" name="dofb" id="dofb" value="<?php echo $profile_info->dofb; ?>" />
													<span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-english" class="col-sm-3 control-label">নাম ( ইংরেজিতে )   <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="ename" id="name" class="form-control" placeholder="" value="<?php echo $profile_info->ename; ?>" required />
											</div>
											<label for="Name-bangla" class="col-sm-3 control-label">নাম ( বাংলায় )  <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="bname" id="bname" class="form-control" placeholder="" required value="<?php echo $profile_info->name; ?>"  />
											</div>
										</div>
									</div>
								</div>
				
								<div class="row">
									<div class="col-sm-12"> 
										<div class="form-group"> 
											<label for="Gender" class="col-sm-3 control-label">লিঙ্গ   <span>*</span></label>
											<div class="col-sm-3">
												<select name="gender" id="gender" class="form-control" required onchange="testshowHide(this.value);" >
													<option value="">চিহ্নিত করুন</option>
													<option value="male" <?php if($profile_info->gender == "male"){ echo "selected";} ?>>পুরুষ</option>
													<option value="female" <?php if($profile_info->gender == "female"){ echo "selected";} ?>>মহিলা</option>
													<option value="others" <?php if($profile_info->gender == "others"){ echo "selected";} ?>>অন্যান্য</option>
												</select>
											</div>
											<label for="Marital-status" class="col-sm-3 control-label">বৈবাহিক সম্পর্ক  <span>*</span></label>
											<div class="col-sm-3">
												<select name="mstatus" id="mstatus" class="form-control" required  >
													<option value="">চিহ্নিত করুন</option>
													<option value="1" <?php if($profile_info->mstatus == 1){ echo "selected";} ?>>বিবাহিত</option>
													<option value="2" <?php if($profile_info->mstatus == 2){ echo "selected";} ?>>অবিবাহিত</option>
													<option value="3" <?php if($profile_info->mstatus == 3){ echo "selected";} ?>>বিপত্নীক / বিধবা</option>
													<option value="4" <?php if($profile_info->mstatus == 4){ echo "selected";} ?>>তালাকপ্রাপ্ত</option>
													<option value="5" <?php if($profile_info->mstatus == 5){ echo "selected";} ?>>দরকার নাই</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row" id="wife" style="display: none;" data-topic="1" >
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Wife-name-english" class="col-sm-3 control-label">স্ত্রীর  নাম (ইংরেজিতে)  <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="eWname" id="eWname" class="form-control" value="<?php echo $profile_info->ewname; ?>" placeholder="" />
											</div>
											<label for="Wife-name-bangla" class="col-sm-3 control-label">স্ত্রীর নাম (বাংলায়) <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="bWname" id="bWname" class="form-control" value="<?php echo $profile_info->bwname; ?>" placeholder="" />
											</div>
										</div>
									</div>
								</div>
								
								<div class="row" id="husband" style="display: none;" data-topic="2" >
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Husband-name-english" class="col-sm-3 control-label">স্বামীর নাম (ইংরেজিতে) <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="eHname" id="eHname" class="form-control" value="<?php echo $profile_info->ehname; ?>" placeholder="" />
											</div>
											<label for="Husband-name-bangla" class="col-sm-3 control-label"> স্বামী নাম (বাংলায়) <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="bHname" id="bHname"  class="form-control" value="<?php echo $profile_info->bhname; ?>" placeholder="" />
											</div>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Father-name-english" class="col-sm-3 control-label">পিতার নাম (ইংরেজিতে)  <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="efname" id="efname" class="form-control" value="<?php echo $profile_info->efname; ?>" placeholder="" required />
											</div>
											<label for="Father-name-bangla" class="col-sm-3 control-label">পিতার নাম (বাংলায়)  <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="bfname" id="bfname" class="form-control" value="<?php echo $profile_info->bfname; ?>"  placeholder="" required />
											</div>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Mother-name-english" class="col-sm-3 control-label">মাতার নাম (ইংরেজিতে)  <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="emname" id="mname" class="form-control" value="<?php echo $profile_info->emname; ?>" placeholder="" required />
											</div>
											<label for="Mother-name-bangla" class="col-sm-3 control-label">মাতার নাম (বাংলায়)  <span>*</span></label>
											<div class="col-sm-3">
												<input type="text" name="bmane" id="emane" class="form-control" value="<?php echo $profile_info->mname; ?>" placeholder="" required />
											</div>
										</div>
									</div>
								</div>
							
								<div class="row">
									<div class="col-sm-6"> 
										<div class="form-group">
											<label for="profession" class="col-sm-6 control-label">পেশা</label>
											<div class="col-sm-6">
												<input type="text" name="ocupt" id="occupation" class="form-control"  value="<?php echo $profile_info->ocupt; ?>"  placeholder="" maxlength="500" />
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Education-qualification" class="col-sm-6 control-label">শিক্ষাগত যোগ্যতা</label>
											<div class="col-sm-6">
												<input type="text" name="qualification" id="qualification" class="form-control" placeholder=""  maxlength="500"  value="<?php echo $profile_info->edustatus; ?>" />
											</div>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Religion" class="col-sm-6 control-label">ধর্ম    <span>*</span></label>
											<div class="col-sm-6">
												<select name="religion" class="form-control" required >
													<option value=''>চিহ্নিত করুন</option>
													<option value='ইসলাম' <?php if($profile_info->religion == 'ইসলাম'){ echo "selected";} ?>>ইসলাম</option>
													<option value='হিন্দু' <?php if($profile_info->religion == 'হিন্দু'){ echo "selected";} ?>>হিন্দু</option>
													<option value='বৌদ্ধ ধর্ম' <?php if($profile_info->religion == 'বৌদ্ধ ধর্ম'){ echo "selected";} ?>>বৌদ্ধ ধর্ম</option>
													<option value='খ্রিস্ট ধর্ম' <?php if($profile_info->religion == 'খ্রিস্ট ধর্ম'){ echo "selected";} ?>>খ্রিস্ট ধর্ম</option>
													<option value='অন্যান্য' <?php if($profile_info->religion == 'অন্যান্য'){ echo "selected";} ?>>অন্যান্য</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Resident" class="col-sm-6 control-label">হোল্ডিং নম্বর </label>
											<div class="col-sm-6">
												<input type="text" name="holding_no" id="holding_no" class="form-control" maxlength='10'   placeholder="" value="<?php echo $profile_info->holding_no; ?>"  />
											    <span id="error11" style="color:red;font-size:14px;"> </span>
											    <div id="InvoiceLink" style="color:red;font-size:14px;"> </div>
										        <span id="error22" style="color:green;font-size:14px;"></span>
											</div>
										</div>	
									</div>	
								</div>
								
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Resident" class="col-sm-6 control-label">বাসিন্দা    <span>*</span></label>
											<div class="col-sm-6">
												<select name="bashinda" id='bs' class="form-control" onchange="basinda_show_hide(this.value);" required >
													<option value=''>চিহ্নিত করুন</option>
													<option value='1' <?php if($profile_info->bashinda == 1){ echo "selected";} ?>>অস্থায়ী</option>
													<option value='2' <?php if($profile_info->bashinda == 2){ echo "selected";} ?>>স্থায়ী</option>
												</select>
											</div>
										</div>	
									</div>	
								</div>
								
								<div class="row">
									<div class="col-sm-12"> 
										<div class="app-heading"> 
											বর্তমান ঠিকানা
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-6">
										<div class="col-sm-offset-6 col-sm-6">
											<div class="app-sub-heading"> 
												( ইংরেজিতে )
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="District-english" class="col-sm-6 control-label">জেলা </label>
													<div class="col-sm-6">
														<input type="text" name="p_dis" id="p_dis" class="district_en form-control" value="<?php echo $profile_info->p_dis; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Thana-english" class="col-sm-6 control-label">উপজেলা/থানা</label>
													<div class="col-sm-6">
														<input type="text" name="p_thana" id="p_thana" class="upazila_en form-control"  value="<?php echo $profile_info->p_thana; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Post-office-english" class="col-sm-6 control-label">পোষ্ট অফিস </label>
													<div class="col-sm-6">
														<input type="text" name="p_postof" id="p_postof" class="form-control" value="<?php echo $profile_info->p_postof; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Word-no-english" class="col-sm-6 control-label">ওয়ার্ড নং</label>
													<div class="col-sm-6">
														<input type="text" name="p_wordno" id="p_wordno" class="form-control" value="<?php echo $profile_info->p_wordno; ?>" onkeypress="return checkaccnumber(event);"  placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Road-block-sector-english" class="col-sm-6 control-label">রোড/ব্লক/সেক্টর</label>
													<div class="col-sm-6">
														<input type="text" name="p_rbs" id="p_rbs" class="form-control" value="<?php echo $profile_info->p_rbs; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Village-english" class="col-sm-6 control-label">গ্রাম/মহল্লা </label>
													<div class="col-sm-6">
														<input type="text" name="p_gram" id="p_gram" class="form-control" value="<?php echo $profile_info->p_gram; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="col-sm-offset-6 col-sm-6">
											<div class="app-sub-heading"> 
												( বাংলায় )
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="District-bangla" class="col-sm-6 control-label">জেলা </label>
													<div class="col-sm-6">
														<input type="text" name="pb_dis" id="pb_dis" class="district_bn form-control" value="<?php echo $profile_info->pb_dis; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Thana-bangla" class="col-sm-6 control-label">উপজেলা/থানা</label>
													<div class="col-sm-6">
														<input type="text" name="pb_thana" id="pb_thana" class="upazila_bn form-control" value="<?php echo $profile_info->pb_thana; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Post-office-bangla" class="col-sm-6 control-label">পোষ্ট অফিস </label>
													<div class="col-sm-6">
														<input type="text" name="pb_postof" id="pb_postof" class="form-control"value="<?php echo $profile_info->pb_postof; ?>"  placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Word-no-bangla" class="col-sm-6 control-label">ওয়ার্ড নং</label>
													<div class="col-sm-6">
														<input type="text" name="pb_wordno" id="pb_wordno" class="form-control" value="<?php echo $profile_info->pb_wordno; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Road-block-sector-bangla" class="col-sm-6 control-label">রোড/ব্লক/সেক্টর</label>
													<div class="col-sm-6">
														<input type="text" name="pb_rbs" id="pb_rbs" class="form-control" value="<?php echo $profile_info->pb_rbs; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Village-bangla" class="col-sm-6 control-label">গ্রাম/মহল্লা </label>
													<div class="col-sm-6">
														<input type="text" name="pb_gram" id="pb_gram" class="form-control" value="<?php echo $profile_info->pb_gram; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row" id="permaHeading">
									<div class="col-sm-12" style="text-align:center;"> 
										<div class="app-heading"> 
											স্থায়ী  ঠিকানা
										</div>
									</div>
								</div>
								
								<div class="row" id="permanentAddress">
									<div class="col-sm-6">
										<div class="col-sm-offset-6 col-sm-6">
											<div class="app-sub-heading"> 
												( ইংরেজিতে )
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="District-english" class="col-sm-6 control-label">জেলা </label>
													<div class="col-sm-6">
														<input type="text" name="per_dis" id="per_dis" class="present_district_en form-control" value="<?php echo $profile_info->per_dis; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Thana-english" class="col-sm-6 control-label">উপজেলা/থানা</label>
													<div class="col-sm-6">
														<input type="text" name="per_thana" id="per_thana" class="form-control" value="<?php echo $profile_info->per_thana; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Post-office-english" class="col-sm-6 control-label">পোষ্ট অফিস </label>
													<div class="col-sm-6">
														<input type="text" name="per_postof" id="postof" class="form-control" value="<?php echo $profile_info->per_postof; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Word-no-english" class="col-sm-6 control-label">ওয়ার্ড নং</label>
													<div class="col-sm-6">
														<input type="text" name="per_wordno" id="per_wordno" class="form-control" value="<?php echo $profile_info->per_wordno; ?>" onkeypress="return numtest();"  placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Road-block-sector-english" class="col-sm-6 control-label">রোড/ব্লক/সেক্টর</label>
													<div class="col-sm-6">
														<input type="text" name="per_rbs" id="per_rbs" class="form-control" value="<?php echo $profile_info->per_rbs; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Village-english" class="col-sm-6 control-label">গ্রাম/মহল্লা </label>
													<div class="col-sm-6">
														<input type="text" name="per_gram" id="per_gram" class="form-control" value="<?php echo $profile_info->per_gram; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="col-sm-offset-6 col-sm-6">
											<div class="app-sub-heading"> 
												( বাংলায় )
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="District-bangla" class="col-sm-6 control-label">জেলা </label>
													<div class="col-sm-6">
														<input type="text" name="perb_dis" id="perb_dis" class=" form-control" value="<?php echo $profile_info->perb_dis; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Thana-bangla" class="col-sm-6 control-label">উপজেলা/থানা</label>
													<div class="col-sm-6">
														<input type="text" name="perb_thana" id="perb_thana" class="form-control" value="<?php echo $profile_info->perb_thana; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Post-office-bangla" class="col-sm-6 control-label">পোষ্ট অফিস </label>
													<div class="col-sm-6">
														<input type="text" name="perb_postof" id="perb_postof" class="form-control"  value="<?php echo $profile_info->perb_postof; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Word-no-bangla" class="col-sm-6 control-label">ওয়ার্ড নং</label>
													<div class="col-sm-6">
														<input type="text" name="perb_wordno" id="perb_wordno" value="<?php echo $profile_info->perb_wordno; ?>" class="form-control" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Road-block-sector-bangla" class="col-sm-6 control-label">রোড/ব্লক/সেক্টর</label>
													<div class="col-sm-6">
														<input type="text" name="perb_rbs" id="perb_rbs" class="form-control" value="<?php echo $profile_info->perb_rbs; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12"> 
												<div class="form-group">
													<label for="Village-bangla" class="col-sm-6 control-label">গ্রাম/মহল্লা </label>
													<div class="col-sm-6">
														<input type="text" name="perb_gram" id="perb_gram" class="form-control" value="<?php echo $profile_info->perb_gram; ?>" placeholder=""/>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								
								<div class="row">
									<div class="col-sm-12" style="text-align:center;"> 
										<div class="app-heading"> 
											যোগাযোগের ঠিকানা
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-6"> 
										<div class="form-group">
											<label for="Mobile" class="col-sm-6 control-label">মোবাইল    <span>*</span></label>
											<div class="col-sm-6">
												<input type="text" name="mob" id="mob" class="form-control"  placeholder="ইংরেজিতে প্রদান করুন" onkeypress=""  required value="<?php if(!empty($this->session->userdata('id'))){ echo $this->session->userdata('mobile'); }?>"  />
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Email" class="col-sm-6 control-label">ইমেল </label>
											<div class="col-sm-6">
												<input type="text" name="email" id="email" class="form-control" value="<?php echo $profile_info->email; ?>" placeholder=""/>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Designation" class="col-sm-3 control-label">সংযুক্তি (যদি থাকে)</label>
											<div class="col-sm-9">
												<textarea name="attachment" class="form-control" rows="5" id="attachment" placeholder="উদাহরন: মুক্তিযোদ্ধা সন্তান, বিধবা, উপজাতি .....ইত্যাদি"></textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12"> 
									
										<div class="form-group">
											<label for="payment_method" class="col-sm-3 control-label"> পেমেন্ট মেথড </label>
											<div class="col-sm-3">
												<select name="payment_method" id='payment_method' class="form-control" required >
													<option value=''>চিহ্নিত করুন</option>
													<option value='1'>বিকাশ </option>
													<option value='2'>ক্যাশ </option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-offset-6 col-sm-6 button-style"> 
										<?php if(!empty($this->session->userdata('id'))){ ?>
											<button type="submit" name="save" id="submit_button"  class="btn btn-primary">দাখিল করুন</button>
									    <?php } ?>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div><!-- row end--->
		</div><!-- left Content End-->
		
		<script src="all/custom_js/nagorick_form.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(document).ready(function(){
	
				$('.district_en').autocomplete({
					source: "<?php echo site_url('home/district_en');?>",
				});

				$('.district_bn').autocomplete({
					source: "<?php echo site_url('home/district_bn');?>",
				});

				$('.upazila_en').autocomplete({
					source: "<?php echo site_url('home/upazila_en');?>",
				});
				$('.upazila_bn').autocomplete({
					source: "<?php echo site_url('home/upazila_bn');?>",
				});
	
			});
    	</script>
		

