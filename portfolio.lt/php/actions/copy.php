<?php
    $url = $_GET['temppath'];
    //$url = "C:\wamp\www\portfolio\portfolio.lt\images\avka.jpg";
   // $url = "https://antisocialthoughts.files.wordpress.com/2011/02/3dmode.png";
    $imagename = $_GET['imagename'];
    $img = "../../images/test.png";
    echo $url, $imagename, $img;
    copy($url, $img);
   /* $ch = curl_init($url);
    $fp = fopen($img, 'wb');
    curl_setopt($ch, CURLOPT_FILE, $fp);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_exec($ch);
    curl_close($ch);
    fclose($fp);*/
  //  header("Location: change.php?sectionname=skil");
?>