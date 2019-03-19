<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Finding HTML Elements by Tag Name</title>
</head>
<body>
  <h2>Finding HTML Elements by Tag Name</h2>
  
  <p>Hello World!</p>
  <p>This example demonstrates the <b>getElementsByTagName</b> method.</p>
  <p>The third p tag</p>
  <p id="demo"></p>
  
  <script type="text/javascript">
  	var x = document.getElementsByTagName("p"); // x是所有包含p标签的元素的数组
  	document.getElementById("demo").innerHTML = 
  	'The text in first paragraph (index 2) is: ' + x[2].innerHTML;
  </script>
</body>
</html>