<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white; 
  scroll-behaviour:smooth;
}

* {
  box-sizing: border-box;
}

.container {
  margin-top: auto;
  padding: 16px;
  background-color: white;
  width:80%;
  margin-left:auto;
  margin-right:auto;
}

.containerB {
  padding: 16px;
  background-color: #ccccb3;
  width:100%;
  height:100%;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

input[type=text] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

textarea{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  }
  
.SubmitButton{  
  background-image: linear-gradient(to right, turquoise , #828291);
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
  
</style>
</head>
<body>


<div class="containerB">
<!-- Creating a help page -->
<form action="#" method="post">
<div class="container">
<h1 style="color: violet;">Help Desk</h1>
<p style="color: turquoise;">Please fill your query below.</p>
<hr>

<label for="Issue"><b>Issue</b></label>
<input type="text" placeholder="Enter Your Issue" name="Issue" required>

<label for="description"><b>Description</b></label>
<textarea id="description" name="description" rows="10" cols="10" placeholder="Write your Description in detail here..."></textarea>
<hr>
<button type="submit" class="SubmitButton">Submit</button>
</div>
</form>
 <!-- Form end -->
</div>

</body>
</html>