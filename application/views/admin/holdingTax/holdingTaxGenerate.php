
<div id="content" class="col-lg-10 col-sm-10">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="col-sm-8"><div class="row">বসতভিটার  বিল জেনারেট </div></div>
                    <div class="col-sm-4">
                        <a href="VgdController" class="btn-success btn-xs pull-right"><i class="glyphicon glyphicon-list-alt"></i> বসতভিটার  বিল জেনারেট    তালিকা
                        </a>

                    </div>
                    <div class="clearfix"></div>

                </div>
                <div class="panel-body all-input-form">
                <form action="admin/searchHoldingTaxGenerate" id="holdingNoInfoFormId"><div class="clearfix"></div>
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
						<label class="col-sm-3" for="" style="font-size: 20px; font-weight: bolder;"> বসতভিটার ধরন - করের শ্রেনী </label>
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
                </form>
                </div>
            </div><!--  panel primary----->
        </div>
    </div><!-- row end--->
</div><!--/#content.col-md-0-->
<script src="all/custom_js/holdingTaxGenerate_form.js" type="text/javascript"></script>


