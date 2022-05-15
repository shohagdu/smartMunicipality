	$(document).ready(function() {
		alert();
		$('#holdingNoInfoFormInvoioce')
		.formValidation({
			message: 'আমরা এই অর্থ  বছর খুজে পাই নাই',
			icon: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				fiscal_year: {
					verbose: false,
					message: ' অর্থ  বছর নাই',
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
							alert(result);
				}
			});
		});
		
	});
	/*============ number test function start ===============*/
