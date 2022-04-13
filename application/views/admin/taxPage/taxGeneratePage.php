<div class="row"> 
	<div class="col-sm-12"> 
		<div class="form-group">
			<label class="control-label col-sm-11 col-xs-8" style="text-decoration: underline;">
				<h3 style="font-size: 20px;color: gray;margin-bottom: 20px;">বসতভিটার কর আদায়:</h3>
				
			</label>
			<label for="" class="col-sm-1 col-xs-4">
				<button type="button" class="btn btn-danger btn-sm pull-right" style="position: relative; top: 15px;" onclick="refreshPage();">
				  <span class="glyphicon glyphicon-refresh"></span> Refresh
				</button>
			</label>
		</div>
	</div>
</div>
<style type="text/css"> 
	.help-block{
		text-align: right;
	}
</style>
<form action="admin/searchHoldingTaxGenerate" id="holdingNoInfoFormId">
	<div class="row" style="margin-bottom: 20px;"> 
		<div class="form-group">
			<label class="col-sm-2" for="Fiscal year" style="font-size: 20px; font-weight: bolder;text-align:right"> অর্থ বছর </label>
			<div class="col-sm-2">
				<select class="form-control" name="fiscal_year" id="fiscal_year">
					<option value=""> Select</option> 
					<?php foreach($fiscal_year['data'] as $item){?>
						<option value="<?php echo $item->id?> " <?php if($item->is_current ==1){ echo "selected";}?>> <?php echo $item->full_year?></option>
					<?php }?>
				</select>
			</div>
			<label class="col-sm-3" for="" style="font-size: 20px; font-weight: bolder;text-align:right"> বসতভিটার ধরন - করের শ্রেনী </label>
			<div class="col-sm-3">
				<select name="rateSheet" id="rateSheet" class="form-control" >
					<option value="">চিহ্নিত করুন</option>
					<?php 
						if($rate_sheet['status'] === 'success'):
							foreach ($rate_sheet['data'] as $rate):
								?>
								<option value="<?php echo $rate->rid;?>"> <?php echo $rate->rate_sheet_label .' ('. $rate->amount.' টাকা)';?> </option>
								<?php 
							endforeach;
						endif;
					?>
				</select>	
			</div>
			<div class="col-sm-1">
				<input type="submit" name="submitBtn" value="Generate" class="btn btn-info">
			</div>

		</div>
	</div>
</form>
<div class="row"> 
	<div class="col-sm-12 col-xs-12">
		<span id="error" style="font-size:24px; color:red;"></span>
	</div>
</div>
<div class="row"> 
	
	<div class="col-lg-12 col-sm-12"> 
		<div id="informationShow"></div>
	</div>
</div>
<script src="all/custom_js/holdingTaxGenerate_form.js" type="text/javascript"></script>