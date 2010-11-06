<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="beans.DBConnect" %>
    <%@page import="com.utd.semantic.QueryExplorer.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" type="text/css" href="commonstyle.css">
</head>
<body>
<table align="center">
<tr align="right">
<td>
<a href="Index.jsp">Home</a>
</td>
</tr>
<%
String un = request.getParameter("username");
String pwd = request.getParameter("password");
//DBConnect db = new DBConnect();
//int ret = db.saveUser(un,pwd);
String insert = ("insert into Users values(\'"+un+"\',\'"+pwd+"\');");
int ret = RelationalDB.insertData(insert);
if(ret!=0)
{
	session.setAttribute("username",un);
%>
<tr align="left">
<td>
Registration successful
</td>
</tr>
<%} %>
</table>
</body>
</html>