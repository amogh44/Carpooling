<%@page import="carpoolingapplication.NewUser"%>
<%@page import="carpoolingapplicationDAO.UserDAO"%>

<%@page import="java.text.SimpleDateFormat"%>
<!-- Redirecting new users to success.jsp if user is added successfully to the database, else redirecting to error.jsp if error has occured. -->
<%
String firstName = request.getParameter("fname");
String lastName = request.getParameter("lname");
String dob = request.getParameter("dob");
String gender = request.getParameter("gender");
String contactnumber = request.getParameter("contactnumber");
String email = request.getParameter("email");
String userid = request.getParameter("userid");
String pwd = request.getParameter("pwd");
String usercategory = request.getParameter("usercategory");
NewUser newUser = new NewUser(firstName, lastName, dob, gender, contactnumber, email, userid, pwd, usercategory);
int status = UserDAO.addUser(newUser);
if (status == 1) {
	response.sendRedirect("success.jsp");
} else {
	response.sendRedirect("error.jsp");
}
%>