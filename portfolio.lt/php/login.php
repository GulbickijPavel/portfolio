<?php
    require 'dbConnect.php';

    if(isset($_POST['username']) && isset($_POST['password']) )
    {
        $username=$_POST['username']; 
        $password=$_POST['password']; 

        $username = stripslashes($username);
        $password = stripslashes($password);
        $username = mysqli_real_escape_string($link, $username);
        $password = mysqli_real_escape_string($link, $password);
        $sql="SELECT * FROM admin WHERE username='$username' and password='$password'";
        $result=mysqli_query($link, $sql);

        $count=mysqli_num_rows($result);
        echo $count;
        // If result matched $myusername and $mypassword, table row must be 1 row
       if($count==1){
            header("Location: ../index.php");
            session_start();
            $_SESSION["username"] = $username;
            $_SESSION["password"] = $password;
       //     $_SESSION["lastLoginDate"] = $row["loginDate"];
            //$sql= "UPDATE user SET loginDate = $today WHERE id = 1";
           /// echo $_SESSION["username"];
            //session_status();
            //header("location : index.php"); 
        }
        else {
            header("Location: ../login.php?errmsg=fail");
           //$errMsg = "Wrong login data ";
            echo 'wrong data';
         //  header("location: about/about.php"); 
        }
    }
?>