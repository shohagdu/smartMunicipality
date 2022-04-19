	$(document).ready(function() {
		$('#holdingNoInfoFormBillId')
		.formValidation({
			message: 'আমরা এই  হোল্ডিং নং দিয়ে কোন ব্যক্তিকে খুজে পাই নাই  ',
			icon: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				holding_no: {
					message: 'আমরা এই হোল্ডিং নং দিয়ে কোন ব্যক্তিকে খুজে পাই নাই',
					validators: {
						notEmpty: {
							message: 'দয়া করে হোল্ডিং নং , ইনভয়েস নং লিখুন'
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

	/*============ number test function end===============*/