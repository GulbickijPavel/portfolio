<?php
    require('../../smarty/libs/Smarty.class.php');
    require('../dbConnect.php');
    require '../translations.php';
    $smarty = new Smarty();
    $lang = $_SESSION["lang"];
    if(isset($_GET['sectionname'])){
        $sectionname = $_GET['sectionname'];
    }
    else if($_POST['sectionname']){
        $sectionname = $_POST['sectionname'];
    }
    if($sectionname == 'home')
    {
        $sql="SELECT * FROM sections WHERE name = '$sectionname'"; //and lang = '$lang' 
        $result = mysqli_query($link, $sql) or die(mysql_error());
        $row = (mysqli_fetch_assoc($result));
        $sql="SELECT * FROM startpage WHERE startid = 1";
        $result = mysqli_query($link, $sql) or die(mysql_error());
        $description = (mysqli_fetch_assoc($result));
        $smarty->assign('section', $row);
        $smarty->assign('start', $description);
        if(isset($_GET['success'])){
            if($_GET['success'] == true){
            $success = $_GET['success'];
            
            $successmsg = '<div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Sekmingai užrašyta!!</strong>  <a href="#" class="alert-link"></a>
</div>';
            $smarty->assign('successmsg', $successmsg);
            }
            else{
                $failure = $_GET['success'];
                
                $successmsg ='<div class="alert alert-dismissible alert-danger">
      <button type="button" class="close" data-dismiss="alert">×</button>
      <strong></strong>Klaida! <a href="#" class="alert-link"></a>
    </div>';
                $smarty->assign('successmsg', $successmsg);
            }
        }
        else{
            $successmsg = ' ';
            $smarty->assign('successmsg', $successmsg);
        } 
        $smarty->display('../../smarty/templates/sections/home/control.tpl');
    }
    else if($sectionname == 'abou')
    {
        $sql="SELECT * FROM sections WHERE sectionid = 2";
        $result = mysqli_query($link, $sql) or die(mysql_error());
        $section = (mysqli_fetch_assoc($result));
        $sql="SELECT * FROM user WHERE userid = 1";
        $result = mysqli_query($link, $sql) or die(mysql_error());
        $row = (mysqli_fetch_assoc($result));
        $smarty->assign('section', $section);
        $smarty->assign('user', $row);
        if(isset($_GET['success'])){
            if($_GET['success'] == true){
            $success = $_GET['success'];
            
            $successmsg = '<div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Sekmingai užrašyta!!</strong>  <a href="#" class="alert-link"></a>
</div>';
            $smarty->assign('successmsg', $successmsg);
            }
            else{
                $failure = $_GET['success'];
                
                $successmsg ='<div class="alert alert-dismissible alert-danger">
      <button type="button" class="close" data-dismiss="alert">×</button>
      <strong></strong>Klaida! <a href="#" class="alert-link"></a>
    </div>';
                $smarty->assign('successmsg', $successmsg);
            }
        }
        else{
            $successmsg = ' ';
            $smarty->assign('successmsg', $successmsg);
        } 
        $smarty->display('../../smarty/templates/sections/about/control.tpl');
    }
    else if($sectionname == 'skil')
    {
        if(isset($_POST['skillid']))
        {
            $skillid = $_POST['skillid'];
            $sql = "SELECT DISTINCT skillid, skillname, skillimage, "."
                (SELECT skilldescription "."
                 FROM skills "."
                 WHERE      (skillid = A.skillid) "." 
                    AND (lang = 'en')) AS descriptionEn,"."
                (SELECT  skilldescription "."
                 FROM skills "."
                 WHERE      (skillid = A.skillid) "." 
                    AND (lang = 'lt')) AS descriptionLt, "."
                (SELECT  skilldescription "."
                 FROM skills "."
                 WHERE      (skillid = A.skillid) "." 
                    AND (lang = 'ru')) AS descriptionRu "."
                FROM skills AS A "."
                WHERE skillid = '$skillid'";
            $result = mysqli_query($link, $sql) or die(mysql_error());
            $row = (mysqli_fetch_assoc($result));
            $smarty->assign('skill', $row);
        }
        else if(isset($_GET['itemid'])){
            $skillid = $_GET['itemid'];
             $sql = "SELECT DISTINCT skillid, skillname, skillimage, "."
                (SELECT skilldescription "."
                 FROM skills "."
                 WHERE      (skillid = A.skillid) "." 
                    AND (lang = 'en')) AS descriptionEn,"."
                (SELECT  skilldescription "."
                 FROM skills "."
                 WHERE      (skillid = A.skillid) "." 
                    AND (lang = 'lt')) AS descriptionLt, "."
                (SELECT  skilldescription "."
                 FROM skills "."
                 WHERE      (skillid = A.skillid) "." 
                    AND (lang = 'ru')) AS descriptionRu "."
                FROM skills AS A "."
                WHERE skillid = '$skillid'";
            $result = mysqli_query($link, $sql) or die(mysql_error());
            $row = (mysqli_fetch_assoc($result));
            $smarty->assign('skill', $row);
        }
        else{
             $sql = "SELECT DISTINCT skillid, skillname, skillimage, "."
                (SELECT skilldescription "."
                 FROM skills "."
                 WHERE      (skillid = A.skillid) "." 
                    AND (lang = 'en')) AS descriptionEn,"."
                (SELECT  skilldescription "."
                 FROM skills "."
                 WHERE      (skillid = A.skillid) "." 
                    AND (lang = 'lt')) AS descriptionLt, "."
                (SELECT  skilldescription "."
                 FROM skills "."
                 WHERE      (skillid = A.skillid) "." 
                    AND (lang = 'ru')) AS descriptionRu "."
                FROM skills AS A "."
                WHERE skillid = 1";
            $result = mysqli_query($link, $sql) or die(mysql_error());
            $row = (mysqli_fetch_assoc($result));
            $smarty->assign('skill', $row);
        }
        $smarty->assign('successmsg', ' ');
        if(isset($_GET['success']))
        {
            if(($_GET['success']) == true){
                $successmsg = '<div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Sekmingai užrašyta!!</strong>  <a href="#" class="alert-link"></a>
</div>';
                $smarty->assign('successmsg', $successmsg);
            }
            else{
                $successmsg ='<div class="alert alert-dismissible alert-danger">
      <button type="button" class="close" data-dismiss="alert">×</button>
      <strong></strong>Klaida! <a href="#" class="alert-link"></a>
    </div>';
                $smarty->assign('successmsg', $successmsg);
            }
        }
     //   $smarty->assign('section', $section);
    //    $smarty->assign('skills', $skillinames);
        $smarty->display('../../smarty/templates/sections/skills/control.tpl');
    }
    else if($sectionname == 'expr'){
        $sql="SELECT * FROM sections WHERE sectionid = 4";
        $result = mysqli_query($link, $sql) or die(mysqli_error());
        $section = (mysqli_fetch_assoc($result));
        $sql="SELECT * FROM experience ORDER BY experienceid ASC";
        $result = mysqli_query($link, $sql) or die(mysqli_error());
        while($row = (mysqli_fetch_assoc($result)))
        {
            $companys[] = $row['company']; 
        }
        if(isset($_POST['experienceid']))
        {
            $experienceid = $_POST['experienceid'];
            $sql = "SELECT * FROM experience WHERE experienceid='$experienceid' ORDER BY experienceid ASC";
            $result = mysqli_query($link, $sql) or die(mysql_error());
            $row = (mysqli_fetch_assoc($result));
            $smarty->assign('experience', $row);
        }
        else if(isset($_GET['itemid'])){
            $experienceid = $_GET['itemid'];
            $sql = "SELECT * FROM experience WHERE experienceid='$experienceid' ORDER BY experienceid ASC";
            $result = mysqli_query($link, $sql) or die(mysql_error());
            $row = (mysqli_fetch_assoc($result));
            $smarty->assign('experience', $row);
        }
        else{
            $sql = "SELECT * FROM experience WHERE experienceid=1";
            $result = mysqli_query($link, $sql) or die(mysql_error());
            $row = (mysqli_fetch_assoc($result));
            $smarty->assign('experience', $row);
         /*   $smarty->assign('section', $section);
            $smarty->assign('companys', $companys);*/
          /*  $smarty->assign('skill', ' ');
            $smarty->assign('skills', ' ');*/
        }
        $smarty->assign('successmsg', ' ');
        if(isset($_GET['success']))
        {
            if(($_GET['success']) == true){
                $successmsg = '<div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Sekmingai užrašyta!!</strong>  <a href="#" class="alert-link"></a>
</div>';
                $smarty->assign('successmsg', $successmsg);
            }
            else{
                $successmsg ='<div class="alert alert-dismissible alert-danger">
      <button type="button" class="close" data-dismiss="alert">×</button>
      <strong></strong>Klaida! <a href="#" class="alert-link"></a>
    </div>';
                $smarty->assign('successmsg', $successmsg);
            }
        }
        $smarty->assign('section', $section);
        $smarty->assign('companys', $companys);
        $smarty->display('../../smarty/templates/sections/experience/control.tpl');
    }
    else if($sectionname == 'proj')
    {
        $sql="SELECT * FROM sections WHERE sectionid = 4";
        $result = mysqli_query($link, $sql) or die(mysql_error());
        $section = (mysqli_fetch_assoc($result));
        $sql="SELECT * FROM projects ORDER BY projectid ASC";
        $result = mysqli_query($link, $sql) or die(mysql_error());
        while($row = (mysqli_fetch_assoc($result)))
        {
            $projectnames[] = $row['projectname']; 
        }
        if(isset($_POST['projectid']))
        {
            $projectid = $_POST['projectid'];
            $sql = "SELECT * FROM projects WHERE projectid='$projectid' ORDER BY projectid ASC";
            $result = mysqli_query($link, $sql) or die(mysql_error());
            $row = (mysqli_fetch_assoc($result));
            $smarty->assign('project', $row);
        }
        else if(isset($_GET['itemid'])){
            $projectid = $_GET['itemid'];
            $sql = "SELECT * FROM projects WHERE projectid='$projectid' ORDER BY projectid ASC";
            $result = mysqli_query($link, $sql) or die(mysql_error());
            $row = (mysqli_fetch_assoc($result));
            $smarty->assign('project', $row);
        }
        else{
            $sql = "SELECT * FROM projects WHERE projectid=1";
            $result = mysqli_query($link, $sql) or die(mysql_error());
            $row = (mysqli_fetch_assoc($result));
            $smarty->assign('project', $row);
        }
        $smarty->assign('successmsg', ' ');
        if(isset($_GET['success']))
        {
            if(($_GET['success']) == true){
                $successmsg = '<div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Sekmingai užrašyta!!</strong>  <a href="#" class="alert-link"></a>
</div>';
                $smarty->assign('successmsg', $successmsg);
            }
            else{
                $successmsg ='<div class="alert alert-dismissible alert-danger">
      <button type="button" class="close" data-dismiss="alert">×</button>
      <strong></strong>Klaida! <a href="#" class="alert-link"></a>
    </div>';
                $smarty->assign('successmsg', $successmsg);
            }
        }
        $smarty->assign('section', $section);
        $smarty->assign('projects', $projectnames);
        $smarty->display('../../smarty/templates/sections/projects/control.tpl');
    }
    else if($sectionname == 'skil-add')
    {
        if(isset($_GET['success'])){
            if($_GET['success'] == true){
            $success = $_GET['success'];
            
            $successmsg = '<div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Sekmingai užrašyta!!</strong>  <a href="#" class="alert-link"></a>
</div>';
            $smarty->assign('successmsg', $successmsg);
            }
            else{
                $failure = $_GET['success'];
                
                $successmsg ='<div class="alert alert-dismissible alert-danger">
      <button type="button" class="close" data-dismiss="alert">×</button>
      <strong></strong>Klaida! <a href="#" class="alert-link"></a>
    </div>';
                $smarty->assign('successmsg', $successmsg);
            }
        }
        else{
            $successmsg = ' ';
            $smarty->assign('successmsg', $successmsg);
        } 
        $smarty->display('../../smarty/templates/sections/skills/add.tpl');
    }
    else if($sectionname == 'project-add'){
       if(isset($_GET['success'])){
            if($_GET['success'] == true){
            $success = $_GET['success'];
            
            $successmsg = '<div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Sekmingai užrašyta!!</strong>  <a href="#" class="alert-link"></a>
</div>';
            $smarty->assign('successmsg', $successmsg);
            }
            else {
                $failure = $_GET['success'];
                
                $successmsg ='<div class="alert alert-dismissible alert-danger">
      <button type="button" class="close" data-dismiss="alert">×</button>
      <strong></strong>Klaida! <a href="#" class="alert-link"></a>
    </div>';
                $smarty->assign('successmsg', $successmsg);
            }
        }
        else{
            $successmsg = ' ';
            $smarty->assign('successmsg', $successmsg);
        } 
        $smarty->display('../../smarty/templates/sections/projects/add.tpl');
    }
    else if($sectionname == 'experience-add'){
       if(isset($_GET['success'])){
            if($_GET['success'] == true){
            $success = $_GET['success'];
            
            $successmsg = '<div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Sekmingai užrašyta!!</strong>  <a href="#" class="alert-link"></a>
</div>';
            $smarty->assign('successmsg', $successmsg);
            }
            else {
                $failure = $_GET['success'];
                
                $successmsg ='<div class="alert alert-dismissible alert-danger">
      <button type="button" class="close" data-dismiss="alert">×</button>
      <strong></strong>Klaida! <a href="#" class="alert-link"></a>
    </div>';
                $smarty->assign('successmsg', $successmsg);
            }
        }
        else{
            $successmsg = ' ';
            $smarty->assign('successmsg', $successmsg);
        } 
        $smarty->display('../../smarty/templates/sections/experience/add.tpl');
    };
 /*   function successmsg($successtext){
        $smarty = new Smarty();
        if($successtext == true){
            $successmsg = '<div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Sekmingai užrašyta!!</strong>  <a href="#" class="alert-link"></a>
</div>';
        }
        else if($successtext == false){
            $successmsg ='<div class="alert alert-dismissible alert-danger">
      <button type="button" class="close" data-dismiss="alert">×</button>
      <strong></strong>Klaida! <a href="#" class="alert-link"></a>
    </div>';
        }
        return $successmsg;
            $smarty->assign('successmsg', $successmsg);
    };*/
           
?>