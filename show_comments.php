<?php
    include_once("db_connect.php");
    $commentQuery = "SELECT id, parent_id, comment, sender, date FROM
        comment WHERE parent_id = '0' ORDER BY id DESC";
    $stmt = $conn->prepare($commentQuery);
    $stmt->execute();
    $arrRes = $stmt->fetchAll();
    // $commentsResult = mysqli_query($conn, $commentQuery) or
    //         die("database error:". mysqli_error($conn));
    $commentHTML = '';
    foreach($arrRes as $row){
        $commentHTML .= '
            <div class="panel panel-primary">
            <div class="panel-heading">By
            <b>'.$row["sender"].'</b> on
            <i>'.$row["date"].'</i></div>
            <div class="panel-body">'.$row["comment"].'</div>
            <div class="panel-footer" align="right"><button
            type="button" class="btn btn-primary reply"
            id="'.$row["id"].'">Reply</button></div>
            </div> ';
        // $commentHTML .= getCommentReply($conn, $comment["id"]);
    }
    echo $commentHTML;


?>