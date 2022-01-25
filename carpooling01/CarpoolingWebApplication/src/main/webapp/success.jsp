<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.tit{
	border:10px;
	margin:10px;
	background-color: white;
}
.btn{
  background-image: linear-gradient(to right, #ec90c6 , #404047);
  color: white;
  height:30px;
}

.btn:hover{
  background-image: linear-gradient(to right,#ec90c6 , #404047);
}
body{
    background-color: cornsilk;
    background-image: url("img1.jpg");
}
</style>
<meta charset="ISO-8859-1">
<title class="tit">Success</title>
</head>
<body>
<div class="tit">
<h1 style="color: violet;">New User Created Successfully</h1>
</div>
 <!-- Link that redirects to login page -->
<a href="login.jsp" style="color: turquoise;">Click here to login</a>
</body>
</html>