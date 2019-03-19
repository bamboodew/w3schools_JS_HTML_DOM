<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>changes the content</title>
</head>
<body>
  <h2>Finding HTML Elements by Id</h2>
  
  <p id="intro">Hello World!</p>
  <p>This example demonstrates the <b>getElementsById</b> method.</p>
  
  <p id="demo"></p>
  
  <script type="text/javascript">
  	var myElement = document.getElementById("intro");
  	document.getElementById("demo").innerHTML = 
  	"The text from the intro paragraph is " + myElement.innerHTML;
  </script>
</body>
</html>