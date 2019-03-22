<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
  <h2>Changing the Value of an Attribute</h2>
  
  <img id="image" src="leslie.jpg" width="273.2" height="409.6">
  <br><br>
  <button onclick="myFunction()">Change it</button>
  
  <script type="text/javascript">
  	function myFunction() {
		document.getElementById("image").src = "feuilles.jpg";
	}
  </script>
</body>
</html>