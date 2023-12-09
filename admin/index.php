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
          <th>Name</th>
          <th>Description</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Category 1</td>
          <td>Description of Category 1</td>
        </tr>
        <tr>
          <td>2</td>
          <td>Category 2</td>
          <td>Description of Category 2</td>
        </tr>
        <!-- Add more rows as needed -->
      </tbody>
    </table>

    <h2>Table 2</h2>
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Category</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Post 1</td>
          <td>Category 1</td>
        </tr>
        <tr>
          <td>2</td>
          <td>Post 2</td>
          <td>Category 2</td>
        </tr>
        <!-- Add more rows as needed -->
      </tbody>
    </table>
  </main>
</body>
</html>
