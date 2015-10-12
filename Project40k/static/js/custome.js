$(function(){
	$('#btnSignIn').click(function(){
		
		$.ajax({
			url: '/signIn',
			data: $('form').serialize(),
			type: 'POST',
			success: function(response){
				document.location.href = '/game';
			},
			error: function(error){
				$('#error').text("Wrong username or password");

			}
		});
	});
});
