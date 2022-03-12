<?php
include("base_connection.php");
$object_id=(int) $_GET['pid'];
$query="SELECT * FROM cosmic_objects WHERE object_id=".$object_id;
$object= Select($query);
if(!$object) die("Not found");
?>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link rel="stylesheet" href="style.css?id=2">
</head>
<body class="background3">
<h1 class="heading"><?=$object[0]['object_name'];?></h1>
<div>
<?php

if($object[0]['object_photo']){
	?>
	<img src="photos/<?=$object[0]['object_photo']?>" width="500" align="left" class="pad"/>
	<?php
}
?>
<h4 class="text_info" align="right">Обща информация: <?=$object[0]['object_info']; ?></h4>
</div>
</body>
</html>