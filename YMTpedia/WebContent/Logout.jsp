<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout Page</title>
</head>
<body>
<%
//Invalidating the session
session.invalidate();
%>
<!--Include Login page after the user has logged off-->
<h3 align="center" style="background-color:red"> 
		Login as a new user</h3>
<jsp:forward page="Index.jsp">
	<jsp:param name="id" value="Session over" />
</jsp:forward>
</body>
</html>