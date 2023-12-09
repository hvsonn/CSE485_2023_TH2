<?php
$server   = "localhost";   
$dbname   = "CMS";     
$username = "root";
$password = "";     

$connect = mysqli_connect($server, $username, $password, $dbname);

if (!$connect) {
    die("Lỗi kết nối :" . mysqli_connect_error());
}
<<<<<<< HEAD
?>
=======
?>
>>>>>>> 9b74956096459f96d36d5edb9f5fbe08fdec1702
