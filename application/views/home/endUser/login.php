<link href="all/custom_js/application_form.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"> 
		function validation(){
			var mobile_nid_birth_id = document.getElementById('mobile_nid_birth_id').value;
			var password            = document.getElementById('password').value;
			var pattern = /^[\s()+-]*([0-9][\s()+-]*){6,20}$/;

			if(mobile_nid_birth_id=='' ){
				document.getElementById('error').innerHTML='অনুগ্রহপূর্বক মোবাইল/ন্যাশনাল আইডি অথবা জন্ম নিবন্ধন দিন ';
				return false;
			}
			else if(password==''){
				document.getElementById('error').innerHTML='অনুগ্রহপূর্বক পাসওয়ার্ড দিন ';
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
						<div class="panel-heading" style="font-weight: bold; font-size: 15px;background:#642a5d;text-align:center;"> লগইন করুন </div>
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
							<form action="index.php/home/login_action" method="post" onsubmit="return validation();" id="validall" enctype="multipart/form-data" class="form-horizontal">
								<div class="row">
								   <p id="error" style="font-size:18px;font-family:comicsans-ms;color:red;text-align:center;"></p>
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-english" class="col-sm-3 control-label"> মোবাইল/ন্যাশনাল আইডি/জন্ম নিবন্ধন নং  <span>*</span></label>
											<div class="col-sm-5">
												<input type="number" name="mobile_nid_birth_id" id="mobile_nid_birth_id" class="form-control" placeholder="মোবাইল/ন্যাশনাল আইডি/জন্ম নিবন্ধন নং" required  />
											</div>
											
										</div>
									</div>
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-bangla" class="col-sm-3 control-label"> পাসওয়ার্ড   <span>*</span></label>
											<div class="col-sm-5">
												<input type="password" name="password" id="password" class="form-control" placeholder="পাসওয়ার্ড"  required />
											</div>
										</div>
									</div>
								</div>
								
								
								<div class="row">
								    <div class="col-sm-3"> </div>
									<div class="col-sm-2 "> 
										<input type='submit' value="লগইন করুন" name='submit_btn' class="btn btn-info btn-sm"/>
										
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div><!-- row end--->
		</div><!-- left Content End-->
		
		<script src="all/custom_js/nagorick_form.js" type="text/javascript"></script>
