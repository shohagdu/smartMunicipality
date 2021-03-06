<div id="content" class="col-lg-10 col-sm-10">
	<link rel="stylesheet" media="screen,projection" type="text/css" href="<?php echo base_url();?>library/mystyle.css" />
	<script type="text/javascript" src="<?php echo base_url();?>library/custom.js"></script>
	<style type="text/css"> 
		@-moz-document url-prefix() {
			.input-file-sm {
				height: auto;
				padding-top: 2px;
				padding-bottom: 1px;
			}
		}
		.medium-font{
			font-size: 15px;
			font-weight: normal;
		}
		.medium-font-inupt{
			font-size: 16px !important;
			letter-spacing: 1px;
			color: #333 !important;
		}
	</style>
	
	<!-- search user name-----------unique-->
	<script type="text/javascript">
		function validation(){
			var username=document.getElementById('username').value.trim();
			var password=document.getElementById('password').value.trim();
			var app_key=document.getElementById('app_key').value.trim();
			var app_secret=document.getElementById('app_secret').value.trim();


			if(username==''){
				document.getElementById('error').innerHTML='Enter Your User Name';
				return false;
			}

			else if(password==''){
				document.getElementById('error').innerHTML='Please Enter Your Password';
				return false;
			}
	   else if(app_key==''){
				document.getElementById('error').innerHTML='Please Enter APP KEY';
				return false;
			}
	  else if(app_secret==''){
				document.getElementById('error').innerHTML='Please Enter SECRET Key';
				return false;
			}

			else {
				
				document.getElementById('error').innerHTML='';
				$.post(
				"index.php/Setup/payment_api_config_sub",
				$("#validall").serialize(),
				function(data){
					if(data==1)
					{
						alert('Configuration Successfull');
						window.location="index.php/setup/payment_api_config";
					}
					else if(data==2)
					{
						alert('Please Fill up All Input box!!');
					}
					else
					{
						alert(data);
					}	
					
				});

				return false;
				
				
				return true;
			}
		}
		// some validation function .............
		function only_chareter(v){
			if((event.keyCode==32) && (v=='')){
				return false;
			}
			else if ((event.keyCode > 64 && event.keyCode < 91) || (event.keyCode > 96 && event.keyCode < 123) || event.keyCode == 8 || event.keyCode==32)
			{
				return true;
			} 
			else
			{
				return false;
			}
		}



		function isNumber(evt){
			evt = (evt) ? evt : window.event;
			var charCode = (evt.which) ? evt.which : evt.keyCode;
			if (charCode > 31 && (charCode < 48 || charCode > 57) && event.keyCode != 46) {
				return false;
			}
			return true;
		}
	

	</script>
	<!-- some information query -->
	<div class="row">
		<div class="col-md-12"> 
			<div class="panel panel-primary">
				<div class="panel-heading" style="font-weight: bold; font-size: 15px;background:#004884;text-align:center;">Payment API Configuration</div>
				<div class="panel-body all-input-form">
					<form action="" method="post" onsubmit="return validation();" id="validall" enctype="multipart/form-data" class="form-horizontal">
					<div class="row medium-font">
							<div class="col-sm-12"> 
								<div class="form-group">
									<label for="url" class="col-sm-3 col-sm-offset-1 control-label">App key</label>
									<div class="col-sm-6">
										<input type="text" name="app_key" id="app_key" class="form-control medium-font-inupt" placeholder="App Key" value="<?php echo $row->app_key?>" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="row medium-font">
							<div class="col-sm-12"> 
								<div class="form-group">
									<label for="pass" class="col-sm-3 col-sm-offset-1 control-label">App Secret</label>
									<div class="col-sm-6">
										<input type="text" name="app_secret" id="app_secret" class="form-control medium-font-inupt" placeholder="App Secret"  value="<?php echo $row->app_secret?>" />
									</div>
								</div>
							</div>
						</div>	
					    <div class="row medium-font">
							<div class="col-sm-12"> 
								<div class="form-group">
									<label for="username" class="col-sm-3 col-sm-offset-1 control-label">User Name</label>
									<div class="col-sm-6">
										<input type="text" name="username" id="username" class="form-control medium-font-inupt"placeholder="Enter your user name" value="<?php echo $row->username?>"/>
									</div>
								</div>
							</div>
						</div>
						<div class="row medium-font">
							<div class="col-sm-12"> 
								<div class="form-group">
									<label for="pass" class="col-sm-3 col-sm-offset-1 control-label">Password</label>
									<div class="col-sm-6">
										<input type="text" name="password" id="password" class="form-control medium-font-inupt" placeholder="Enter your password" value="<?php echo $row->password?>" />
									</div>
								</div>
							</div>
						</div>
						<div class="row medium-font">
							<div class="col-sm-12"> 
								<div class="form-group">
									<label for="pass" class="col-sm-3 col-sm-offset-1 control-label">Status</label>
									<div class="col-sm-6">
										<select name="status" id="status" class="form-control">
											<option value="1" <?php if($row->status==1){ echo "selected";}?>>Active</option>
											<option value="0" <?php if($row->status==0){ echo "selected";}?>>Inactive</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-offset-4 col-sm-1"> 
								<input type="hidden" name="hid" value="<?php echo $row->id;?>" />
								<input type='submit' value="Save" name='submit_btn' class="btn btn-info btn-sm"/>
							</div>
							<div class="col-sm-6 pull-left"> 
								&nbsp;<span id="error" style="font-size:18px;font-family:comicsans-ms;color:red;"></span>
							</div>
						</div>
					</form>
				</div>
			</div><!--- / panel primary----->
		</div>
	</div><!-- row end--->
</div><!--/#content.col-md-10-->
