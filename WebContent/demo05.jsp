<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
  <h2>Finding HTML Elements by Class Name</h2>
  
  <p>Hello World!</p>
  
  <p class="intro">The DOM is very useful.</p>
  <p class="intro">This example demonstrates the <b>getElementsByClassName</b> method.</p>
  
  <p id="demo"></p>
  <p id="demo1"></p>
  
  <script type="text/javascript">
  	var x = document.getElementsByClassName("intro");
  	document.getElementById("demo").innerHTML = x[0].innerHTML;
  	
  	var y = document.querySelectorAll("p.intro");
  	document.getElementById("demo1").innerHTML = y[1].innerHTML;
  	
  </script>
</body>
</html>