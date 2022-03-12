<?php
include("base_connection.php");
$query = "SELECT * FROM cosmic_literature ORDER BY literature_id ASC";
$literatures = Select ($query);
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
<h1 class="heading">Каква литература търсиш?</h1>
<div align="center">
<?php
if(is_array($literatures)){
	foreach($literatures as $k => $value){
		?>
		<a class="button2" href="<?=$value["literature_link"];?>" target="_blank"><?=$value["literature_name"];?></a>
		<?php
		
		
		
	}
}
?>
</div>

</body>

</html>