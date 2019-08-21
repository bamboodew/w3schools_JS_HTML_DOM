<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<h1>
	<p>JavaScript HTML DOM Events</p>
</h1>
<style type="text/css">
#title {
	font-size: x-large;
	color: red;
}
</style>
</head>

<body onload="checkCookies()">
	<!-- 
		HTML DOM allows JavaScript to react to HTML events
	-->
	<p id="title">Reacting to Events</p>
	</h2>
	<!--
		A JavaScript can be executed when an event occurs, like when a user clicks on an HTML element.
		To execute code when a user clicks on an element, add JavaScript code to an HTML event attribute:
		"onclick=JavaScript"
		
		Examples of HTML events:
			■ When a user clicks the mouse
			■ When an image has been loaded
			■ When the mouse moves over an element
			■ When an input field is changed
			■ When an HTML form is submitted
			■ When a user strokes a key
		In this example, the content of the <h1> element is changed when a user clicks on it:
	-->
	<h4 onclick="this.innerHTML = 'Ooops!'">Click on this text!</h4>
	<!--
		In this example, a function is called from the event handler:
	-->
	<h4 onclick="changeText(this)">Click on this text!</h4>

	<p id="title">HTML Event Attributes</p>
	<!-- 
		To assign events to HTML elements you can use event attributes.
		Example
		Assign an onclick event to a button element:
	-->
	<button onclick="displayDate()">The time is?</button>
	<p id="demo"
		style="color: blue; font-family: serif; font-size: xx-large;"></p>

	<!-- 
		In the example above, a function named displayDate will be executed when the button is clicked.
	-->

	<p id="title">Assign Events Using the HTML DOM</p>
	<!-- 
		The HTML DOM allows you to assign events to HTML elements using JavaScript:
		Example
		Assign an onclick event to a button element:
	-->
	<p>Click "Try it" to execute the displayDate() function.</p>
	<button id="myBtn">Try it</button>
	<p id="demo_1"
		style="color: blue; font-family: serif; font-size: xx-large;"></p>
	<!-- 
		In the example above, a function named displayDate is assigned to an HTML element with the id="myBtn".
		The function will be executed when the button is clicked.
	-->

	<p id="title">The onload and onunload Events</p>
	<!-- 
		The onload and onunload events are triggered when the user enters or leaves the page.
		The onload event can be used to check the visitor's browser type and browser version, and load the proper version of the web page based on the information.
		The onload and onunload events can be used to deal with cookies.
	-->
	<p id="demo_2"></p>

	<p id="title">The onchange Event</p>
	<!-- 
		The onchange event is often used in combination with validation of input fields.
		Below is an example of how to use the onchange.
		The upperCase() function will be called when a user changes the content of an input field.
	-->
	Enter your name:
	<input type="text" id="fname" onchange="myFunction()">
	<p>When you leave the input field, a function is triggered which
		transforms the input text to upper case.</p>

	<p id="title">The onmouseover and onmouseout Events</p>
	<!-- 
		The onmouseover and onmouseout events can be used to trigger a function when the user mouses over, 
		or out of, an HTML element:
	-->
	<div onmouseover="mOver(this)" onmouseout="mOut(this)"
		style="background-color: #D94A38; width: 250px; height: 15px; padding: 40px; font-size: xx-large;">Mouse
		Over Me</div>

	<p id="title">The onmousedown, onmouseup and onclick Events</p>
	<!-- 
		The onmousedown, onmouseup, and onclick events are all parts of a mouse-click. 
		First when a mouse-button is clicked, 
		the onmousedown event is triggered, then, 
		when the mouse-button is released, 
		the onmouseup event is triggered, finally, 
		when the mouse-click is completed, 
		the onclick event is triggered.
	-->
	<div onmousedown="mDown(this)" onmouseup="mUp(this)"
		style="background-color: #D94A38; width: 200px; height: 20px; padding: 40px; font-size: xx-large;">
		Click Me</div>

	<script type="text/javascript">
		function changeText(id) {
			id.innerHTML = "Ooops again";
		}
		function displayDate() {
			document.getElementById("demo").innerHTML = Date();
		}
		document.getElementById("myBtn").onclick = displayDate_1; // Assign an onclick event to a button element:
		function displayDate_1() {
			document.getElementById("demo_1").innerHTML = Date();
		}
		function checkCookies() {
			var text = "";
			if (navigator.cookieEnable == true) {
				text = "Cookies are enabled.";
			} else {
				text = "Cookies are not enabled.";
			}
			document.getElementById("demo_2").innerHTML = text;
		}
		function myFunction() {
			var x = document.getElementById("fname");
			x.value = x.value.toUpperCase();
		}
		function mOver(obj) {
			obj.innerHTML = "Thank You";
		}
		function mOut(obj) {
			obj.innerHTML = "Mouse Over Me";
		}
		function mDown(obj) {
			obj.style.backgroundColor = "#1ec5e5";
			obj.innerHTML = "Release Me";
		}
		function mUp(obj) {
			obj.style.backgroundColor = "#D94A38";
			obj.innerHTML = "Thank You";
		}
	</script>
</body>
</html>