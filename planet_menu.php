<?php
include("base_connection.php");
$query = "SELECT * FROM planets ORDER BY planet_id ASC";
$planets = Select ($query);
?>

<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link rel="stylesheet" href="style.css?id=2">
</head>
<body>
<h1 class="heading">За коя планета искаш да научиш?</h1>
<div align="center">
<?php
if(is_array($planets)){
	foreach($planets as $k => $value){
		?>
		<a class="button2" href="planet_template.php?pid=<?=$value["planet_id"];?>"><?=$value["planet_name"];?></a><br />
		<br/>
		<?php
	}
}
?>
</div>
</body>

</html>