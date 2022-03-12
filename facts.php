<?php
include("base_connection.php");
$query = "SELECT * FROM facts ORDER BY fact_id ASC";
$facts = Select ($query);
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
if(is_array($facts)){
	foreach($facts as $k => $value){
		?>
		<h4 class="heading"><?=$value["fact_self"];?></h4><br />
		<br/>
		<?php
	}
}
?>
</div>
</body>

</html>