<?php 
    session_start();
  function smarty_function_translation($params, &$smarty)
    {
        require 'dbConnect.php';
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
?>