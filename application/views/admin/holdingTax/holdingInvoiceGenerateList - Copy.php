<!-- <link rel="stylesheet" href="all/assets/datatable/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="all/assets/datatable/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" href="all/assets/datatable/css/buttons.bootstrap4.min.css"> -->
<div id="content" class="col-lg-10 col-sm-10">
    <div>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="col-sm-8"><div class="row"> <?php echo (!empty($title)?$title:''); ?></div></div>
                <div class="col-sm-4">

                </div>
                <div class="clearfix"></div>

            </div>
            <div class="panel-body">
                <div class="table-responsive">
                <input type="hidden" name="asset" id="asset" value="<?php echo base_url();?>">
                        <div class="form-group">
                        <label class="col-sm-2" for="" style="font-size: 14px; font-weight: bolder;text-align:right"> বসতভিটার ধরন - করের শ্রেনী </label>
                        <div class="col-sm-3">
                            <select name="rate_sheet_id" id="rate_sheet_id" class="form-control" >
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
                            <label class="col-sm-2" for="" style="font-size: 14px; font-weight: bolder;text-align:right"> হোল্ডিং নং  </label>
                            <div class="col-sm-2"> <input type="text" name="holding_no" id="holding_no" class="form-control"/></div>
                            <div class="col-sm-2">
                            <button onclick="search_tax_holding_reports()" id="" class="btn btn-primary">Search</button>
                               <!-- <button class="btn btn-primary btn-md" type="button" ><i class="glyphicon glyphicon-search"></i> Search</button> -->
                            </div>

                        </div>
                    
                    <div id="show_result">
                        <table id="exampleNew" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th width="3%">ক্রঃ নং</th>
                                <th>হোল্ডিং নং </th>
                                <th nowrap="">নাম </th>
                                <th >পিতার নাম </th>
                                <th > গ্রাম </th>
                                <th > করের শ্রেনী </th>
                                <th >পরিমান </th>
                                <th >মোবাইল </th>
                                <th width="15%">#</th>
                            </tr>
                            </thead>
                            
                        </table>
                    </div>

                    <!-- <div class="table-responsive">
                        <table id="tax_invoice_list_table" class="table table-bordered table-striped">

                        </table>
                    </div>                 -->
                </div>
            </div>
        </div>
    </div>
</div><!--/#content.col-md-0-->

<!-- <script src="all/assets/datatable/js/jquery.dataTables.min.js"></script>
<script src="all/assets/datatable/js/dataTables.bootstrap4.min.js"></script>
<script src="all/assets/datatable/js/dataTables.responsive.min.js"></script>
<script src="all/assets/datatable/js/responsive.bootstrap4.min.js"></script> -->
<!-- <script src="all/custom_js/holdingTaxInvoice.js" type="text/javascript"></script> -->