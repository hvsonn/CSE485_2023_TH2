function showComments() {
	$.ajax({
		url:"show_comments.php",
		method:"POST",
		success:function(response) {
			$('#showComments').html(response);
		}
	})
}
