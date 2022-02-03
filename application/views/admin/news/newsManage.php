	<script src="http://cdn.tinymce.com/4/tinymce.min.js"></script>
		<!--<script>tinymce.init({ selector:'textarea' });</script>--->
		<script>
		tinymce.init({ selector:'textarea',
		fontsize_formats: "8pt 10pt 12pt 14pt 18pt 24pt 36pt",
		toolbar: "undo redo | sizeselect | bold italic | fontselect |  fontsizeselect | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent"});

		</script>
	<script type="text/javascript"> 
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>
	<?php 
	extract($_GET);
	if($id==1) { echo "<script>alert('Update Successfully');</script>";  }
	?>
<div id="content" class="col-lg-10 col-sm-10">
	<style type="text/css"> 
		.textarea_style textarea{
			resize:none;
			font-size: 17px;
		}
	</style>
	<div class="row"> 
		<div class="col-lg-12 col-sm-12 col-xs-12">
			<button class="btn btn-custom-head btn-block btn-sm " style="font-size:16px;margin-bottom:20px;">নিউজ পাবলিশ
			</button>
		</div>
	</div>
	<div class="row textarea_style" style="margin-bottom: 10px;"> 
		<div class="col-sm-offset-1 col-sm-10" style="padding-bottom:50px;min-height:200px;border: 1px solid lightgray;border-radius: 0px 0px 5px 5px;">
			<form action="Admin/khobor_setting_submit" method="post" id="khobor_setup">
				<div class="col-sm-12" style="margin-top:30px;" >
					<div class="col-sm-3" style="text-align:center;padding-top:20px;"><b>নিউজ টাইটেল</b></div>
					<div class="col-sm-9">
						<input type="text" class="form-control" name="title" value="" id="title" required/>
					</div>
				</div>
				<div class="col-sm-12" style="margin-top:10px;">
					<div class="col-sm-3" style="text-align:center;padding-top:200px;"><b>নিউজ</b> </div>
					<div class="col-sm-9">
						<textarea name="msg" class="form-control" id=""  rows="8" ></textarea>
					</div>
				</div>
				<div class="col-sm-12" style="margin-top:10px;">
					<div class="col-sm-3" ></div>
					<div class="col-sm-9">
						<input type="submit" name="mehedi" class="btn btn-info btn-sm" value="submit"/>
					</div>
				</div>
			</form>
			<br />
			<table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">

				<thead>
					<tr>
						<th>No</th>
						<th>Title</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				
				<tbody>
				<?php 
					$status=array('1'=>'Enabel','0'=>'Disable');
					$i=1;
					foreach($all_khobor as $value){
				?>
					<tr>
						<td><?php echo $i++; ?></td>
						<td><?php echo $value->title; ?></td>
						<td style="color:<?php if($value->status==0){ echo "red"; } else { echo "green"; } ?>">
						<?php echo $status[$value->status]; ?>
						</td>
						
						<td>
							<form action="index.php/Admin/newsEdit" method="post"><button class="btn btn-info btn-sm" type="submit" name="uid" value="<?php echo $value->id; ?>">Edit</button></form>
						</td>
					</tr>
				<?php 
					}
				?>	
				</tbody>
			</table>	
			
		</div>
	</div>
</div><!--/#content.col-md-0-->