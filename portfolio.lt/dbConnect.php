<?php
/*$servername = "localhost";
$username = "root";
$password = "123";
$database = "Portfolio";*/

// Create connection
//$conn = @mysqli_connect($servername, $username, $password, $database);
$conn = @mysqli_connect("localhost", "root", "123", "Portfolio");

// Check connection
if (mysqli_connect_errno($conn)) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
	exit();
} 
/*echo "Connected successfully";*/
?>