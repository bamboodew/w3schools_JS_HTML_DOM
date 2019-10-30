<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<h1>JavaScript HTML DOM EventListener</h1>

<style type="text/css">
#title {
	font-size: x-large;
	color: red;
}

#myDIV {
	background-color: coral;
	border: 1px solid;
	padding: 50px;
	color: white;
	font-size: 20px;
}
</style>
</head>

<body>
	<p id="title">The addEventListener() method</p>
	<!-- 
		Example: Add an event listener that fires when a user clicks a button:
	-->
	<p>This example uses the addEventListener() method to attach a click event to a
		button.</p>
	<button id="myBtn">Try it</button>
	<p id="demo"></p>

	<p id="title">Add an Event Handler to an Element</p>
	<!-- Alert "Hello World!" when the user clicks on an element: -->
	<button id="myBtn_1">Try it</button>

	<p id="title">Add Many Event Handlers to the Same Element</p>
	<!-- The addEventListener() method allows you to add many events to the same element, without overwriting existing events: -->
	<button id="myBtn_2">Try it</button>

	<!-- You can add events of different types to the same element: -->
	<button id="myBtn_3">Try it</button>
	<p id="demo_3"></p>

	<p id="title">Add an Event Handler to the window Object</p>
	<!-- The addEventListener() method allows you to add event listeners on any HTML DOM object such as HTML elements, 
	the HTML document, the window object, or other objects that support events, 
	like the xmlHttpRequest object. -->
	<p>This example uses the addEventListener() method on the window object.</p>
	<p>Try resizing this browser window to trigger the "resize" event handler.</p>
	<p id="demo_4"></p>

	<p id="title">Passing Parameters</p>
	<!-- When passing parameter values, use an "anonymous function" that calls the specified function with the parameters: -->
	<p>Click the button to perform a calculation.</p>
	<input id="factor_1" type="text" />
	<input id="factor_2" type="text" />
	<br>
	<button id="multiply">calculate</button>
	<div id="product"></div>

	<div id="myDIV">
		<p>This div element has an onmousemove event handler that displays a random number
			every time you move your mouse inside this orange field.</p>
		<p>Click the button to remove the div's event handler.</p>
		<button id="myBtn" onclick="removeHandler()">Remove</button>
	</div>
	<p id="demo_5"></p>

	<script type="text/javascript">
		document.getElementById("myDIV").addEventListener("mousemove",
				myFunction_5); // 添加事件监听——鼠标移动就执行myFunction_5();方法的名，不能加()
		function myFunction_5() {
			document.getElementById("demo_5").innerHTML = 10 * Math.random();
		} // 定义myFunction_5()的具体内容
		function removeHandler() {
			document.getElementById("myDIV").removeEventListener("mousemove",
					myFunction_5); // 定义方法removeHandler()
		}

		var f1; // 先声明
		var f2;
		document.getElementById("multiply").addEventListener("click",
				function() {
					mul(f1, f2);
				});
		function mul(a, b) {
			f1 = document.getElementById("factor_1").value; // 执行方法时，赋值初始化
			f2 = document.getElementById("factor_2").value;
			document.getElementById("product").innerHTML = f1 * f2; // 乘积
		}

		window.addEventListener("resize", myFunction_4());
		function myFunction_4() {
			document.getElementById("demo_4").innerHTML = Math.random(); // 产生一个随机数
		}

		document.getElementById("myBtn").addEventListener("mousedown",
				displayDate);
		document.getElementById("myBtn").addEventListener("mouseup",
				undisplayDate);
		function displayDate() {
			document.getElementById("demo").innerHTML = Date();
		}
		function undisplayDate() {
			document.getElementById("demo").innerHTML = "<br>";
		}
		document.getElementById("myBtn_1").addEventListener("click", myFc);
		function myFc() {
			alert("Hello World!");
		}
		var x = document.getElementById("myBtn_2");
		x.addEventListener("click", myFunction_2_1);
		x.addEventListener("click", myFunction_2_2);
		function myFunction_2_1() {
			alert("Hello World!");
		}
		function myFunction_2_2() {
			alert("This function was also executed!");
		}

		var x_3 = document.getElementById("myBtn_3");
		x_3.addEventListener("mouseover", myFunction_3_1);
		x_3.addEventListener("click", myFunction_3_2);
		x_3.addEventListener("mouseout", myFunction_3_3);
		function myFunction_3_1() {
			document.getElementById("demo_3").innerHTML += "Moused over!<br>";
		}
		function myFunction_3_2() {
			document.getElementById("demo_3").innerHTML += "Clicked!<br>";
		}
		function myFunction_3_3() {
			document.getElementById("demo_3").innerHTML += "Moused out!<br>";
		}
	</script>
</body>
</html>