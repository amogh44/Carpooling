<%@page import="carpoolingapplication.Rider"%>
<%@page import="carpoolingapplicationDAO.RiderDAO"%>

<%@page import="java.text.SimpleDateFormat"%>
<!-- Redirecting customer to success.jsp if new ride is requested and details of ride are added to the database, else redirecting to error.jsp if error has occured. -->
<% 
String contactnumber= request.getParameter("contactnumber");
String pickup = request.getParameter("pickup");
String dropaddress = request.getParameter("dropaddress");
String city= request.getParameter("city");
String zipcode = request.getParameter("zipcode");

Rider rider = new Rider(contactnumber,pickup,dropaddress,city,zipcode);
int status= RiderDAO.addRider(rider);
if (status==1) {
	response.sendRedirect("SuccessRide.jsp");
}
else
{
	response.sendRedirect("error.jsp");
}
%>