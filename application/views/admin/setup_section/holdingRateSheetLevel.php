<script src="all/custom_js/holdingRateSheetLabel_form.js" type="text/javascript"></script>
<div id="content" class="col-lg-10 col-sm-10">
	<div class="panel panel-default">
		<div class="panel-heading">নতুন বসতভিটার  ধরন যোগ করুন </div>
		<div class="panel-body">
			<label for="">
				<p class="hints-heading small-font red-color ">বসতভিটার ধরন যোগ করার সময় সতর্কতা অবল্বন করুন। আপনি পরে তা পরিবর্তন করতে পারবেন না।</p>
			</label>
			<div class="col-lg-12 col-sm-12">
				<form action="index.php/setup_section/holdingRateSheetLabel_action" method="post" id="holdingRateSheetLevelFormId" class="daily form-horizontal" role="form">
					<div class="form-group">
						<label class="control-label col-sm-2" for="holdingLicense Type">বসতভিটার  ধরন</label>
						<div class="col-sm-5"> 
							<input type="text" required class="form-control" name="holdingRateSheetLabel" id="holdingRateSheetLabel" placeholder="Ex: টিনসেড"/>
						</div>
						<div class="clearfix" style="margin-top:50px;"></div>
					</div>
					<div class="form-group"> 
						<div class="col-sm-offset-2 col-sm-1" style="position: relative; margin-left: 160px;">
							<div class="col-sm-12">
								<input type="submit" id="submitId" name="submitform" value="যোগ করুন" class="btn btn-info "/>
							</div>
						</div>
						<div class="col-sm-offset-1 col-sm-5">
							<div class="row">
								<div class="col-md-12" style="min-height:30px;display:none;" id="successMessage">
									<div class="alert alert-success alert-sm" >
										<strong id="successText"></strong>
									</div>
							   </div>
							   <div class="col-md-12" style="min-height:30px;display:none;" id="errorMessage">
									<div class="alert alert-danger alert-sm" >
										<strong id="errorText"></strong>
									</div>
							   </div>
						   </div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>	
	<!----- start list ------------->
	<div class="panel panel-default">
		<div class="panel-heading">বসতভিটার  ধরন এর তালিকা</div>
		<div class="panel-body">			
			<div class="col-lg-12 col-sm-12"> 
				<div style="padding:4px;width:100%;font-family:tahoma;" class="table-responsive">
					
					<table id="holdingRateSheetLabelTable" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
						<thead>
							<tr>  
								<th width="20">ক্র.নং</th>
								<th>বসতভিটার ধরন </th>
								<th>অবস্থা</th>
								<th>সর্বশেষ আপডেট</th>	    
								<th>অ্যকশন</th>	    
								
							</tr>
						</thead>
						<tbody>
							<?php 
								$nr1=1;
								if($holding_rate_sheet_lebel['status'] === 'success'):
									foreach ($holding_rate_sheet_lebel['data'] as $row):
										?>
										<tr>
											<td><?php echo $nr1++; ?></td>
											<td><?php echo $row->label ?></td>
											<td class="<?php echo $row->status; ?>"><?php echo $row->status; ?></td>
											<td><?php echo $row->created_date?></td>
											<td>
												<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" onclick="holdingRateSheetLabel('<?php echo md5($row->id); ?>')" data-target="#holdingRateSheetLabelWindow" ><i class="glyphicon glyphicon-pencil"></i></button>
											</td>
										</tr>
										<?php
									endforeach;
								endif;
							?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div><!-- /row box -->
</div><!--/#content.col-md-0-->

<div class="modal fade" id="holdingRateSheetLabelWindow" role="dialog">
    <div class="modal-dialog">
		<div class="modal-content" style="padding-bottom:50px;">
			<div class="col-sm-12" style="margin-top:30px;">
				<div class="col-sm-12">
					 <button type="button" class="btn btn-default btn-block" style="background:#eee;">Update Information</button>
				</div>
			</div>
			<form action="index.php/setup_section/update_holding_rate_sheet_label_action" method="post" id="updateHoldingRateSheetLabel" class="form-horizontal">
				<div class="col-sm-12" style="margin-top:20px;">
					<div class="form-group"> 
						<label class="col-sm-offset-1 col-sm-3">বসতভিটার  ধরন</label>
						<div class="col-sm-7">
							<input type="text" disabled class="form-control" name="holdingRateSheetLabel" id="holdingRateSheetLabelId" readonly />
						</div>
					</div>
				</div>
				
				<div class="col-sm-12" style="margin-top:5px;">
					<div class="form-group">
						<label class="col-sm-offset-1 col-sm-3">অবস্থা</label>
						<div class="col-sm-7">
							<select class="form-control" id="statusShow" name="status"  ></select>
						</div>
					</div>	
				</div>
				
				<div class="col-sm-12" style="margin-top:5px;">
					<div class="form-group">
						<label class="col-sm-4"></label>
						<div class="col-sm-3">
							<input type="hidden" name="hid" id="hid">
							<input type="submit" name="updateNow" value="Update" class="btn btn-success btn-sm">
							 <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
						</div>
						<div class="col-sm-5"> 
							<div style="display:none;" id="successMessageModal">
								<div class="alert alert-success alert-sm xs-font" >
									<strong id="successTextModal"></strong>
								</div>
						   </div>
						   <div style="display:none;" id="errorMessageModal">
								<div class="alert alert-danger alert-sm xs-font" >
									<strong id="errorTextModal"></strong>
								</div>
						   </div>
						   <div style="display:none;" id="warningMessageModal">
								<div class="alert alert-warning alert-sm xs-font" >
									<strong id="warningTextModal"></strong>
								</div>
						   </div>
						</div>
					</div>
				</div>	
			</form>
			<div class="modal-footer">
			</div>
		</div>
     </div>
 </div>