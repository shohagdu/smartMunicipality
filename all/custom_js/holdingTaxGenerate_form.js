	$(document).ready(function() {
		$('#holdingNoInfoFormId')
		.formValidation({
			message: 'আমরা এই অর্থ বছর দিয়ে কোন খুজে পাই নাই  ',
			icon: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				fiscal_year: {
					verbose: false,
					message: 'আমরা অর্থ বছর এই  দিয়ে কোন  খুজে পাই নাই',
					validators: {
						notEmpty: {
							message: 'দয়া করে অর্থ বছর লিখুন'
						},
						remote: {
							message: 'Oops!!! Already  exist',
							url: 'index.php/validation/check_exists_fiscal_year?tbl='+"payment_log_bosotbita",
							type: 'POST'
						}
					}
				}
			}
		})
		.on('success.form.fv', function(e) {
			// Prevent form submission
			e.preventDefault();

			var $form = $(e.target),
				fv    = $form.data('formValidation');
			// Use Ajax to submit form data
			var u=$form.attr('action');
			var u=$form.serialize();
			$.ajax({
				url: $form.attr('action'),
				type: 'POST',
				data: $form.serialize(),
				//beforeSend:function() { alert('sending----'); },
				success: function(result) {
					var obj = JSON.parse(result);

					console.log(obj);
		 
					if(obj.status == 'error'){
						document.getElementById('informationShow').innerHTML='';
						document.getElementById('error').innerHTML="আপনার দাগ নং টি সঠিক নয়";
						var rateSheet = document.getElementById('rateSheet').value;
						$('#oldClientData').trigger('reset');
						document.getElementById('rateSheet').value=rateSheet;
					}else if(obj.status == 'success'){
						document.getElementById('error').innerHTML="";
						document.getElementById('informationShow').innerHTML=obj.data;
						//$('#successMessageModal').fadeIn('slow').delay(1000).fadeOut('slow');
						//$('#informationShow').text(obj.data);
					}else{
						alert(result);
					}
				}
			});
		});
		
	});
	/*============ number test function start ===============*/
	function numtest(){
		return event.charCode >= 48 && event.charCode <= 57;
	}
	function checkaccnumber(evt){
		evt = (evt) ? evt : window.event;
		var charCode = (evt.which) ? evt.which : evt.keyCode;
		if (charCode > 31 && (charCode < 48 || charCode > 57)){
			return false;
		}
		return true;
	}
	function refreshPage() {
		location.reload();
	}

	function HoldingTaxCaculation(row_id){
		var amount     = isNaN($('#amouunt_'+row_id).val()) ? 0 : parseFloat($('#amouunt_'+row_id).val());
		var due_amount = isNaN($('#due_amount_'+row_id).val()) ? 0 : parseFloat($('#due_amount_'+row_id).val());
	    var discount   = isNaN($('#discount_amount_'+row_id).val()) ? 0 : parseFloat($('#discount_amount_'+row_id).val());

 		var NetTotal = parseFloat(amount-discount)+due_amount;
 		parseFloat($('#total_amount_'+row_id).val(isNaN(NetTotal) ? 0:  NetTotal));
	}


	/*============ number test function end===============*/