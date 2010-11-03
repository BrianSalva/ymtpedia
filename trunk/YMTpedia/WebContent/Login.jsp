<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.DBConnect" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK rel="stylesheet" type="text/css" href="commonstyle.css">
<title>Search Page</title>
</head>
<body>
<%
String un = request.getParameter("username");
String pwd = request.getParameter("password");
DBConnect db = new DBConnect();
String ret = db.Authorization(un,pwd);
if(ret!=null)
{
	session.setAttribute("username",un);
	%>
	<h3>Welcome,
	<%=ret %>
	</h3>
<jsp:include flush="true" page="Index.jsp"></jsp:include>
	<%
}
else
{
%>
<!--Display invalid username or password message for invalid login-->
<h3 align="center" style="background-color:red">Invalid User</h3>
<jsp:include flush="true" page="Login.html"></jsp:include>
<%
}
%>
</body>
</html>