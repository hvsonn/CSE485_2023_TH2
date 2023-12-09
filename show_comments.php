<?php
    include_once("config/Database.php");
    $db = new Database();
    $conn = $db->getConnection();
    $commentQuery = "SELECT id, parent_id, comment, sender, date FROM comment WHERE parent_id = '0' ORDER BY id DESC";
    $commentsResult = mysqli_query($conn, $commentQuery) or die("database error:". mysqli_error($conn));
    $commentHTML = '';
    while($comment = mysqli_fetch_assoc($commentsResult)){
        $commentHTML .= '
            <div class="panel panel-primary">
            <div class="panel-heading">By <b>'.$comment["sender"].'</b> on <i>'.$comment["date"].'</i></div>
            <div class="panel-body">'.$comment["comment"].'</div>
            <div class="panel-footer" align="right"><button type="button" class="btn btn-primary reply" id="'.$comment["id"].'">Reply</button></div>
            </div> ';
        // $commentHTML .= $comment["id"];
    }
    echo $commentHTML;
?>
