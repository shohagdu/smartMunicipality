<style>
.BkashPaymentBtn{
	color:#222;
	font-family: inherit;
	font-weight:bold;
	font-size:20px;
}
.TotalFeeTxt{
    font-family: sans-serif;
    font-size: 26px;
}
</style>
<script src="all/custom_js/jquery-1.8.3.min.js"></script>
<script id = "myScript" src="https://scripts.sandbox.bka.sh/versions/1.2.0-beta/checkout/bKash-checkout-sandbox.js"></script>
<script type="text/javascript"> 
		// function validation(){
		// 	var total_fee = document.getElementById('total_fee').value;
		// 	var inv_id    = document.getElementById('inv_id').value;
		
		// 	if(total_fee=='' ){
		// 		document.getElementById('error').innerHTML='মোট ফি দিন  ';
		// 		return false;
		// 	}
		// 	else if(inv_id==''){
		// 		document.getElementById('error').innerHTML='আইডি দিন ';
		// 		return false;
		// 	}
		// 	else {
		// 		return true;
		// 	}
		// }
</script>


<div class="main_con"><!--Content Start-->
	<div class="row"><!--- row start--->
		<div class="col-md-9 left_con"><!-- left Content Start-->
			<div class="row">
				<div class="col-md-12"> 
					<div class="panel panel-primary">
						<div class="panel-heading" style="font-weight: bold; font-size: 15px;background:#642a5d;text-align:center;"> পেমেন্ট করুন </div>
						<div class="panel-body all-input-form">
							
							<!-- <form action="index.php/home/payment_action" method="post" onsubmit="return validation();" id="validall" enctype="multipart/form-data" class="form-horizontal">
							
							<?php if($invoice_data->type == 1) {?>
							<div class="row">
								   <p id="error" style="font-size:18px;font-family:comicsans-ms;color:red;text-align:center;"></p>
								   

									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-english" class="col-sm-3 control-label"> ট্রেড লাইসেন্স ফি  <span>*</span></label>
											<div class="col-sm-5">
												<input type="text" name="fee" id="fee" class="form-control" value="<?php echo $invoice_data->fee?>"  readonly  />
											</div>
										</div>
									</div>
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-bangla" class="col-sm-3 control-label"> বকেয়া টাকার পরিমান </label>
											<div class="col-sm-5">
												<input type="text" name="due_fee" id="due_fee" class="form-control" value="<?php echo $invoice_data->due_fee?>"  readonly />
											</div>
										</div>
									</div>
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-bangla" class="col-sm-3 control-label"> সাইনবোর্ড কর(বার্ষিক)  </label>
											<div class="col-sm-5">
												<input type="text" name="signboard_fee" id="signboard_fee" class="form-control" value="<?php echo $invoice_data->signboard_fee?>"  readonly />
											</div>
										</div>
									</div>
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-bangla" class="col-sm-3 control-label"> সুপারিশ সাপেক্ষে (ছাড়)  </label>
											<div class="col-sm-5">
												<input type="text" name="recommendation_fee" id="recommendation_fee" class="form-control"  value="<?php echo $invoice_data->recommendation_fee?>"  readonly />
											</div>
										</div>
									</div>
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-bangla" class="col-sm-3 control-label"> ভ্যাট(১৫%)  </label>
											<div class="col-sm-5">
												<input type="text" name="vat" id="vat" class="form-control"  value="<?php echo $invoice_data->vat?>"  readonly/>
											</div>
										</div>
									</div>
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-bangla" class="col-sm-3 control-label"> সাব চার্জ  </label>
											<div class="col-sm-5">
												<input type="text" name="sub_charge" id="sub_charge" class="form-control" value="<?php echo $invoice_data->sub_charge?>"  readonly />
											</div>
										</div>
									</div>
									<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-bangla" class="col-sm-3 control-label"> মোট পরিমান  </label>
											<div class="col-sm-5">
												<input type="text" name="total_fee" id="total_fee" class="form-control" value="<?php echo $invoice_data->total_fee?>"  readonly />
											</div>
										</div>
									</div>
								</div>
								<?php }else{ ?>
									<div class="row">
										<div class="col-sm-12"> 
											<div class="form-group">
												<label for="Name-english" class="col-sm-3 control-label">  ফি  <span>*</span></label>
												<div class="col-sm-5">
													<input type="text" name="fee" id="fee" class="form-control" value="<?php echo $invoice_data->fee?>"  readonly  />
												</div>
											</div>
										</div>
										<div class="col-sm-12"> 
										<div class="form-group">
											<label for="Name-bangla" class="col-sm-3 control-label"> মোট পরিমান  </label>
											<div class="col-sm-5">
												<input type="text" name="total_fee" id="total_fee" class="form-control" value="<?php echo $invoice_data->total_fee?>"  readonly />
											</div>
										</div>
									</div>
								    </div>
							    <?php }?>		
								
								<div class="row">
								<div class="col-sm-3 "> </div>
									<div class="col-sm-2 "> 
									    <input type="hidden" name="inv_id" id="inv_id" value="<?php echo $invoice_data->id?>" />
									    <input type="hidden" name="record_id" id="record_id" value="<?php echo $invoice_data->record_id?>" />
									    <input type="hidden" name="type" id="type" value="<?php echo $invoice_data->type?>" />
										<input type='submit' value="পেমেন্ট" name='submit_btn' class="btn btn-success btn-sm"/>
										
									</div>
								</div>
							</form> -->
							<h2 class="TotalFeeTxt"> মোট ফি :  <?php echo $invoice_data->total_fee?> </h2><br>

							<input type="hidden" name="total_fee" id="total_fee" value="<?php echo $invoice_data->total_fee?>" />
							<input type="hidden" name="inv_id" id="inv_id" value="<?php echo $invoice_data->id?>" />
							<input type="hidden" name="record_id" id="record_id" value="<?php echo $invoice_data->record_id?>" />
							<input type="hidden" name="type" id="type" value="<?php echo $invoice_data->type?>" />

							<button class="BkashPaymentBtn" id="bKash_button"><img style="width:40px; height:50px" src="all/assets/image/BKash-Icon-Logo.wine.svg" alt="Bkash Icon"> Pay With bKash</button> 
						</div>
					</div>
				</div>
			</div><!-- row end--->
		</div><!-- left Content End-->
<script type="text/javascript">
   var total_fee = document.getElementById('total_fee').value;
   var inv_id    = document.getElementById('inv_id').value;
   var record_id = document.getElementById('record_id').value;
   var type      = document.getElementById('type').value;

    var accessToken='';
    $(document).ready(function(){
        $.ajax({
            url: "Bkash/token",
            type: 'POST',
            contentType: 'application/json',
            success: function (data) {
                console.log('got data from token  ..');
				console.log(JSON.stringify(data));
				
                accessToken=JSON.stringify(data);
            },
			error: function(){
						console.log('error');
                        
            }
        });

		console.log(total_fee);

        var paymentConfig={
            createCheckoutURL:"Bkash/createpayment",
            executeCheckoutURL:"Bkash/executepayment",
        };

		
        var paymentRequest;
        paymentRequest = { amount: total_fee,intent:'Sonod Fee', inv_id:inv_id, record_id:record_id, type:type };
		console.log(JSON.stringify(paymentRequest));

        bKash.init({
            paymentMode: 'checkout',
            paymentRequest: paymentRequest,
            createRequest: function(request){
                console.log('=> createRequest (request) :: ');
                console.log(request);
                
                $.ajax({
                    url: paymentConfig.createCheckoutURL+"?amount="+paymentRequest.amount,
                    type:'GET',
                    contentType: 'application/json',
                    success: function(data) {
                        console.log('got data from create  ..');
                        console.log('data ::=>');
                        console.log(JSON.stringify(data));
                        
                        var obj = JSON.parse(data);
                        
                        if(data && obj.paymentID != null){
                            paymentID = obj.paymentID;
                            bKash.create().onSuccess(obj);
                        }
                        else {
							console.log('error');
                            bKash.create().onError();
                        }
                    },
                    error: function(){
						console.log('error');
                        bKash.create().onError();
                    }
                });
            },
            
            executeRequestOnAuthorization: function(){
                console.log('=> executeRequestOnAuthorization');
                $.ajax({
                    url: paymentConfig.executeCheckoutURL+"?paymentID="+paymentID,
                    type: 'GET',
                    contentType:'application/json',
                    success: function(data){
                        console.log('got data from execute  ..');
                        console.log('data ::=>');
                        console.log(JSON.stringify(data));
                        
                        data = JSON.parse(data);
                        if(data && data.paymentID != null){
                            alert('[SUCCESS] data : ' + JSON.stringify(data));
                            window.location.href = "Home/profile";                              
                        }
                        else {
                            bKash.execute().onError();
                        }
                    },
                    error: function(){
                        bKash.execute().onError();
                    }
                });
            }
        });
        
		console.log("Right after init ");
    
    });
	
	function callReconfigure(val){
        bKash.reconfigure(val);
    }

    function clickPayButton(){
        $("#bKash_button").trigger('click');
    }


</script>
<script src="all/custom_js/nagorick_form.js" type="text/javascript"></script>
