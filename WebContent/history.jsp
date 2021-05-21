<%@page import="project.Connection_project"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
#customers {
   font-family: "Oxygen";
   border-collapse: collapse;
   width: 95%;
}
#cutomers td, #customers th{
   border: 1px solid #add;
   padding: 8px
}
#customers tr:nth-child(even){background: #0082e6;}

#customers tr:hover{background: #fff;}
h1{
   height:80px;
   width: 100%;
   background: #0082e6;
   font-color: #fff;
}
</style>
</head>
<body>
<h1>Transfer History</h1>
<br>
<br>
<center>
<table id="customers">
<tr>
<th>ID</th>
<th>Name</th>
<th>Contact no.</th>
<th>Password</th>
<th>Account no.</th>
<th>Receiver's name</th>
<th>Receiver's account no.</th>
<th>Amount</th>
</tr>
<tr>
<%
try
{
	Connection con=Connection_project.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from bank_history");
	while(rs.next())
	{
%>
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><%=rs.getString(8) %></td>
</tr>
<%
	}
}
catch(Exception e)
{
    System.out.println(e);	
}

%>

</table>
</center>
</body>
</html>