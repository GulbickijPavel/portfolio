<?php
/*require('/var/lib/php/Smarty/Smarty.class.php');*/
require('smarty/libs/Smarty.class.php');
require 'php/dbConnect.php';
session_start();
if (isset($_SESSION['lang']))
{
    $lang = $_SESSION['lang'];
}
else{
    $lang = "lt";
}
date_default_timezone_set("Europe/Vilnius");
$today = date('Y-m-d H:i:s'); 
$sql = "SELECT * FROM skills WHERE lang = '$lang'";
$result = mysqli_query($link, $sql) or die(mysql_error());
while($row = (mysqli_fetch_assoc($result)))
{
    $list[] = $row;
}
$sql = "SELECT  en, lt, ru FROM translations";
$result = mysqli_query($link, $sql) or die(mysql_error());
while($row = (mysqli_fetch_assoc($result)))
{
    $translations[] = $row;
}
$sql = "SELECT * FROM experience ORDER BY experienceid ASC";
$result = mysqli_query($link, $sql) or die(mysql_error());
while($row = (mysqli_fetch_assoc($result)))
{
    $experience[] = $row;
}
$query = "SELECT * FROM projects ORDER BY projectid ASC";
$result = mysqli_query($link,$query) or die(mysql_error());
while($row = (mysqli_fetch_assoc($result)))
{
    $projectslist[] = $row;
}
$query = "SELECT * FROM user WHERE userid = 1";
$result = mysqli_query($link,$query) or die(mysql_error());
while($row = (mysqli_fetch_assoc($result)))
{
    $details[] = $row;
}
$query = "SELECT * FROM sections ";
$result = mysqli_query($link,$query) or die(mysql_error());
while($row = (mysqli_fetch_assoc($result)))
{
    $sections[] = $row;
}
$query = "SELECT * FROM startpage WHERE startid = 1";
$result = mysqli_query($link, $query) or die(mysql_error());
while($row = (mysqli_fetch_assoc($result)))
{
    $startpage[] = $row;
}
$smarty = new Smarty();
if (isset($_SESSION['username']))
{
    $is_admin = true;
    $loged_as = $_SESSION['username'];
    $session_id = session_id();
    $smarty->assign('SID', $session_id);
    $smarty->assign('loged_as', $loged_as);
   // $smarty->assign('language', $langId);
}
else {
    $is_admin = false;
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
    if(isset($_SESSION['lang']))
    {
        $lang = $_SESSION['lang'];
    }
    else{
        $lang = "lt";
    }
    foreach ($translations as $b) {
        if ($b['en'] == $en) {
            $output = $b[$lang];
            return $output;
        }
    } 
}
//$smarty->register_function('translate', 'translation');
$smarty->assign('is_admin', $is_admin);
$smarty->assign('list', $list);
$smarty->assign('lang', $lang);
$smarty->assign('translations', $translations);
$smarty->assign('projectslist', $projectslist);
$smarty->assign('experience', $experience);
$smarty->assign('startpage', $startpage);
$smarty->assign('details', $details);
$smarty->assign('sections', $sections);
$smarty->assign('date', $today);
//$smarty->assign('is_admin', $is_admin);
/* linux setup
$smarty->setTemplateDir('/var/www/portfolio.lt/smarty/templates');
$smarty->setCompileDir('/var/www/portfolio.lt/smarty/templates_c');
$smarty->setCacheDir('/var/www/portfolio.lt/smarty/cache');
$smarty->setConfigDir('/var/www/portfolio.lt/smarty/configs');*/
$smarty->setTemplateDir('smarty/templates');
$smarty->setCompileDir('smarty/templates_c');
$smarty->setCacheDir('smarty/cache');
$smarty->setConfigDir('smarty/configs');
$smarty->display('index.tpl');
?>