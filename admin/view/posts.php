<?php
    include_once("../class/Database.php");
    $sql = "SELECT * FROM cms_posts";
    $data = $connect->query($sql);
    $list_posts = [];
    while ($row = $data->fetch_assoc()) {
        $list_posts[] = $row;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/Index.css">
  <title>Posts</title>
</head>
<body>
  <?php include_once("menu.php") ?>
  <main>
    <p class="head_main">Post Listing</p> 
      <a href="add_post.php" class="btn btn-success">Thêm mới</a>
    <h2>Table 1</h2>
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Message</th>
          <th>Category ID</th>
          <th>User ID</th>
          <th>Status</th>
          <th>Created</th>
          <th>Updated</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($list_posts as $post):  ?>
            <tr>
                <td><?= $post["id"] ?></td>
                <td><?= $post["title"] ?></td>
                <td><?= $post["message"] ?></td>
                <td><?= $post["category_id"] ?></td>
                <td><?= $post["userid"] ?></td>
                <td><?= $post["status"] ?></td>
                <td><?= $post["created"] ?></td>
                <td><?= $post["updated"] ?></td>
                <td>
                  <a class="edit" type="button" href="edit_post.php?id=<?= $post["id"] ?>">Edit</a>
                </td>
                <td>
                  <a class="Delete" type="button" href="../posts.php?action=delete&id=<?= $post["id"] ?>">Delete</a>
                </td>
            </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </main>
</body>
</html>
