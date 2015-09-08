<?php
/*require('/var/lib/php/Smarty/Smarty.class.php');*/
require('smarty/libs/Smarty.class.php');
require('php/dbConnect.php');

$smarty = new Smarty();
$smarty->display('smarty/templates/login/login.tpl');
?>