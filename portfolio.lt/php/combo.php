<?php 
    require 'dbConnect.php';
    session_start();
    if (isset($_GET['box']))
    {
        $box = $_GET['box'];
    }
    if (isset($_GET['section'])){
        $sectionname = $_GET['section'];
    }
    else if(isset($_POST['section'])){
        $sectionname = $_POST['section'];
    }
    if (isset($_GET['selectedLang'])){
        $lang = $_GET['selectedLang'];
    }
    else if(isset($_POST['selectedLang'])){
        $lang = $_POST['selectedLang'];
    }
    else{
        $lang = $_SESSION['lang'];
    }
    if($sectionname == 'skills'){
        if($box == 'skilllist'){
            $sql="SELECT * FROM skills WHERE lang ='$lang' ORDER BY skillid ASC";
        }
        else if($box == 'knowledge'){
            $sql="SELECT * FROM skillknowledge ORDER BY id ASC";
        }
    }
    else if ($sectionname == 'projects'){
        $sql="SELECT * FROM projects ORDER BY projectid ASC";
    }
    else if ($sectionname == 'experience'){
        $sql="SELECT * FROM experience ORDER BY experienceid ASC";
    }
    $result = mysqli_query($link, $sql) or die(mysql_error());
    $rows = array();
    while($row = (mysqli_fetch_assoc($result))) {
        $rows[] = array_map("utf8_encode", $row);
    }
    echo json_encode($rows);
?>