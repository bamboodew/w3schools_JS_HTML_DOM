<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>changes the content</title>
</head>
<body>
  <h2>My First Page</h2>
  
  <p id="demo"></p>
  
  <script type="text/javascript">
  	document.getElementById("demo").innerHTML = "Hello World!";
  	// getElementById is a method, while innerHTML is a property
  	// the getElementById method used id="demo" to find the element
  	// The innerHTML property is useful for getting or replacing the content of HTML elements.
  </script>
</body>
</html>