<%@page import="project.Connection_project"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String contactno=request.getParameter("contactno");
String password=request.getParameter("password");
String accnum=request.getParameter("accnum");
String rname=request.getParameter("rname");
String raccnum=request.getParameter("raccnum");
String amt=request.getParameter("amt");
try
{
	Connection con=Connection_project.getCon();
	PreparedStatement ps=con.prepareStatement("insert into bank_history values(?,?,?,?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,contactno);
	ps.setString(4,password);
	ps.setString(5,accnum);
	ps.setString(6,rname);
	ps.setString(7,raccnum);
	ps.setString(8,amt);
	ps.executeUpdate();
	
	response.sendRedirect("addNewTransfer.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("addNewTransfer.jsp?msg=invalid");
	}
%>