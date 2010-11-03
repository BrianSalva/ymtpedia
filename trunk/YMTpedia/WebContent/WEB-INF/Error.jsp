<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error page</title>
<LINK rel="stylesheet" type="text/css" href="commonstyle.css">
</head>
<body>
<h3 align="center" style="background-color:red"> 
		<%out.println(request.getParameter("id")); %></h3>
		<jsp:forward page="Index.jsp">
	<jsp:param name="id" value="Session over" />
</jsp:forward>
</body>
</html>