<%@page import="carpoolingapplicationDAO.LoginDAO"%>
<%@page import="carpoolingapplication.NewUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <style>
    .registerbtn {
  background-color: blue;
  background-image: linear-gradient(to right, #ec90c6 , #404047);
  color: white;
  padding: 10px 12px;
  margin: 4px 0;
  border: none;
  cursor: pointer;
  width: 18%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

.btn{
  background-image: linear-gradient(to right, #ec90c6 , #404047);
  color: white;
  height:30px;
  width:100px;
}

.btn:hover{
  background-image: linear-gradient(to right,#ec90c6 , #404047);
}

        body {
            background-color: cornsilk;
            background-image: url("img1.jpg");
        }
        .login{
            color: turquoise;
        }
    </style>
    <meta charset="ISO-8859-1">
    <title>LoginPage</title>
</head>

<body>
    <div align="center">
        <h1 style="color: violet;">Welcome To Carpooling Application</h1>
        <div class="login">
        <!-- Creating a login page for all the users -->
        <form action="login.jsp">
            User name :<input type="text" name="userid" required /><br><br>
            password :<input type="password" name="pwd" required /><br> <br>
            <input type="submit" class="registerbtn" value="Login" />
        </form> <br>
    </div>
    	<!-- Redirecting the user according to user category -->
        <% String userId=request.getParameter("userid"); String password=request.getParameter("pwd"); NewUser user=new
            NewUser(userId,password); String rol=LoginDAO.isUserValid(user); if(rol !=null){
            session.setAttribute("userid", userId); if(rol.equals("Admin")){ response.sendRedirect("Admin.jsp"); } else
            if(rol.equals("Rider")){ response.sendRedirect("Customer.jsp"); } else if(rol.equals("Owner")){
            response.sendRedirect("Rider.jsp"); } } %>
            If not registered yet....
            <a href="Index.jsp" style="color: turquoise;">Sign In</a>

    </div>
    
    <div class="objects" style="padding:40px;">
    <table style="margin:auto;">
		<tr>
			
			<td><button class="btn" onclick="window.location.href='/CarpoolingWebApplication/help.jsp';"> Help </button></td>
			<td><button class="btn" onclick="window.location.href='/CarpoolingWebApplication/feedback.jsp';"> Feedback </button></td>
			

		</tr>
	</table>
    </div>
</body>

</html>