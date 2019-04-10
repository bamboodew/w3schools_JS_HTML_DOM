<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
  <h3><font face="Consolas">Changing HTML Style</font></h3>
  <p id="p1">Hello World</p>
  <p id="p2" style="font-size: medium; font-family: fantasy;">Hello World</p>

  <button onclick="myFunction1()">change color</button>
  <button onclick="myFunction2()">change fontFamily</button>
  <button onclick="myFunction3()">change fontSize</button>
  <button onclick="myFunction4()">reset fontSize</button>

  <script type="text/javascript">
  	function myFunction1() {
		document.getElementById("p2").style.color = "blue";
	}
  	function myFunction2() {
		document.getElementById("p2").style.fontFamily = "Consolas";
	}
  	function myFunction3() {
		document.getElementById("p2").style.fontSize = "larger";
	}
  	function myFunction4() {
  		document.getElementById("p2").style.color = "black";
  		document.getElementById("p2").style.fontFamily = "fantasy";
  		document.getElementById("p2").style.fontSize = "medium";
	}
  </script>
</body>
</html>