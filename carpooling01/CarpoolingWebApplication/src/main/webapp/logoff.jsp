<!-- Creating a logout page & Redirecting to login page. -->
<%
session.invalidate();
response.sendRedirect("login.jsp");
%>
