<!DOCTYPE html>
<?php
echo 1;
?>
<html>
<head>
    <link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
    <link rel="stylesheet" href="style.css?id=23">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
	<meta charset="UTF-8"></meta>
</head>
	<body  onload="init()" class="background">sdsdsds
        <canvas id="canvas-id">
            <script>
		  	   let updateTime = 10; // in ms
		  	   const canvas = document.getElementById("canvas-id");
                let isUpdatePaused_ = false,
                updateInterval = undefined;
            </script>
            <script src="game.js"></script>
            <script>
                const context = canvas.getContext("2d");
                context.fillStyle = "#0000ff";
                const reqAnimationFrame = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame || function (callback) {
				    setTimeout(callback, 1000 / 30);
                };
                function init() {
                    updateInterval = setInterval(update, updateTime);
                }
			</script>
		</canvas>
        <div class="buttons_div">
            <p id="buttonForYes" class="button1" style="border-style: solid" onclick="change_iser_input(1)">Да</p>
            <p id="buttonForNo" class="button1" style="border-style: solid" onclick="change_iser_input(-1)">Не</p>
            <p id="buttonForIDunno" class="button1" style="border-style: solid" onclick="change_iser_input(0)">Не нам</p>
        </div>
	</body>
</html>