<?php
class Article{
    public $id;
    public $parent_id;
    public $comment;
    public $sender;
    public $date;

    public function __construct($id,$parent_id,$comment,$sender,$date){
        $this->id = $id;
        $this->parent_id = $parent_id;
        $this->comment = $comment;
        $this->sender = $sender;
        $this->date = $date;
    }
    public $postTable = "cms_posts";
    public $categoryTable = "cms_category";
    public $userTable = "cms_user";

    public function getArticles(){
        include_once("./config/Database.php");
        $db = new Database();
        $connect = $db->getConnection();
        $query = '';
        if($this->id) {		
            $query = " AND p.id ='".$this->id."'";
        }
        $sql = "
            SELECT p.id, p.title, p.message, p.category_id, u.first_name, 
            u.last_name, p.status, p.created, p.updated, c.name as category
            FROM ".$this->postTable." p
            LEFT JOIN ".$this->categoryTable." c ON c.id = p.category_id
            LEFT JOIN ".$this->userTable." u ON u.id = p.userid
            WHERE p.status ='published' $query ORDER BY p.id DESC";

            $data = $connect->query($sql);
            $list_articles = [];
            while ($row = $data->fetch_assoc()) {
                $list_articles[] = $row;
            }
        return $list_articles;	
    }
}
?>
