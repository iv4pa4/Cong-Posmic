<?php
$hostname='localhost';
$username='root';
$password='';
$db='cong posmic';
$mysqli=mysqli_init();
if(!mysqli){
	die('mysqli_init failed');
}
$dblink=mysqli_connect($hostname, $username, $password, $db);
if(mysqli_connect_errno){
	printf("Connection failed: %s/n", mysqli_connect_error());
	exit();
}


?>