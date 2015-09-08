<?php
$link = mysqli_connect("localhost", "root", "") or die("Could not connect: " . mysql_error());
mysqli_set_charset( $link,'utf8');
mysqli_select_db( $link, 'Portfolio');
?>