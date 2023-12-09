
<?php
    include("../class/Database.php");
    $sql = "SELECT * FROM cms_category";
    $data = $connect->query($sql);
    while ($row = $data->fetch_assoc()) {
      $list_category [] = $row;
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
    <h1>Thể Loại</h1>
    <table>
      <thead>
        <tr>
          <th>STT</th>
          <th>Tên thể loại</th>
        </tr>
      </thead>
      <tbody>
        <tr>  
        <?php foreach( $list_category as $category): ?>
                            <tr>
                                <th scope="row"><?= $category["id"] ?></th>
                                <td><?= $category["name"] ?></td>
                                <td>
                                    <a href="edit_category.php?id=<?= $category["id"] ?>" ><i class="fa-solid fa-pen-to-square"></i></a>
                                </td>
                                <td>
                                    <a href="../category.php?action=delete&id=<?= $category["id"] ?>"><i class="fa-solid fa-trash"></i></a>
                                </td>
                            </tr>
        <?php endforeach; ?>
        </tr>

      </tbody>
    </table>

      </tbody>
    </table>
  </main>
</body>
</html>
