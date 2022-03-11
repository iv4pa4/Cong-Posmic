<?php
include("base_connection.php");
$planet_id=(int) $_GET['pid'];
$query="SELECT * FROM planets WHERE planet_id=".$planet_id;
$planet= Select($query);
if(!$planet){
	die("Not found")
}
?>