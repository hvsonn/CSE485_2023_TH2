<?php 
class Category{
    private $matheloai;
    private $tentheloai;
    public function __construct($matheloai, $tentheloai){
        $this->matheloai = $matheloai;
        $this->tentheloai = $tentheloai;
    }
    public function getmatheloai(){
        return $this->matheloai;
    }
    public function gettentheloai(){
        return $this->tentheloai;
    }

    public function settheloai($tentheloai){
        $this->tentheloai = $tentheloai;
    }

    public function themtheloai(){
        include("model/connect.php");
        $tentheloai = (isset($_POST["tentheloai"])) ? $_POST["tentheloai"] : "";

        $sql = "INSERT INTO theloai (ten_tloai) VALUES ('" . $tentheloai ."')";
        $connect->query($sql);
        header("Location: ../admin/view/category.php");
    }

    public function suatheloai($id){
        try{
        include("class/Database.php");
        $tentheloai = (isset($_POST["tentheloai"])) ? $_POST["tentheloai"] : "";
            $sql = "UPDATE cms_category SET name='" . $tentheloai . "' WHERE id=" . $id;
        $connect->query($sql); 
        }
        catch(Exception $e){
            echo "". $e->getMessage() ."";
        }
    }
    public function xoatheloai($id){
        include("model/connect.php");

        $sql = "DELETE FROM theloai WHERE ma_tloai=" . $id;
        $connect->query($sql);
        header("Location: ../admin/view/category.php");
    }
}
?>