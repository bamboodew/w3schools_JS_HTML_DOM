<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
  <h2>Finding HTML Elements Using document.forms</h2>
  
  <form id="frm1" action="/action_page.php">
    First name: <input type="text" name="fname" value="Donald"><br>
    Last name: <input type="text" name="fname" value="Donald"><br>
    <input type="submit" value="Submit">
  </form>
  
  <p>Click "Try it" to display the value of each element in the form.</p>
  
  <button onclick="myFunction()">Try it</button>
  
  <p id="demo"></p>
  
  <script type="text/javascript">
  	function myFunction() {
		var x = document.forms["frm1"];
		var text = "";
		var i;
		for (var i = 0; i < x.length; i++) {
			text += x.elements[i].value + "<br>";
		}
		document.getElementById("demo").innerHTML = text;
	}
  </script>
</body>
</html>