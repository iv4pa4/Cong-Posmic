<?php
include("base_connection.php");
$query = "SELECT * FROM planets ORDER BY planet_id ASC";
$planets = Select ($query);
?>

<html>
<head>
</head>
<body>
<h1>За коя планета искаш да научиш?</h1>
<?php
if(is_array($planets)){
	foreach($planets as $k => $value){
		?>
		<a href="planet_template.php?pid=<?=$value["planet_id"];?>"><?=$value["planet_name"];?></a><br />
		<br/>
		<?php
	}
}
?>
</body>

</html>