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
mysqli_query($dblink, "SET NAMES utf8")or die('Няма връзка със сървъра');
function Select (&query){
	global $dblink;
	if(empty($query)){
		return false;
	}
	if(!$res=mysqli_query($dblinkk, $query)){
		$error='Date:'.date('Y-m-d H:i:s').''.mysqli_error($dblink);
		die($error);
	}
	$data_res=array();
	if(mysqli_num_rows($res)){
		while($arr=mysqli_fetch_array($res)){
			$data_res[]=$arr;
		}
	}
	if(!empty($data_res)){
		return $data_res;
	}
}
?>