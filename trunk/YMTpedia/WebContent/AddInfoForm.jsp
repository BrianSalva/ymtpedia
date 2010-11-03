<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Information</title>
<LINK rel="stylesheet" type="text/css" href="commonstyle.css">
</head>
<body>

<%
String user = (String) session.getAttribute("username");
if(user!=null)
{
%>
<h3>Welcome,
	<%=user %>
	</h3>
	
<table align="center" width="100%">
<tr>
<td align="center">
<h3>
Add a new information</h3>
</td>
</tr>
</table>
<%} 
else
{
%>
<h3 align="center" style="background-color:red"> 
		You have to login to add new information</h3>
<jsp:forward page="Error.jsp">
	<jsp:param name="id" value="User not logged in" />
</jsp:forward>
<%} %>
<form name="AddInformation" method="post" action="AddPropertyForm.jsp">
<table>
<tr>
<td>
<select name="class" id="class">
<option value="cricket">Cricket</option>
<option value="cricketer">Cricketer</option>
<option value="league">Cricket League</option>
<!-- option value="country">Country</option>
<option value="law_n_reg">Law and Regulation</option>
<option value="nationalteam">Cricket National Team</option> -->
</select>
</td>
</tr>
<tr>
<td align="right"></td>
		<!-- Providing functions to submit and reset -->
		<td><input type="Submit" value="Submit" name="submit" onclick="AddPropertyInfo.jsp"> </td>
</tr>
</table>

</form>
</body>
</html>