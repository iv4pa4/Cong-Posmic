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
<body>
<h1 class="heading">За кой обект искаш да научиш?</h1>
<div align="center">
<?php
if(is_array($objects)){
	foreach($objects as $k => $value){
		?>
		<h4><?=$value["fact_self"];?></h4><br />
		<br/>
		<?php
	}
}
?>
</div>
</body>

</html>