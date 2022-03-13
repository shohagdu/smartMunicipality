<link href="all/custom_js/application_form.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"> 
		function validation(){
			var name      = document.getElementById('name').value;
			var mobile    = document.getElementById('mobile').value;
			var nid       = document.getElementById('nid').value;
			var birth_id  = document.getElementById('birth_id').value;
			var password  = document.getElementById('password').value;
			var cpassword = document.getElementById('confirm_password').value;
			
			var pattern = /^[\s()+-]*([0-9][\s()+-]*){6,20}$/;

			if(name==''){
				document.getElementById('error').innerHTML=' অনুগ্রহপূর্বক নাম দিন ';
				return false;
			}

			else if(mobile==''){
				document.getElementById('error').innerHTML=' অনুগ্রহপূর্বক মোবাইল নাম্বারটি দিন ';
				return false;
			}

			else if (!(pattern.test(mobile))) {
				document.getElementById('error').innerHTML='মোবাইল নাম্বারটি সঠিক না';
				return false;
			}

			else if(nid=='' || birth_id ==''){
				document.getElementById('error').innerHTML='অনুগ্রহপূর্বক ন্যাশনাল আইডি অথবা জন্ম নিবন্ধন দিন ';
				return false;
			}
			else if(password==''){
				document.getElementById('error').innerHTML='অনুগ্রহপূর্বক পাসওয়ার্ড দিন ';
				return false;
			}

			else if(cpassword==''){
				document.getElementById('error').innerHTML=' পুনরায় পাসওয়ার্ড দিন ';
				return false;
			}
			else if(cpassword!==password)
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
						<div class="panel-heading" style="font-weight: bold; font-size: 15px;background:#642a5d;text-align:center;">নিবন্ধন করুন </div>
						<div class="panel-body all-input-form">
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
							<form action="index.php/home/signup_action" method="post" onsubmit="return validation();" id="validall" enctype="multipart/form-data" class="form-horizontal">
								<div class="row">
								   <p id="error" style="font-size:18px;font-family:comicsans-ms;color:red;text-align:center;"></p>
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-english" class="col-sm-2 control-label">নাম  <span>*</span></label>
											<div class="col-sm-4">
												<input type="text" name="name" id="name" class="form-control" placeholder="নাম"  />
											</div>
											<label for="Name-bangla" class="col-sm-2 control-label"> মোবাইল   <span>*</span></label>
											<div class="col-sm-4">
												<input type="text" name="mobile" id="mobile" class="form-control" placeholder="মোবাইল"  />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6"> 
										<div class="form-group">
											<label for="nid" class="col-sm-4 control-label"> ন্যাশনাল আইডি </label>
											<div class="col-sm-8">
												<input type="text" name="nid" id="nid" class="form-control"  placeholder="ন্যাশনাল আইডি"/>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="bith_id" class="col-sm-4 control-label"> জন্ম নিবন্ধন নং </label>
											<div class="col-sm-8">
												<input type="text" name="birth_id" id="birth_id" class="form-control" placeholder="ন্যাশনাল আইডি"/>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6"> 
										<div class="form-group">
											<label for="5" class="col-sm-4 control-label"> পাসওয়ার্ড </label>
											<div class="col-sm-8">
												<input type="text" name="password" id="password" class="form-control"  placeholder="পাসওয়ার্ড"/>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="Email" class="col-sm-4 control-label"> পুনরায় পাসওয়ার্ড</label>
											<div class="col-sm-8">
												<input type="text" name="confirm_password" id="confirm_password" class="form-control" placeholder="পুনরায় পাসওয়ার্ড  "/>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-offset-6 col-sm-6 button-style"> 
										<input type='submit' value="সাবমিট করুন" name='submit_btn' class="btn btn-info btn-sm"/>
										
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div><!-- row end--->
		</div><!-- left Content End-->
		
		<script src="all/custom_js/nagorick_form.js" type="text/javascript"></script>
