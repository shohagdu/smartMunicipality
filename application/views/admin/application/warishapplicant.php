<div id="content" class="col-lg-10 col-sm-10">
	<style type="text/css"> 
		#view{
			float: right;
			color: #F92121;
			display: block;
			font-size: 14px;
			font-weight: normal;
		}
	</style>
	<script type="text/javascript"> 
		$(document).ready(function() {
			$('#example').DataTable({
				//"order": true
				<?php if($_GET['napply']=='5'):?>
				"order": [[ 7, "desc" ]]
				<?php endif; ?>
				
				<?php if($_GET['napply']=='new'):?>
				"order": [[ 6, "desc" ]]
				<?php endif; ?>
			});
		} );
		$(function() {
			$("#dofb").datepicker({ dateFormat: 'yy-mm-dd' });
		});
		function filterTradelicense(gid){
			$("#showdata").empty().append('<p align="center" style="margin-top:20%"><img src="library/ajax-loader.gif" style=""></p>');
			var url="Applicant/warishapplicantReport?napply=5&opt="+gid;
			$("#showdata").load(url);
			if(gid==2){
				$("#view").html('সর্বশেষ দুই দিন');
			}
			else if(gid==7){
				$("#view").html('সর্বশেষ এক সপ্তাহ');
			}
			else if(gid == 30){
				$("#view").html('সর্বশেষ এক মাস');
			}
			else if(gid == 1000){
				$("#view").html('সকল সনদ');
			}
			else if(gid != ''){
				var dofb = document.getElementById('dofb').value;
				document.getElementById('view').innerHTML=dofb;
			}
		}
		function filterWarishNewApplication(gid){
			$("#showdata").empty().append('<p align="center" style="margin-top:20%"><img src="library/ajax-loader.gif" style=""></p>');
			var url="Applicant/warishapplicantReport?napply=new&opt="+gid;
			$("#showdata").load(url);
			if(gid==11){
				$("#view").html('Accept...');
			}
			else if(gid==22){
				$("#view").html('Payment...');
			}
		}
	</script>
	<div class="row"> 
		<div class="col-lg-12 col-sm-12 col-xs-12">
			<button class="btn btn-custom-head btn-block btn-sm " style="font-size:16px;margin-bottom:20px;"> <?php if($_GET['napply']=='5'){?> ওয়ারিশ  সনদ গ্রহনকারীগণের তালিকা <span id="view"></span><?php } else if($_GET['napply']=='new'){ ?>ওয়ারিশ আবেদনকারীগণের তালিকা  <?php } else{?>ওয়ারিশ আবেদনকারীগণের তালিকা<?php }?></button>
		</div>
		<?php if($_GET['napply']=='5'):?>
		<div class="col-lg-12 col-sm-12 col-xs-12" style="margin:10px 0px;">
			<div class="col-lg-6 col-sm-6 col-xs-6">
				<div class="col-lg-7 col-sm-7 col-xs-6">
					<input type="text" name="payment_date" value="<?php echo date('Y-m-d'); ?>" class="form-control" id="dofb" >
				</div>
				<div class="col-lg-5 col-sm-5 col-xs-6">
					<input type="button" value="Search" name='today'  onclick="filterTradelicense(dofb.value);" class="btn btn-info btn-sm" />
				</div>
			</div>
			<div class="col-lg-6 col-sm-6 col-xs-6">
				<button type="button" value="2" name='lastToday' onclick="filterTradelicense(this.value);" class='btn btn-success btn-sm'>সর্বশেষ দুই দিন</button>
				<button type="button" value="7" name='lastweek' onclick="filterTradelicense(this.value);" class='btn btn-primary btn-sm'>সর্বশেষ এক সপ্তাহ</button>
				<button type="button" value="30" name='lastweek' onclick="filterTradelicense(this.value);" class='btn btn-warning btn-sm'>সর্বশেষ এক মাস</button>
				<button type="button" value="1000" name="allData" onclick="filterTradelicense(this.value);" class='btn btn-danger btn-sm'>সকল সনদ</button>
			</div>
		</div>
		<?php endif;?>
		<?php if($_GET['napply']=='new'):?>
		<div class="col-lg-12 col-sm-12 col-xs-12" style="margin:10px 0px;">
			<div class="col-lg-8 col-sm-8 col-xs-8"></div>
			<div class="col-lg-4 col-sm-4 col-xs-4">
					<button type="button" value="11" name='acceptWaiting' onclick="filterWarishNewApplication(this.value);" class='btn btn-warning btn-sm'>Waiting for Accept</button>
					<button type="button" value="22" name="paymentConfirm" onclick="filterWarishNewApplication(this.value);" class='btn btn-success btn-sm'>Payment Confirmation </button>
				</div>
			</div>
		<?php endif;?>
	</div>
	<div style="padding:4px;width:100%;" id="showdata">
		<table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">

			<thead>
				<tr style="font-size: 13px !important; font-family: SolaimanLipi;font-style: normal;">
					<th>নাম</th>
					<th>ট্র্যাকিং নং</th>
					<?php if($_GET['napply']=='5'):?>
						<th>সনদ নং</th>
					<?php endif;?>
					<th>সরবরাহের ধরণ </th>
					<th>মোট ওয়ারিশ</th>
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
				foreach($query as $row):
			?>
				<tr style="font-size: 13px !important; font-family: SolaimanLipi;font-style: normal;">
					<td style="white-space:normal;">
						<a href="Update/warishInfo?id=<?php echo md5($row->id);?>" <?php $this->chk->acl('warishInfo'); ?>><?php echo $row->bname?></a>
					</td>
					<td>
						<a href="Update/warishInfo?id=<?php echo md5($row->id);?>" <?php $this->chk->acl('warishInfo'); ?>><?php echo @$row->trackid?></a>
					</td>
					<?php if($_GET['napply']=='5'):?>
						<td>
							<?php echo $row->sonodno;?>
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
						<a href="javascript: void(0);">
							<?php echo $this->applicant->tWarish($row->trackid)?></font>
						</a>
					</td>
					<td>
						<?php echo @$row->mobile?>
					</td>
					<td>
						<?php  echo $date=date("d M, Y",strtotime($row->insert_time));?>
					</td>
					<td>
						<?php if($this->applicant->exPrintwcc($row->trackid)=='Print'){?>
							<a href='Certificate/warishBangla?id=<?php echo sha1($row->trackid)?>'  class="btn btn-primary btn-sm" <?php $this->chk->acl('warishBangla'); ?> target='_blank'>বাংলা</a>
							<a href='Certificate/warishEnglish?id=<?php echo sha1($row->trackid)?>' <?php $this->chk->acl('warishEnglish'); ?> class="btn btn-info btn-sm" target='_blank'>ইংরেজী</a>
						<?php } else {?>
							<?php if( $row->type !=1){ ?>
								<a href='Genarate/warishGenarate?id=<?php echo sha1($row->id)?>' <?php $this->chk->acl('warishGenarate'); ?> class="btn btn-info btn-sm">
								<?php echo $this->applicant->exPrintwcc($row->trackid);?>
							    </a>
							<?php }else{?>
								  <?php if( $row->is_process ==1){ ?>
									<a href='Genarate/warishGenarate?id=<?php echo sha1($row->id)?>' <?php $this->chk->acl('warishGenarate'); ?> class="btn btn-danger btn-sm">
									  Unpaid
							        </a>
								  <?php }else if( $row->is_process ==2){ ?>
									<a href='InvoiceGenerate/warishGenaratePaid?id=<?php echo sha1($row->trackid)?>' <?php $this->chk->acl('warishGenarate'); ?> class="btn btn-success btn-sm">
									   Payment Confirmation
							        </a>
								  <?php }else{?>
									       <?php  if( $row->payment_method ==1){ ?>
												<a href='InvoiceGenerate/warishGenarate?id=<?php echo sha1($row->id)?>' <?php $this->chk->acl('warishGenarate'); ?> class="btn btn-warning btn-sm">
													Waiting for Accept
												</a>  (Bkash)
											<?php }else{?>
												<a href='Genarate/warishGenarate?id=<?php echo sha1($row->id)?>' <?php $this->chk->acl('warishGenarate'); ?> class="btn btn-info btn-sm">
												Generate
												</a> (Cash)
											<?php }?>
								  <?php }?>
							    <?php }?>

						<?php }?>
					</td>
					
					<?php if($_GET['napply']=='5'):?>
						<td>
							<a href='Money_receipt/warishMoneyReceipt?id=<?php echo sha1($row->trackid)?>' <?php $this->chk->acl('warishMoneyReceipt'); ?> class="btn btn-success btn-sm" target='_blank'>Print</a>
						</td>
					<?php endif;?>
				</tr>
			<?php 
				endforeach;
			?>	
			</tbody>
		</table>
	</div>
</div><!--/#content.col-md-0-->