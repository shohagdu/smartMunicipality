$(document).ready(function(){
    get_tax_invoice_info_list();
});

// Holding tax  list
var token_table;

function get_tax_invoice_info_list() {
    let target = $("#asset").val();

    token_table = $('#tax_invoice_list_table').DataTable({
        scrollCollapse: true,
        autoWidth: false,
        responsive: true,
        serverSide: true,
        processing: true,
        "paging": true,
        "searching": { "regex": true },
        "pageLength": 10,

        ajax:{
            dataType: "JSON",
            type: "post",
            url: target + "Admin/get_tax_invoice_list_data",
            data: {
               // _token : user_csrf
            },
        },
        columns:[
             {
             	title: "SL",
                data: null,
                render: function(){
                    return token_table.page.info().start + token_table.column(0).nodes().length;
                }
            },
            {
            	title: "হোল্ডিং নং ",
                data: "holding_no"
            },
            {
            	title: "নাম",
                data: "invoice"
            },
            {
                title: "পিতার নাম",
                data: "invoice"
            },
            {
                title: "গ্রাম",
                data: "invoice"
            },
            {
                title: "করের শ্রেনী",
                data: "invoice"
            },
            {
            	title: "Action",
                data: null,
                render: function(data, type, row, meta){

                    return '<a href="'+target+'taxtPayment/'+data.id +')" class="btn btn-cyan btn-sm text-white"> <span class="mdi mdi-pencil-box-outline"></span>Payment </a>';

                }
            },
        ],
    });
}

// search holding tax report
function search_tax_holding_reports ()
{
    rate_sheet_id  = $("#rate_sheet_id").val();
    holding_no     = $("#holding_no").val();

    $("#tax_invoice_list_table").dataTable().fnSettings().ajax.data.rate_sheet_id = rate_sheet_id;
    $("#tax_invoice_list_table").dataTable().fnSettings().ajax.data.holding_no    = holding_no;

    token_table.ajax.reload();
}