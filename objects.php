<?php
include("base_connection.php");
$query = "SELECT * FROM cosmic_objects ORDER BY object_id ASC";
$objects = Select ($query);
?>

<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link rel="stylesheet" href="style.css?id=2">
</head>
<body class="background1">
<h1 class="heading">За какво искаш да научиш?</h1>
<div align="center">
<?php
if(is_array($objects)){
	foreach($objects as $k => $value){
		?>
		<a class="button2" href="object_template.php?pid=<?=$value["object_id"];?>"><?=$value["object_name"];?></a><br />
		<br/>
		<?php
	}
}
?>
</div>
</body>

</html>