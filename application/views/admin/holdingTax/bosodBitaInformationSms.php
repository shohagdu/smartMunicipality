 <?php 
if((string)$info['status'] === 'success'):?>
<style type="text/css"> 
	.custom-label-text{
		font-size: 18px;
		text-align: right;
	}
	.custom-info-text{
		font-size: 18px;
	}
</style>
<form action="Admin/holdingTaxSmsSendAction"  method="post" onsubmit="return validation();" id="validall" enctype="multipart/form-data" class="form-horizontal" >
<div id="informationShow">
		<div class="panel-group">
			<div class="panel panel-info">
				<div class="panel-heading"> <span style="font-size: 15px;"> এস এম এস পাঠান </div>
				<div class="panel-body">
				<p id="error" style="font-size:14px;font-family:comicsans-ms;color:red;text-align:center;font-weight:bold"></p>
				<div class="row">
					<div class="col-md-12">
						<h2> মোট : <?php echo $info['data'][0]->totalHoldingPerson;?> জন </h2>
				    </div>
					<div class="col-md-6">
						<textarea name="message" id="message" rows="5" class="form-control" placeholder="Message লিখুন "></textarea>
				    </div>	
				</div><br>
				<div class="row">
					<div class="col-md-2">
					<input type="hidden" name="fiscal_year" id="fiscal_year" value="<?php echo $fiscal_year; ?>" />
					<input type="hidden" name="rateSheet" id="rateSheet" value="<?php echo $rateSheet; ?>" />
					<input type='submit' value="Send SMS" name='submit_btn' class="btn btn-success btn-sm" style=""/>
					</div>
				</div>
				
	
				</div>
			</div>
		</div>

</div>
<?php endif;?>

</form>
