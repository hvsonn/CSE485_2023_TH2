<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/Index.css">
  <script src="jquery-3.7.1.min.js"></script>
</head>

<div class="container">		
	<h2>Example: Comment System with Ajax, PHP & MySQL</h2>		
	<form src="comments.js" method="POST" id="commentForm">
		<div class="form-group">
			<input type="text" name="name" id="name" class="form-control" placeholder="Enter Name" required />
		</div>
		<div class="form-group">
			<textarea name="comment" id="comment" class="form-control" placeholder="Enter Comment" rows="5" required></textarea>
		</div>
		<span id="message"></span>
		<div class="form-group">
			<input type="hidden" name="commentId" id="commentId" value="0" />
			<input type="submit" name="submit" id="submit" class="btn btn-primary" value="Post Comment" />
		</div>
	</form>		
	<div id="showComments"></div>   
</div>	
<?php include_once("show_comments.php"); ?>
<script>
	$(document).ready(function(){
    $('#commentForm').on('submit', function(event){
        event.preventDefault();
        var formData = $(this).serialize();
        
        $.ajax({
            url: "comments.php",
            method: "POST",
            data: formData,
            dataType: "JSON",
            success:function(response) {
                if(!response.error) {
                    $('#commentForm')[0].reset();
                    $('#commentId').val('0');
                    $('#message').html(response.message);
                    showComments();
                } else if(response.error){
                    $('#message').html(response.message);
                }
            }
        })
    });

    function showComments() {
        $.ajax({
            url:"show_comments.php",
            method:"POST",
            success:function(response) {
                $('#showComments').html(response);
            }
        })
    }
});
</script>
