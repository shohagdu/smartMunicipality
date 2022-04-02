<link href="all/custom_js/application_form.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"> 
		function validation(){
			var name      = document.getElementById('name').value;
			var mobile    = document.getElementById('mobile').value;
			var nid       = document.getElementById('nid').value;
			var birth_id  = document.getElementById('birth_id').value;
			var password  = document.getElementById('password').value;
			var cpassword = document.getElementById('confirm_password').value;

			var nidLenght      = nid.length;
			var birth_idLenght = birth_id.length;
			
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
			else if(nidLenght < 10 || nidLenght > 17){
				document.getElementById('error').innerHTML='আপনার ন্যাশনাল আইডি সঠিক না  ';
				return false;
			}

			else if(birth_idLenght < 15 || birth_idLenght > 17){
				document.getElementById('error').innerHTML='আপনার জন্ম নিবন্ধন নং  সঠিক না  ';
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

		$("document").ready(function(){
			$("#nid").keyup(function(){
				var nid=$("#nid").val();
				$.ajax({
					url:"Home/searchRegisterUser?id=1",
					data:{nid:nid},
					type:"GET",
					success:function(hr){
						
						if(hr==1){
							document.getElementById('error1').innerHTML=" দু:খিত!!! ন্যাশনাল আইডি পূর্বে ব্যবহৃত হযেছে। ";
							document.getElementById('nid').value="";
						}else{
							document.getElementById('error1').innerHTML=" ";
						}
					}
				});
			});
		});

		function isNumber(evt) {
			evt = (evt) ? evt : window.event;
			var charCode = (evt.which) ? evt.which : evt.keyCode;
			if (charCode > 31 && (charCode < 48 || charCode > 57)) {
				return false;
			}
			return true;
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
								   <div class="col-sm-2"></div>	
								   <div class="col-sm-10"> 
										<div class="form-group">
											<label for="Name-english" class="col-sm-3 control-label">নাম (বাংলায়)  <span>*</span></label>
											<div class="col-sm-6">
												<input type="text" name="name" id="name" class="form-control nopaste" placeholder="নাম বাংলায়" required />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
								   <div class="col-sm-2"></div>		
								   <div class="col-sm-10"> 
										<div class="form-group">
											<label for="Name-bangla" class="col-sm-3 control-label"> মোবাইল (ইংরেজিতে)  <span>*</span></label>
											<div class="col-sm-6">
												<input type="text" name="mobile" id="mobile" class="form-control nopaste" placeholder="মোবাইল ইংরেজিতে" onkeypress="return isNumber(event)"   autocomplete="off" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
								    <div class="col-sm-2"></div>	
									<div class="col-sm-10"> 
										<div class="form-group">
											<label for="nid" class="col-sm-3 control-label"> ন্যাশনাল আইডি (ইংরেজিতে)  </label>
											<div class="col-sm-6">
												<input type="text" name="nid" id="nid" class="form-control nopaste"  placeholder="ন্যাশনাল আইডি ইংরেজিতে" onkeypress="return isNumber(event)"   autocomplete="off" />
												<span id="error1" style="color:red;font-size:14px;text-align:right"></span>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
								<div class="col-sm-2"></div>	
									<div class="col-sm-10">
										<div class="form-group">
											<label for="bith_id" class="col-sm-3 control-label"> জন্ম নিবন্ধন নং (ইংরেজিতে)  </label>
											<div class="col-sm-6">
												<input type="text" name="birth_id" id="birth_id" class="form-control nopaste" placeholder="জন্ম নিবন্ধন নং ইংরেজিতে" onkeypress="return isNumber(event)"  autocomplete="off"/>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
								    <div class="col-sm-2"></div>	
									<div class="col-sm-10"> 
										<div class="form-group">
											<label for="5" class="col-sm-3 control-label"> পাসওয়ার্ড </label>
											<div class="col-sm-6">
												<input type="password" name="password" id="password" class="form-control nopaste"  placeholder="পাসওয়ার্ড"/>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
								    <div class="col-sm-2"></div>	
									<div class="col-sm-10">
										<div class="form-group">
											<label for="Email" class="col-sm-3 control-label"> পুনরায় পাসওয়ার্ড</label>
											<div class="col-sm-6">
												<input type="password" name="confirm_password" id="confirm_password" class="form-control nopaste" placeholder="পুনরায় পাসওয়ার্ড  "/>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
								    <p id="error" style="font-size:14px;font-family:comicsans-ms;color:red;text-align:center;font-weight:bold"></p>
								    <div class="col-sm-2"></div>	
									<div class="col-sm-10">
										<div class="form-group">
										    <div class="col-sm-3"></div>
											<div class="col-sm-6">
											<input type='submit' value="সাবমিট করুন" name='submit_btn' class="btn btn-info btn-sm"/>
											</div>
										</div>
									</div>
								</div>
								
							</form>
						</div>
					</div>
				</div>
			</div><!-- row end--->
		</div><!-- left Content End-->
		
		<script src="all/custom_js/nagorick_form.js" type="text/javascript"></script>
