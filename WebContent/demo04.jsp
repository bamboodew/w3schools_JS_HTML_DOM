<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Finding HTML Elements by Tag Name</title>
</head>
<body>
  <h2>我是第一行</h2>
  
  <div id="main">
    <p>我是第二行</p>
    <p>我是第三行</p>
  </div>
  
  <p id="demo">我是第四行</p>
  
  <script type="text/javascript">
  	var x = document.getElementById("main");
  	var y = x.getElementsByTagName("p");
  	// document.getElementById("demo").innerHTML = y[1].innerHTML;
  </script>
</body>
</html>