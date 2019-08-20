<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
#container {
	width: 400px;
	height: 400px;
	position: relative;
	background: yellow;
}

#animate {
	width: 20px;
	height: 20px;
	position: absolute;
	background-color: silver;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<p>
		<button onclick="myMove()">Click Me</button>
	</p>
	<div id="container">
		<div id="animate"></div>
	</div>

	<script type="text/javascript">
		function myMove() {
			var elem = document.getElementById("animate"); // 定位id为animate的元素，即银色的div
			var pos = 0; // 初始化位置pos
			var id = setInterval(frame, 10); // 每次“移动”时间为100ms;
			/**
			Calls a function or executes a code snippet repeatedly, 
			with a fixed time delay between each call to that function.
			**/
			function frame() {
				if (pos == 350) { // 400-50=350
					clearInterval(id); // 停止移动
				} else {
					pos++; // 每次移动1个像素
					elem.style.top = pos + "px"; // 银色div块向下移动
					elem.style.left = pos * 2 + "px"; // 银色div块向右移动
				}
			}
		}
	</script>
</body>
</html>