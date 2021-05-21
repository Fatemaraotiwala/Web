<%@page import="project.Connection_project"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="first.css"/>
	<link href='https://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='type/css'>
<style>
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
	box-sizing: border-box;
}
body {
	font-family: Oxygen;
}
h1{
   height: 80px;
   width: 100%;
   background: #0082e6;
   font-color: #fff;
}
</style>
</head>
<body>
<h1>View Users</h1>
<br>
<center><h3>Enter your details</h3></center>
<form action="indexFormAction.jsp" method="post">
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
 <center><font color="red" size="3">Form Submitted Successfully.</font></center> 
<%
}
%>
<%
if("invalid".equals(msg))
{
%>
 <center><font color="red" size="3">Invalid data.</font></center> 
<%
}
%>

<center>
<table>
<tr><td>User name:</td><td><input type="text" name="name" placeholder="Enter Name" required></td></tr><br>
<tr><td>Contact number:</td><td><input type="text" name="number" placeholder="Enter Contact number" required></td></tr><br>
<tr><td>Account number:</td><td><input type="text" name="accountno" placeholder="Enter Account number" required></td></tr><br>
<tr><td>Password:</td><td><input type="password" name="password" placeholder="Enter Password" required></td></tr><br>
<tr><td>Amount:</td><td><input type="text" name="amount" placeholder="Enter the Amount" required></td></tr><br>
</table>
<tr><td></td><td><input type="submit" value="Submit"></td></tr>
</center>
</form>
</body>
</html>