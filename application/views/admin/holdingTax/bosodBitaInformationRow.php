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
				<div class="panel-heading"> <span style="font-size: 15px;"> <?php echo !empty($info['data']->rate_sheet_label) ? $info['data']->rate_sheet_label : '';?>  এর  তথ্য</span></div>
				<div class="panel-body">
				<p id="error" style="font-size:14px;font-family:comicsans-ms;color:red;text-align:center;font-weight:bold"></p>
				<table class="table table-striped table-bordered dt-responsive nowrap">
					<tr>
						<th style="text-align:center;">হোল্ডিং নং </th>
						<th style="text-align:center;">নাম</th>
						<th style="text-align:center;">পিতার   নাম</th>
						<th style="text-align:center;"> গ্রাম </th>
						<th style="text-align:center;"> করের শ্রেনী </th>
						<th style="text-align:center;"> পরিমান </th>
						<th style="text-align:center;"> মোবাইল </th>
						<th style="text-align:center;"> # </th>
					</tr>
					<tr>
                                      
						<td><?php echo $info['data']->holding_no ?></td>
						<td><?php echo $info['data']->name ?></td>
						<td><?php echo $info['data']->fathername ?></td>
						<td><?php echo $info['data']->village ?></td>
						<td><?php echo $info['data']->rate_sheet_label ?></td>
						<td><?php echo ( $info['data']->total +  $info['data']->due_amount) - $info['data']->discount?></td>
						<td><?php echo $info['data']->mobile_number ?></td>
						<td>
						<a href="Money_receipt/bosodbitaTaxInvoice?id=<?php echo $info['data']->paymentID?>&holdingno=<?php echo $info['data']->holding_no?>" name="Inv" target="_blank" class="btn btn-info btn-xs" title="Invoice"><i class="glyphicon glyphicon-book "></i> Invoice </button>
						<?php if($info['data']->paymentType == 2) {?>
							<a href="Admin/holdingTaxPayment?id=<?php echo sha1($info['data']->paymentID)?>" name="Pay" style="margin-left:10px" class="btn btn-warning btn-xs" title="Payment"><i class="glyphicon glyphicon-usd "></i> Accept </button>
						<?php }else{?>
							<a href="Admin/holdingTaxPayment?id=<?php echo sha1($info['data']->paymentID)?>" name="Pay" style="margin-left:10px" class="btn btn-success btn-xs" title="Payment"><i class="glyphicon glyphicon-usd "></i> Payment </button>
						<?php }?>
							
						</td>
					</tr>
				
				</table>
	
	
				</div>
			</div>
		</div>

</div>
<?php endif;?>

</form>
