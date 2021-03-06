		<script type="text/javascript"> 
			$(document).ready(function() {
				$('#example').DataTable();
			} );
			$(function() {
				$("#dofb").datepicker({ dateFormat: 'yy-mm-dd' });
			});
		</script>
		
		<div style="padding:4px;width:100%;">
			<table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">

				<thead>
					<tr style="font-size: 13px !important; font-family: SolaimanLipi;font-style: normal;">
						<th>ছবি</th>
						<th>নাম</th>
						<th>ট্র্যাকিং নং</th>
						<?php if($_GET['napply']=='5'):?>
							<th>সনদ নং</th>
						<?php endif;?>
						<th>সরবরাহের ধরণ </th>
						<th>সেবার ধরন</th>
						<th>মোবাইল</th>
						
						<?php if($_GET['napply']=='new'):?>
							<th>আবেদনের তারিখ</th>
						<?php endif;?>
						<?php if($_GET['napply']=='5'):?>
							<th>জেনারেট তারিখ</th>
						<?php endif;?>
						<th>সার্টিফিকেট</th>
						<?php if($_GET['napply']=='5'):?>
							<th>মানি রিসিট</th>
						<?php endif;?>
					</tr>
				</thead>
				
				<tbody>
					<?php 
						//echo '<pre>';
						//print_r($query);
						foreach($query as $row):
					?>
					<tr style="font-size: 13px !important; font-family: SolaimanLipi;font-style: normal;">
						<td>
							<img src="<?php if($row->profile !=''): echo $row->profile; else: echo "default.jpg";endif;?>" height='40' width='45'/>
						</td>
						<td style="white-space:normal;">
							<a href="Update/otherServiceInfo?id=<?php echo md5($row->id);?>" target=""><?php echo $row->name?></a>
						</td>
						<td>
							<a href="Update/otherServiceInfo?id=<?php echo md5($row->id);?>" target=""><?php echo $row->trackid?></a>
						</td>
						<?php if($_GET['napply']=='5'):?>
							<td>
								<?php echo $row->sonodno?>
							</td>
						<?php endif;?>
						<td>
							<?php 
							if($row->delivery_type==1) $dtype="জরুরী"; 
							if($row->delivery_type==2) $dtype="অতি জরুরী"; 
							if($row->delivery_type==3) $dtype="সাধারন"; echo $dtype;
							?>
						</td>
						<td> 
							<?php echo $this->applicant->serviceNameShow($row->serviceId)->listName;?>
						</td>
						<td>
							<?php echo @$row->mobile?>
						</td>
						<td>
							<?php echo date('d M, Y',strtotime($row->insert_time))?>
						</td>
						<td>
							<?php if($this->applicant->printOtherService($row->trackid)=='Print'){?>
						
								<a href='Certificate/otherServiceBangla?id=<?php echo sha1($row->trackid)?>' target='_blank'  class="btn btn-primary btn-sm">বাংলা</a>
								<!--<a href='Certificate/otherServiceEnglish?id=<?php echo sha1($row->trackid)?>' target='_blank'  class="btn btn-info btn-sm">ইংরেজী</a>-->
							<?php } else {?>
								<?php if( $row->type !=1){ ?>
									<a href='Genarate/otherServiceGenarate?id=<?php echo sha1($row->id)?>' class="btn btn-info btn-sm" >
										<?php echo $this->applicant->printOtherService($row->trackid)?>
									</a>
									<?php }else{?>

										<?php if( $row->is_process ==1){ ?>
											<a href='Genarate/otherServiceGenarate?id=<?php echo sha1($row->id)?>' class="btn btn-danger btn-sm" >
													Unpaid
												</a>
											<?php }else if( $row->is_process ==2){ ?>
												<a href='InvoiceGenerate/otherServiceGenaratePaid?id=<?php echo sha1($row->trackid)?>' class="btn btn-success btn-sm" >
												Payment Confirmation
												</a>
											<?php }else{?>	
												<?php  if( $row->payment_method ==1){ ?>
													<a href='InvoiceGenerate/otherServiceGenarate?id=<?php echo sha1($row->id)?>' class="btn btn-warning btn-sm" >
													Waiting for Accept
													</a> (Bkash)
												<?php }else{?>
														<a href='Genarate/otherServiceGenarate?id=<?php echo sha1($row->id)?>' class="btn btn-info btn-sm" >
														Genarate
													</a>  (Cash)
												<?php }?>
											<?php }?>
										
									<?php }?>
							<?php }?>
						</td>
						
						<?php if($_GET['napply']=='5'):?>
							<td>
								<a href='Money_receipt/otherServiceMoneyReceipt?id=<?php echo sha1($row->trackid)?>' class="btn btn-success btn-sm" target='_blank'>Print</a>
							</td>
						<?php endif;?>
					</tr>
					<?php 
						endforeach;
					?>	
				</tbody>
			</table>
		</div>