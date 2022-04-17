<div id="content" class="col-lg-10 col-sm-10">
    <div>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="col-sm-8"><div class="row"> <?php echo (!empty($title)?$title:''); ?></div></div>
                <div class="col-sm-4">
                    <!-- <button type="button"  data-toggle="modal" onclick="addFoodReceiveInfo()" data-target="#exampleModal" class="btn btn-success btn-xs pull-right"><i class="glyphicon glyphicon-plus"></i> নতুন যোগ করুন </button> -->

                </div>
                <div class="clearfix"></div>

            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <form action="#" method="post"  id="searchingReceivedFoodForm"  class="form-horizontal" >
                        <div class="form-group">
                        <label class="col-sm-3" for="" style="font-size: 14px; font-weight: bolder;text-align:right"> বসতভিটার ধরন - করের শ্রেনী </label>
                            <div class="col-sm-4">
                            <select name="rateSheet" id="rateSheet" class="form-control" >
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
                            <div class="col-sm-4">
                               <!-- <button class="btn btn-primary btn-md" onclick="searchingReceivedFood()" type="button" ><i class="glyphicon glyphicon-search"></i> Search</button> -->
                               <button class="btn btn-primary btn-md" type="button" ><i class="glyphicon glyphicon-search"></i> Search</button>
                            </div>

                        </div>
                    </form>
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
                                <th width="16%">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $i=1;
                            // echo "<pre>";
                            // print_r($invoice_list);exit;

                            if($invoice_list !=''){
                                foreach ($invoice_list as $row){
                                    ?>
                                    <tr>
                                        <td><?php echo $i++; ?></td>
                                        <td><?php echo $row->holding_no ?></td>
                                        <td><?php echo $row->name ?></td>
                                        <td><?php echo $row->fathername ?></td>
                                        <td><?php echo $row->village ?></td>
                                        <td><?php echo $row->rate_sheet_label ?></td>
                                        <td><?php echo $row->amount ?></td>
                                        <td><?php echo $row->mobile_number ?></td>
                                       
                                        <td>
                                        <a href="Money_receipt/bosodbitaTaxInvoice?id=<?php echo $row->paymentID?>&holdingno=<?php echo $row->holding_no?>" name="Inv" target="_blank" class="btn btn-info btn-xs" title="Invoice"><i class="glyphicon glyphicon-book "></i> Invoice </button>
                                        <a href="Admin/holdingTaxPayment?id=<?php echo sha1($row->paymentID)?>" name="Pay" style="margin-left:10px" class="btn btn-success btn-xs" title="Payment"><i class="glyphicon glyphicon-usd "></i> Payment </button>
                                           
                                            
                                        </td>
                                    </tr>
                                    <?php
                                }
                            }
                            ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!--/#content.col-md-0-->

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col-sm-8">
                    <h5 class="modal-title" id="exampleModalLabel"><?php echo (!empty($add_title)?$add_title:'') ?></h5>
                </div>
                <div class="col-sm-4">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="clearfix"></div>
            </div>

            <form action="#" method="post"  id="foodCollectionForm" enctype="multipart/form-data" >
                <div class="modal-body">
                    <div class="form-group">
                        <label for="name">আবেদনকারীর নাম</label>
                        <input type="text" class="form-control" id="foodApplicantNameLabel" name="foodApplicantNameLabel"  placeholder="আবেদনকারীর নাম">
                        <input type="hidden" class="form-control" id="foodApplicantName" name="foodApplicantName"  >
                    </div>
                    <div class="form-group">
                        <label for="address">তারিখ</label>
                        <input type='text' name='collectionDt' id='collectionDt' class="form-control medium-font-inupt fixed_test_valid dateFormatDate" autocomplete="off" value="<?php date('d-m-Y') ?>" placeholder="কার্ড ইস্যুর তারিখ Exp: 01-01-1980" />
                    </div>

                    <div class="form-group" id="statuDiv">
                        <label for="status">স্ট্যাটাস</label>
                        <select class="form-control" id="status" name="status" >
                            <option value="1">Active</option>
                            <option value="2">Inactive</option>
                        </select>
                    </div>


                </div>
                <div class="modal-footer">
                    <input type="hidden" name="type" value="1">
                    <input type="hidden" name="submit_info" value="yes">
                    <input type="hidden" name="updateId" id="updateId">
                    <button type="button" onclick="updateFoodCollectionInfo()" class="btn btn-primary"><i class="glyphicon glyphicon-ok-circle"></i> <span id="saveBtnLevel"></span></button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Close</button>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <div class="output_error"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </form>
        </div>
    </div>
</div>
<style>
    .ui-autocomplete { z-index:2147483647; }
</style>


