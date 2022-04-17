
<script type="text/javascript">
	$(function() {
			$("#payment_date").datepicker({ dateFormat: 'dd-mm-yy' });
		});
</script>
<div id="content" class="col-lg-10 col-sm-10">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="col-sm-8"><div class="row">বসতভিটার কর পরিশোধ  </div></div>
                    <div class="col-sm-4">
                      

                    </div>
                    <div class="clearfix"></div>

                </div>
                <div class="panel-body all-input-form">
                <form action="Admin/BosotbitaTaxPaymentAction" method="post" id="" class="form-horizontal" ><div class="clearfix"></div>
                       
                        <div class="form-group">
							<label class="control-label col-sm-2 col-xs-4" style="text-align:right;">নাম  </label>
							<div class="col-sm-4 col-xs-8">
								<input type="text" name="name" id="name" class="form-control" value="<?php echo $invoice_info->name?>" readonly>
							</div>
							<label class="control-label col-sm-2 col-xs-4" for="" style="text-align:right">পিতার নাম </label>
							<div class="col-sm-4 col-xs-8">
								<input type="text" name="fatherName" id="fatherName" class="form-control" value="<?php echo $invoice_info->fathername?>" readonly>
							</div>
							<div class="clearfix"></div>
						</div>
                        <div class="form-group">
							<label class="control-label col-sm-2 col-xs-4" style="text-align:right">ঠিকানা  </label>
							<div class="col-sm-4 col-xs-8">
								<input type="text" name="village" id="village" class="form-control" value="<?php echo $invoice_info->village."( ".$invoice_info->wordno." নং ওয়ার্ড )";?>" readonly>
							</div>
							<div class="visible-xs clearfix"></div>
							<label class="control-label col-sm-2 col-xs-4 " style="text-align:right">বসতভিটার ধরন - পেশা - করের শ্রেনী </label>
							<div class="col-sm-4 col-xs-8">
							<input type="text" name="village" id="village" class="form-control" value="<?php echo $invoice_info->rate_sheet_label?>" readonly>
							</div>
							<div class="clearfix"></div>
						</div>
                       
                        <div class="form-group">
							<label class="control-label col-sm-2 col-xs-4 " style="text-align:right">হোল্ডিং নং </label>
							<div class="col-sm-4 col-xs-8">
								<input type="text" name="holdingNumber" id="holdingNumber" class="form-control"  value="<?php echo $invoice_info->holding_no?>" readonly/>
							</div>
							<div class="visible-xs clearfix"></div>
							<label class="control-label col-sm-2 col-xs-4" style="text-align:right">মোবাইল নং  <span class="red-color">*</span></label>
							<div class="col-sm-4 col-xs-8">
								<input type="text" name="mobile_number" id="mobile_number" class="form-control"  value="<?php echo $invoice_info->mobile_number?>"  readonly/>
							</div>
							<div class="clearfix"></div>
						</div>
                       
						<div class="form-group">
							<label class="control-label col-sm-2 col-xs-4 " style="text-align:right"> টাকার পরিমাণ  </label>
							<div class="col-sm-4 col-xs-8">
								<input type="text" name="totalAmount" id="totalAmount" class="form-control"  value="<?php echo $invoice_info->total?>" readonly/>
							</div>
							<label class="control-label col-sm-2 col-xs-4 " style="text-align:right"> পেমেন্ট তারিখ   </label>
							<div class="col-sm-4 col-xs-8">
								<input type="text" name="payment_date" id="payment_date" class="form-control" value="<?php echo date('d-m-Y');?>"  />
							</div>
							
							<div class="clearfix"></div>
						</div>
                        <div class="form-group">
						
							<label class="control-label col-sm-10 col-xs-10 " style="text-align:right;"></label>
							<div class="col-sm-2 col-xs-2">
							    <input type="hidden" name="id" value="<?php  echo $invoice_info->paymentID; ?>">
								<input type="hidden" name="dagNo" id="dagNo" class="form-control"  value="<?php echo $invoice_info->dag_no?>"  />
								<input type="hidden" name="fiscalYear" id="fiscalYear" class="form-control"  value="<?php echo $invoice_info->fisyal_year_id?>"  />
								<input type="hidden" name="holdingType" id="holdingType" class="form-control"  value="<?php echo $invoice_info->rate_sheet_id?>"  />
								<input type="hidden" name="discount" id="discount" class="form-control"  value="<?php echo $invoice_info->discount?>"  />
								<input type="submit" name="submitBtn" value="Payment Confirm" class="btn btn-success btn-md">
								
							</div>
							<div class="clearfix"></div>
						</div>
                    </form>
                </div>
            </div><!--  panel primary----->
        </div>
    </div><!-- row end--->
</div><!--/#content.col-md-0-->
<script src="all/custom_js/holdingTax_form.js" type="text/javascript"></script>


