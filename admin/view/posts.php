<?php
    include_once("../class/Post.php");
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
  <title>Left Menu and Tables</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
    }

    aside {
      width: 200px;
      background-color: #333;
      color: #fff;
      padding: 20px;
    }

    main {
      flex: 1;
      padding: 20px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: left;
    }

    th {
      background-color: #4caf50;
      color: #fff;
    }
  </style>
</head>
<body>
  <aside>
    <h2>Menu</h2>
    <ul>
      <li><a href="#">Dashboard</a></li>
      <li><a href="#">Categories</a></li>
      <li><a href="#">Posts</a></li>
      <li><a href="#">Users</a></li>
    </ul>
  </aside>

  <main>
    <h1>Main Content</h1>

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
            </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </main>
</body>
</html>
