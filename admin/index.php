<?php
include("menu.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/Index.css">
  <title>Left Menu and Tables</title>
</head>
<body>
  <main>
    <p class="head_main">Post Listing</p> 
    <div>
      <input  class="add" type="button" value="Add New">
    </div>
   
    <h2>Table 1</h2>
    <table>
      <thead>
        <tr>
          <th>Title</th>
          <th>Category </th>
          <th>User</th>
          <th> Status</th>
          <th>Created</th>
          <th>Updated</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td >What is HTML?</td>
          <td>Category 1</td>
          <td>Description of Category 1</td>
          <td></td>
          <td></td>
          <td></td>
          <td>
            <input class="edit" type="button" value="Edit">
          </td>
          <td>
          <input class="Delete" type="button" value="Delete">
          </td>
        </tr>
        
      </tbody>
    </table>

    
  </main>
</body>
</html>
