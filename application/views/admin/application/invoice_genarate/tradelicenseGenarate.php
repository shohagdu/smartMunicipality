<div id="content" class="col-lg-10 col-sm-10">
		<script type="text/javascript">
			$(document).ready(function(){
				$('#tradelicenseGenarate').submit(function() {
					$.post(
					"Genarate/tradelicenseGenarate_action",
					$("#tradelicenseGenarate").serialize(),
					function(data){
						if(data==1)
						{
							alert('Confirm page problem!!!!!!!!!!!!!!!!!!!');
						}
						if(data==3)
						{
							window.location='Confirm/tradelicenseConfirm';
						}
						else{alert(data);}
					});

					return false;
				});
				
				// for chackbox empty............
				
				$('#recom').click(function()
				{
					//If checkbox is checked then disable or enable input
					if ($(this).is(':checked'))
					{
						$("#sbfee").removeAttr("disabled"); 
						$("#sbfee").val('');
					}
					//If checkbox is unchecked then disable or enable input
					else
					{
						$("#sbfee").attr("disabled","disabled");
						$("#sbfee").val('0.00');
						$("#scharge").val('');
					}
				});
				// end chackbox empty function ............
				
				
				$('#suparish_chard').click(function()
				{
					//If checkbox is checked then disable or enable input
					if ($(this).is(':checked'))
					{
						$("#discount").removeAttr("disabled"); 
						$("#discount").val('');
					}
					//If checkbox is unchecked then disable or enable input
					else
					{
						var fee = $("#fee").val();
						var due = $("#due").val();
						
						if(fee==''){
							fee=0;
						}
						if(due==''){
							due=0;
						}
						var discount = $("#discount").val();
						
						$("#discount").attr("disabled","disabled");
						
						var sub_total = (parseInt(fee)+parseInt(due))
						var cal_dis = ((sub_total*15)/100);
						$("#vat").val(cal_dis);
						
						$("#discount").val('');
						$("#scharge").val('');
					}
				});
			});
		</script>
		<script>
			$(function() {
				$( "#issue_date" ).datepicker({ 
					changeMonth: true,
					changeYear: true,
					autoSize: true,
					dateFormat: 'dd-mm-yy' 
				});

				$( "#expire_date" ).datepicker({ 
					changeMonth: true,
					changeYear: true,
					autoSize: true,
					dateFormat: 'dd-mm-yy' 
				});

				$( "#payment_date" ).datepicker({ 
					changeMonth: true,
					changeYear: true,
					autoSize: true,
					dateFormat: 'dd-mm-yy' 
				});
			});

			$(function() {
				$( "#dofb" ).datepicker({
					changeMonth: true,
					changeYear: true,
					autoSize: true,
					dateFormat: 'dd-mm-yy'
				});
			});

		</script>
		<script type="text/javascript">
			// for sub_charge input box empty......
			function chack(){
				document.getElementById('scharge').value='';
			}	
		</script>
		<style type="text/css"> 
			.highlisht_font{
				font-size: 16px;
				font-style: normal;
			}
		</style>
		<!-- Content (Right Column)-->
		<?php 
			// some execution here..............
			$dQy=$this->db->select('due')->from('getlicense')->where('trackid',$row->trackid)->order_by('id','DESC')->limit(1)->get();
			$drow=$dQy->row();if(!strlen($drow->due)){$due='0.00';};
		?>`
		<div class="row">
			<div class="col-lg-12 col-sm-12">
				<h3 class="tit" style="margin-top:0px;margin-bottom: 20px;background:lightgray;padding:5px;text-align:center;">??????????????? ???????????????????????? ????????? ?????? ?????????????????? ????????????  </h3>
				<form name="tradeform" action="InvoiceGenerate/tradelicenseGenarate_action" method="post" id="" class="form-horizontal" role="form">
					<div class="form-group">
						<label class="control-label col-sm-2 highlisht_font" for="serial no"> ?????????  :</label>
						<div class="col-sm-4">
							<input type="text" class="form-control highlisht_font" name="bwname" id="bwname" value='<?php echo $row->bwname?>' readonly />
						</div>
						<div class="clearfix visible-xs"></div>
						<label class="control-label col-sm-2 highlisht_font" for="traking no">?????????????????? :</label>
						<div class="col-sm-4">
							<input type="text" class="form-control highlisht_font" name="mobile" id="mobile" value='<?php echo $row->mobile?>' readonly />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2 highlisht_font" for="institute name">???????????????????????????????????? ????????? :</label>
						<div class="col-sm-4">
							<input type="text" class="form-control highlisht_font" name="company" id="company" value='<?php echo $row->bcomname?>'  readonly />
						</div>
						<div class="clearfix visible-xs"></div>
						<label class="control-label col-sm-2 highlisht_font" for="business type">????????????????????? ????????? :</label>
						<div class="col-sm-4">
							<input type='text' class="form-control highlisht_font" value='<?php echo $row->btype?>' name='bype' readonly />
						</div>
						<div class="clearfix"></div>
					</div>
					
					<div class="form-group">
					    <label class="control-label col-sm-2 highlisht_font" for="Payment Type">Payment Type:</label>
						<div class="col-sm-4"> 
							<select name='acno' class="form-control highlisht_font">
								<?php 
									$Qy=$this->db->get("acinfo");
									foreach ($Qy->result() as $arow):
								?>
								<option value='<?php echo $arow->acno?>'><?php echo $arow->acname?>&nbsp;(&nbsp;<?php echo $arow->acno?>&nbsp;)</option>
								<?php endforeach;?>
							</select>
						</div>
						<label class="control-label col-sm-2 highlisht_font" style="color: red;" for="fee">??????????????? ???????????????????????? ?????? :</label>
						<div class="col-sm-4" style="color: red;">
							<input type='text' class="form-control highlisht_font" name='fee' id='fee' onkeyup="htmlData('Genarate/ctotal','&fee='+this.value+'&due='+due.value+'&ds='+discount.value);chack();" style="color: red;"/>
						</div>
						<div class="clearfix"></div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="signboard kor">??????????????????????????? ??????(?????????????????????) :</label>
						<div class="col-sm-1" style="margin-top: 10px;"> 
							<input type='checkbox' class="" name='sb_fee' id='recom' value='1' />&nbsp;?????????
						</div>
						<div class="col-sm-3">
							<input type='text' class="form-control highlisht_font" name='sbfee' value='0.00' id='sbfee' disabled onkeyup="chack();" />
						</div>
						<div class="clearfix visible-xs"></div>
						<label class="control-label col-sm-2" for="due taka">??????????????? ??????????????? ?????????????????? :</label>
						<div class="col-sm-4">
							<input type='text' class="form-control highlisht_font" name='due' id='due' onkeyup="htmlData('Genarate/ctotal','fee='+fee.value+'&due='+due.value+'&ds='+discount.value);chack();"/>
						</div>
						<div class="clearfix"></div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="recommendation">????????????????????? ???????????????????????? (?????????) :</label>
						<div class="col-sm-1" style="margin-top: 10px;">
							<input type='checkbox' name='recom' id='suparish_chard' value='1' onclick="this.form.discount.disabled = !this.checked;" />&nbsp;?????????
						</div>
						<div class="col-sm-3">
							<input type='text' class="form-control highlisht_font" name='discount' id='discount' onkeyup="htmlData('Genarate/ctotal','&fee='+fee.value+'&due='+due.value+'&sbf='+sbfee.value+'&ds='+this.value);chack();" disabled />
						</div>
						<div class="clearfix visible-xs"></div>
						<label class="control-label col-sm-2 highlisht_font" for="Vat">???????????????(??????%) :</label>
						<div class="col-sm-4" id="txtResult">
							<input type='text' class="form-control highlisht_font" name='vat' id='vat' readonly />
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2 col-sm-offset-6 highlisht_font" style="color: blue;" for="discount">????????? ??????????????? :</label>
						<div class="col-sm-4">
							<input type='text' class="form-control highlisht_font" name='scharge' id='scharge' onkeyup="slip('Genarate/intotal','&sub_charge='+this.value+'&vat='+vat.value+'&fee='+fee.value+'&ds='+discount.value+'&sbf='+sbfee.value+'&due='+due.value)"  style="color: blue;" />
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group" style="color: red;">
						<label class="control-label col-sm-2  col-sm-offset-6 highlisht_font" for="total">????????? ?????????????????? :</label>
						<div class="col-sm-4" id="slip">
							<input type='text' class="form-control highlisht_font" name='total' id='total' disabled  style="color: red;" />
						</div>
						<div class="clearfix"></div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2  col-sm-offset-6 highlisht_font" for="issu date">Invoice Date :</label>
						<div class="col-sm-4">
							<input type="text" class="form-control highlisht_font"  value="<?php echo date('d-m-Y');?>"  id="dofb" name="payment_date" />	
						</div>
						<div class="clearfix"></div>
					</div>
					
					<div class="form-group"> 
						<div class="col-sm-offset-8 col-sm-4">
							<input type="submit" name="save_tlicence" value="INVOICE GENERATE" class="btn btn-info btn-sm" id="save_tlicence"/>
							<input type="hidden" value="generate" name="gentype"/>
							<input type="hidden" name='id' value='<?php echo $row->id;?>'/>
							<input type="hidden" name='user_id' value='<?php echo $row->user_id;?>'/>
							<input type="hidden" name='type' value='1'/>
							<input type="hidden" name='trackid' value='<?php echo $row->trackid;?>'/>
						</div>
					</div>
				</form>
			</div><!--- /col-lg-12 col-sm-12-------->	
		</div> <!-- /row -->
	</div><!--/#content.col-md-10-->
<script type="text/javascript">
	<?php 
		$bookno=$this->web->get_book_no();
	?>
	var fee,sbfee,discount;
	document.getElementById("bno").value=<?php echo $bookno;?>;
</script>
