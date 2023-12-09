<?php
class Database{
  private $server   = "localhost";   
  private $dbname   = "btth02_1";     
  private $username = "root";
  private $password = "";     

  public function getConnection(){
    $connect = mysqli_connect($this->server, $this->username, $this->password, $this->dbname);

    if (!$connect) {
        die("Lỗi kết nối :" . mysqli_connect_error());
    }

    return $connect;
  }
}
?>