<?php
class Article{
    public $id;
    public $title;
    public $message;
    public $category_id;
    public $userid;
    public $status;
    public $created;
    public $updated;
    public function __construct($id,$title,$message,$category_id,$userid,$status,$created,$updated,$hinhanh){
        $this->id=$id;
        $this->title=$title;
        $this->message=$message;
        $this->category_id=$category_id;
        $this->userid=$userid;
        $this->status=$status;
        $this->created=$created;
        $this->updated=$updated;
    }
}
?>