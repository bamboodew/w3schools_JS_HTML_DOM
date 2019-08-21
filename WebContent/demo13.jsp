<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<h1>
	<p>JavaScript HTML DOM EventListener</p>
</h1>
<style type="text/css">
#title {
	font-size: x-large;
	color: red;
}
</style>
</head>

<body>
	<p id="title">The addEventListener() method</p>
	<!-- 
		Example: Add an event listener that fires when a user clicks a button:
	-->
	<p>This example uses the addEventListener() method to attach a
		click event to a button.</p>
	<button id="myBtn">Try it</button>
	<p id="demo"></p>

	<p id="title">Add an Event Handler to an Element</p>
	<!-- Alert "Hello World!" when the user clicks on an element: -->
	<button id="myBtn_1">Try it</button>
	
	<!-- You can also refer to an external "named" function: -->

	<script type="text/javascript">
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
	</script>
</body>
</html>