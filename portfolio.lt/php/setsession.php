<?php
    session_start();
    if(isset($_GET['lang']))
    {
         $lang = $_GET['lang'];
    }
    else{
        $lang = "lt";
    }
   $_SESSION["lang"] = $lang;
    header("Location: ../index.php");
?>