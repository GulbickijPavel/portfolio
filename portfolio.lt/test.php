<?php
require 'php/dbConnect.php';
require 'smarty/libs/Smarty.class.php';
session_start();
$_SESSION["lang"] = "lt";
 $lang = "lt";
    $sql = "SELECT  en, lt, ru FROM translations";
    $result = mysqli_query($link, $sql) or die(mysql_error());
    while($row = (mysqli_fetch_assoc($result)))
    {
        $translations[] = $row;
    }
   // print_r($translations);
    $num = "Education";
    foreach ($translations as $b) {
        if ($b['en'] == $num) {
            $lt = $b['lt'];
            $ru = $b['ru'];
            $output = $lt;
            //print_r($output);
           // return $output;
        }
    } 
    function smarty_function_translation($params, &$smarty)
    {
        require 'php/dbConnect.php';
        $sql = "SELECT  en, lt, ru FROM translations";
        $result = mysqli_query($link, $sql) or die(mysql_error());
        while($row = (mysqli_fetch_assoc($result)))
        {
            $translations[] = $row;
        }
        $en = $params['langEn'];
        $lang = $_SESSION['lang'];;
        foreach ($translations as $b) {
            if ($b['en'] == $en) {
                $output = $b[$lang];
                return $output;
            }
        } 
    }
    $smarty = new Smarty();
    $smarty->display('smarty/templates/test.tpl');
?>