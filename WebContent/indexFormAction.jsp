<%@page import="project.Connection_project"%>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String number=request.getParameter("number");
String accountno=request.getParameter("accountno");
String password=request.getParameter("password");
String amount=request.getParameter("amount");
try
{
	Connection con=Connection_project.getCon();
    PreparedStatement ps=con.prepareStatement("insert into money_bank values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,number);
	ps.setString(3,accountno);
	ps.setString(4,password);
	ps.setString(5,amount);
	ps.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
	}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("index.jsp?msg=invalid");
	}
%>