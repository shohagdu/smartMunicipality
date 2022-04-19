
<div id="content" class="col-lg-10 col-sm-10">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="col-sm-8"><div class="row"><span style="font-size: 18px; font-weight: bolder;">বসতভিটার ট্যাক্সের  বিল ক্যালেকশন</span> </div></div>
                    <div class="col-sm-4">
                        

                    </div>
                    <div class="clearfix"></div>

                </div>
                <div class="panel-body all-input-form">
                <form action="admin/searchHoldingTaxBillColleaction" id="holdingNoInfoFormBillId"><div class="clearfix"></div>
				<div class="row" style="margin-bottom: 20px;"> 
					<div class="form-group">
						<label class="col-sm-2" for="invoice" style="font-size: 15px; font-weight: bolder;text-align:right"> ইনভয়েস  হোল্ডিং নং  </label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="invoice" id="invoice" placeholder=" ইনভয়েস নং ইংরেজিতে"/>
						</div>
						<label class="col-sm-2" for="" style="font-size: 15px; font-weight: bolder;text-align:right"> হোল্ডিং নং</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="holding_no" id="holding_no" placeholder=" হোল্ডিং নং ইংরেজিতে"/>	
						</div>
						<div class="col-sm-1">
							<input type="submit" name="submitBtn" value="Search" class="btn btn-info">
						</div>

					</div>
				 </div>
				 <div class="row"> 
					<div class="col-sm-12 col-xs-12">
						<span id="error" style="font-size:24px; color:red;"></span>
					</div>
				</div>
				</form>
				<div class="row"> 
					<div class="col-lg-12 col-sm-12"> 
						<div id="informationShow"></div>
					</div>
				</div>
               
                </div>
            </div><!--  panel primary----->
        </div>
    </div><!-- row end--->
</div><!--/#content.col-md-0-->
<script src="all/custom_js/holdingTaxBillCollection_form.js" type="text/javascript"></script>


