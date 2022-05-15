<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-GB">
<head>
    <base href="<?php echo base_url();?>"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title> অর্থ বছর অনুযায়ী ট্যাক্স প্রদানকারীদের  তালিকা</title>
    <meta name="robots" content="index, nofollow" />
    <link rel="shortcut icon" href="img/favicon.ico"  type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="reports_css/reports.css"/>
    <link rel="stylesheet" type="text/css" href="reports_css/dailyreport.css"/>
    <link rel="stylesheet" media="screen,projection" type="text/css" href="datepicker/jquery-ui.css" />
    <script src="datepicker/jquery-1.9.1.js"></script>
    <script src="datepicker/jquery-ui.js"></script>
</head>
<body>
<div id="bar">
    <div class="barcon">
        <form action="" method="get">
            <p align="right"  style="width: 80%">
                <select name="fiscal_year" id="">
                    <option value="" > অর্থ বছর চিহ্নিত করুন</option>
                    <?php
                   
                    if(!empty($fiscal_year['data'])){
                        foreach($fiscal_year['data'] as $fiscalYearVal):
                            ?>
                            <option value="<?php echo $fiscalYearVal->id;?>" <?php echo ($fiscalYearVal->id==(!empty($_GET['fiscal_year'])?$_GET['fiscal_year']:''))? "selected" : '';?> ><?php echo $fiscalYearVal->full_year;?></option>
                        <?php endforeach; } ?>
                </select>
                <select name="rate_sheet_id" id="">
                    <option value="" >বসতভিটার ধরন চিহ্নিত করুন</option>
                    <?php
                    if(!empty($rate_sheet['data'])){
                        foreach($rate_sheet['data'] as $value):
                            ?>
                            <option value="<?php echo $value->rid;?>" <?php echo ($value->rid==(!empty($_GET['rate_sheet_id'])?$_GET['rate_sheet_id ']:''))? "selected" : '';?> > <?php echo $value->rate_sheet_label .' ('. $value->amount.' টাকা)';?> </option>
                        <?php endforeach; } ?>
                </select>


                <select name="wordno" id="wordno" class="form-control medium-font-inupt fixed_test_valid"  >
                    <option value="">ওয়ার্ড নং চিহ্নিত করূন</option>
                    <?php
                    for($i=1;$i<=50;$i++){
                        $selectedWard=($i==(!empty($_GET['wordno'])?$_GET['wordno']:''))? "selected" : '';
                        echo '<option value="'.$i.'"'. $selectedWard.'> ওয়ার্ড নং - '.$i.'</option>';
                    }
                    ?>
                </select>



                <input type="submit" value="Search" class="submit">

            </p>
        </form>
        <p align="right" style="float:left;width:20%;">
            <a href="javaScript:window.print();" title="Print"><img src="library/img/print.png"></a>
            <a href="<?php echo base_url('DailyReports/paidHoldingTaxCollectionReport') ?>" style="font-size:16px;font-weight: bold;margin-left:10px;color:white;" title="Reload">Refresh</a>

        </p>
    </div>
</div>
<?php
if(empty($_GET['fiscal_year'])) {
    $report=  ['status'=>'error','message'=>'অর্থ বছর চিহ্নিত করুন','data'=>''];
}else {
    if (!empty($_GET['fiscal_year'])) {
        $param['receive.fisyal_year_id'] = $_GET['fiscal_year'];
    }
    if (!empty($_GET['rate_sheet_id'])) {
        $param['receive.rate_sheet_id'] = $_GET['rate_sheet_id'];
    }

    if (!empty($_GET['wordno'])) {
        $param['info.wordno'] = $_GET['wordno'];
    }

    $param['receive.is_paid'] = 1;
    $param['receive.is_active'] = 1;
    $report = $this->setup->get_receive_holding_tax_info($param);

    // echo $this->db->last_query($report);exit;
}

?>
<div class="fix stracture wrapper1">
    <div class="fix top-side">
        <div class="fix heading">
            <h2><?php echo (!empty($all_data->full_name)?$all_data->full_name:'');?></h2>
            <h4><?php echo $all_data->gram;?></h4>
            <p class="highilight">
                <span>অর্থ বছর অনুযায়ী ট্যাক্স প্রদানকারীদের  তালিকা</span>
            </p>
            <span style="font-weight:bold;">
            <?php 
            echo "অর্থ বছর : ".$report['data'][0]->full_year;
            if (!empty($_GET['rate_sheet_id'])) {
            echo ", বসতভিটার ধরন : ".$report['data'][0]->rate_sheet_label;
            }
            if (!empty($_GET['wordno'])) {
            echo ", ওয়ার্ড নং : ".$report['data'][0]->wordno;
            }
            ?>
            </span>
            <h4 style="font-size: 15px;">প্রিন্ট তারিখঃ  <?php echo $this->web->banDate(date('d-m-Y'));?></h4>
        </div>
        <div class="fix footer">
            <table cellpadding="0" cellspacing="0" width="99%" style="margin: 0px auto; border-collapse:collapse;table-layout: auto;" >
                <thead>
                <tr>
                    <td class="tbl-head" style="width: 20px;">ক্রঃ</td>
                    <td class="tbl-head" style="width: 30px;">হোল্ডিং নং </td>
                    <td class="tbl-head" style="width: 100px;">নাম</td>
                    <td class="tbl-head" style="width: 100px;">পিতার নাম</td>
                    <td class="tbl-head" nowrap style="width: 50px;">ঠিকানা </td>
                    <td class="tbl-head"  style="width: 20px;">ওয়ার্ড নং  </td>
                    <td class="tbl-head" style="width: 50px;">মোবাইল</td>
                    <td class="tbl-head" style="width: 50px;"> টাকা   </td>
                    <td class="tbl-head" style="width: 50px;">তারিখ</td>
                </tr>
                </thead>
                <tbody>
                <?php if($report['status'] === 'error'):?>
                    <tr height='10'>
                        <td colspan="9"><p style="text-indent: 10px;"><?php echo $report['message']  ?></p></td>
                    </tr>
                <?php else:  $sl=1; foreach($report['data'] as $row):?>
                    <tr>
                        <td class="tbldis"><?php echo $sl++;?></td>
                        <td class="tbldis"><?php echo $row->holding_no;?></td>
                        <td class="tbldis"><?php echo $row->name;?></td>
                        <td class="tbldis "><?php echo $row->fathername;?></td>
                        <td class="tbldis"><?php echo $row->village;?></td>
                        <td class="tbldis"><?php echo $this->web->banDate($row->wordno)." নং";?></td>
                        <td class="tbldis "><?php echo $row->mobile_number;?></td>
                        <td class="tbldis"><?php echo $this->web->banDate($row->total);?></td>
                        <td class="tbldis"><?php echo !empty($row->payment_date)?$this->web->banDate(date('d-m-Y',strtotime($row->payment_date))):'';?></td>

                    </tr>
                <?php endforeach;endif;?>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>