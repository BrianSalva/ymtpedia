<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>YMTpedia search page</title>
<LINK rel="stylesheet" type="text/css" href="commonstyle.css">
</head>
<body>
<table align="right" class="layout">
<tr>
<td>
<a href="Index.jsp">Home</a>&nbsp;
</td>
<td><a href="Login.html">Login</a>&nbsp;
</td>
<%
//Getting user from the UI
String user = (String) session.getAttribute("username");
if(user!=null)
{
%>
<td>
<a href="AddInfoForm.jsp">Add Info</a>
</td>
<td>
<a href="Logout.jsp">Logout</a>
</td>
<%} %>
</tr>
</table>

<table class="layout" border="0" width="60%" align="center">
	<tr>
		<td align="center"><img alt="" src="C:\Documents and Settings\mtaskeen\workspace\YMTpedia\WebContent\WEB-INF\images\HFA-Pedia.jpg" height="100" width="100"> </td>
	</tr>
	<tr>
		<td align="center">
		<p class="heading2">YMTpedia</p>
		</td>
	</tr>
	<tr>
	</tr>
	<tr>
	</tr>
	<tr align="center">
	<td>
	<input type="text" width="200" name="searchbox" id="searchbox" maxlength="200">
	</td>
	</tr>
	<tr align="center">
	<td>
	<input id="search" name="search" type="button" value="Search" onclick="">
	</td>
	</tr>
</table>

</body>
</html>