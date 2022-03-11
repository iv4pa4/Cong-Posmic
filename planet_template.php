<?php
include("base_connection.php");
$planet_id=(int) $_GET['pid'];
$query="SELECT * FROM planets WHERE planet_id=".$planet_id;
$planet= Select($query);
if(!$planet) die("Not found");
?>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link rel="stylesheet" href="style.css?id=2">
</head>
<body>
<h1><?=$planet[0]['planet_name'];?></h1>
<?php

if($planet[0]['planet_photo']){
	?>
	<img src="photos/<?=$planet[0]['planet_photo']?>" width="500"/>
	<?php
}
?>
<h4>Обща информация: <?=$planet[0]['planet_info']; ?></h4>

</body>
</html>