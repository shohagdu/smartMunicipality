<script type="text/javascript"> 
function validation(){
			var fiscal_year = document.getElementById('fiscal_year').value;
			var rateSheet   = document.getElementById('rateSheet').value;
	
			if(fiscal_year==''){
				document.getElementById('error').innerHTML=' অনুগ্রহপূর্বক অর্থ বছর  দিন ';
				return false;
			}
 
			else if(rateSheet==''){
				document.getElementById('error').innerHTML=' অনুগ্রহপূর্বক বসতভিটার ধরন - করের শ্রেনী দিন ';
				return false;
			}
			else {
				return true;
			}
		}

</script>
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
<form action="Admin/holdingTaxGenerateAction"  method="post" onsubmit="return validation();" id="validall" enctype="multipart/form-data" class="form-horizontal" >
<div id="informationShow">
		<div class="panel-group">
			<div class="panel panel-info">
				<div class="panel-heading"> <span style="font-size: 15px;"> <?php echo !empty($info['data'][0]->rate_sheet_label) ? $info['data'][0]->rate_sheet_label : '';?>  এর  তথ্য</span></div>
				<div class="panel-body">
				<p id="error" style="font-size:14px;font-family:comicsans-ms;color:red;text-align:center;font-weight:bold"></p>
				<table class="table table-striped table-bordered dt-responsive nowrap">
					<tr>
						<th style="text-align:center;" >নং</th>
						<th style="text-align:center;">হোল্ডিং নং </th>
						<th style="text-align:center;">নাম</th>
						<th style="text-align:center;">পিতার   নাম</th>
						<th style="text-align:center;"> টাকার পরিমান </th>
						<th style="text-align:center;"> বকেয়া টাকা </th>
						<th style="text-align:center;"> মওকুফ </th>
						<th style="text-align:center;"> মোট টাকা </th>
					</tr>
					<?php $i=1; foreach($info['data'] as $item){ ?>
					<tr>
					    
						<td> <?php echo $i++; ?></td>
						<td> <?php echo $item->holding_no; ?> <input type="hidden" name="holding_no[]" id="holding_no_<?php echo $item->id;?>"  value="<?php echo $item->holding_no; ?>" /></td>
						<td> <?php echo $item->name; ?> 
							<input type="hidden" name="id[]" id="id_<?php echo $item->id;?>"  value="<?php echo $item->id; ?>" />
							<input type="hidden" name="user_id[]" id="user_id_<?php echo $item->id;?>"  value="<?php echo $item->userId; ?>" />
					    </td>
						<td> <?php echo $item->fathername; ?></td>
						<td> <input type="text" name="amount[]" id="amouunt_<?php echo $item->id;?>" onkeyup="HoldingTaxCaculation(<?php echo $item->id;?>)"  class="amount" value="<?php echo $item->amount; ?>" /></td>
						<td> <input type="text" name="due_amount[]" id="due_amount_<?php echo $item->id;?>" onkeyup="HoldingTaxCaculation(<?php echo $item->id;?>)" class="due_amount" value="<?php echo $item->due; ?>" /></td>
						<td> <input type="text" name="discount_amount[]" id="discount_amount_<?php echo $item->id;?>" onkeyup="HoldingTaxCaculation(<?php echo $item->id;?>)" class="discount_amount" value="0.0" /></td>
						<td> <input type="text" name="total_amount[]" id="total_amount_<?php echo $item->id;?>" class="total_amount" value="<?php echo ($item->amount + $item->due) ; ?>" readonly /></td>
					</tr>
					<?php }?>
				</table>
				<input type="hidden" name="fiscal_year" id="fiscal_year" value="<?php echo $fiscal_year; ?>" />
				<input type="hidden" name="rateSheet" id="rateSheet" value="<?php echo $rateSheet; ?>" />
				<input type='submit' value="সাবমিট করুন" name='submit_btn' class="btn btn-success btn-sm" style="float:right"/>
	
				</div>
			</div>
		</div>

</div>
<?php endif;?>

</form>
