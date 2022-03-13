<?php
include("base_connection.php");
$query = "SELECT * FROM facts ORDER BY fact_id ASC";
$facts = Select ($query);
?>

<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link rel="stylesheet" href="style_t.css?id=2">
</head>
<body class="background3">
<div class="zad">
<a href="menu.php" class="button3">Назад</a>
</div>
<h1 class="heading">Интересни факти:</h1>
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