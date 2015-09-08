<?php
/*require('/var/lib/php/Smarty/Smarty.class.php');*/
require '../smarty/libs/Smarty.class.php';
require '../php/dbConnect.php';
require '../php/translations.php';
$smarty = new Smarty();
$sql = "SELECT * FROM translations ORDER BY translationid ASC";
$result = mysqli_query($link, $sql) or die(mysql_error());
while($row = (mysqli_fetch_assoc($result)))
{
    $list[] = $row;
}
$smarty->assign('translations', $list);
$smarty->display("../smarty/templates/settings/settings.tpl");
?>