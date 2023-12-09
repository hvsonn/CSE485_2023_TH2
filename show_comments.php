<?php
    include_once("config/Database.php");
    $db = new Database();
    $conn = $db->getConnection();
    $commentQuery = "SELECT id, parent_id, comment, sender, date FROM comment WHERE parent_id = '0' ORDER BY id DESC";
    $commentsResult = mysqli_query($conn, $commentQuery) or die("database error:". mysqli_error($conn));
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Comments</title>
</head>
<body>

<div class="container mt-5">
    <?php while($comment = mysqli_fetch_assoc($commentsResult)): ?>
        <div class="card mb-3">
            <div class="card-header">By <b><?= $comment["sender"] ?></b> on <i><?= $comment["date"] ?></i></div>
            <div class="card-body">
                <p class="card-text"><?= $comment["comment"] ?></p>
            </div>
            <div class="card-footer text-right">
                <button type="button" class="btn btn-danger reply" id="<?= $comment["id"] ?>">Reply</button>
            </div>
        </div>
    <?php endwhile; ?>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
