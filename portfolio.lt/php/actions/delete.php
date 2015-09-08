<?php 
    require '../dbConnect.php';
    $itemid = $_POST['itemid'];
    $table = $_POST['table'];
    $itemidname = $_POST['itemidname'];
    $sql = "DELETE FROM $table where $itemidname=$itemid"; //DELETE FROM MyGuests WHERE id=3
    $q1 = mysqli_query($link, $sql);
        if (! $q1){
            echo 'delete unsuccesfull';
        }
        else{
        
        }
?>