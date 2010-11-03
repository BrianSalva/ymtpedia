<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Property</title>
<LINK rel="stylesheet" type="text/css" href="commonstyle.css">
</head>
<body>
<form name="AddPropertyForm" method="post" action="AddInfo.jsp">
<table>
<%
String reqclass = request.getParameter("class").toString();
//get all properties for this reqclass,now hardcoding
String[] cricket = {"cricket1","cricket2","cricket3","cricket4","cricket5"};
String[] cricketer = {"cricketer1","cricketer2","cricketer3","cricketer4","cricketer5"};
String[] league = {"league1","league2","league3","league4"};
for(int i=0;i<cricket.length;i++)
{
	%>
	<tr align="center">
	<td>
		cricket[i]
	</td>
	<td>
	<textarea rows="5" cols="20">
	
	</textarea>
	</td>
	</tr>
	<%
}
%>
</table>
</form>
</body>
</html>