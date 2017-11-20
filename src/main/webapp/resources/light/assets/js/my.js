
	function alter() {
		var len = document.getElementById("message").value.length;
		if (len > 400) {
			alert("Maximum 400 characters allow")
			document.getElementById("message").value = '';
			return false;
		} else {
			return true;
		}
	}
	function names() {
		var len = document.getElementById("newname").value.length;
		if (len > 50) {
			alert("Maximum 50 characters allow")
			document.getElementById("newname").value = '';
			return false;
		} else {
			return true;
		}
	}

	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10';
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

	$(document).ready(function() {
		$('#contact-form').submit(function(event) {
			$.ajax({
				url : "<c:url value='/message'/>",
				data : $("#contact-form").serialize(),
				type : "GET",
				success : function(response) {
					$('#newname').val('');
					$('#mobnumber').val('');
					$('#message').val('');
					alert("Thank You for Messeging")
				},
				error : function(xhr, status, error) {
					alert(xhr.responseText);
				}
			});
			return false;
		});
	});

	$(function() {
		$('#vertical-ticker').totemticker({
			row_height : '100px',
			next : '#ticker-next',
			previous : '#ticker-previous',
			stop : '#stop',
			start : '#start',
			mousestop : true,
		});
	});