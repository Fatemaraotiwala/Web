<%@page import="project.Connection_project"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<div class="container">
<h1>Money Transfer</h1>
<br>
<center><h3>Enter the details</h3></center>

<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<center><font color="red" size="3">Successfully Updated.</font></center>
<%
}
%>
<% 
if("invalid".equals(msg))
{
%>
<center><font color="red" size="3">Something went wrong.Try again!</font></center>
<%
}
%>
<% 
int id=1;
try{
	Connection con=Connection_project.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from bank_history");
	if(rs.first())
	{
		id=rs.getInt(1);
		id=id+1;
    }

%>
<div class="container">
<h4 style="color:red;">Transfer ID: <%out.println(id);%> </h4>
<%
}
catch(Exception e)
{}
%>
<form action="addNewTransferAction.jsp" method="post">
<center>
<table>
<tr><td>ID: </td><td><input type="text" name="id" value="<% out.println(id);%>"></td></tr>
<tr><td>Name: </td><td><input type="text" name="name"></td></tr>
<tr><td>Contact no.:</td><td><input type="text" name="contactno"></td></tr>
<tr><td>Password: </td><td><input type="password" name="password"></td></tr>
<tr><td>Account no.: </td><td><input type="text" name="accnum"></td></tr>
<tr><td>Receiver's name: </td><td><input type="text" name="rname"></td></tr>
<tr><td>Receiver's account no: </td><td><input type="text"  name="raccnum"></td></tr>
<tr><td>Amount: </td><td><input type="text" name="amt"></td></tr>
<tr><td></td><td><button type="submit" class="button">Save</button></td></tr>
</table>
</center>
</form>
</div>
</div>
</body>
</html>
