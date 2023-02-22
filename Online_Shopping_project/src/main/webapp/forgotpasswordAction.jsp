<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String newpassword=request.getParameter("newpassword");
int check=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	ResultSet res=stmt.executeQuery("select * from user where name='"+name+"' && email='"+email+"' && mobileNumber='"+mobileNumber+"' && securityQuestion='"+securityQuestion+"' && janswer='"+answer+"'");
   while(res.next())
   {
	   check=1;
	   stmt.executeUpdate("update user set password='"+newpassword+"' where email='"+email+"'");
	   response.sendRedirect("forgotpassword.jsp?msg=done");
   }
	if(check==0)
	{
		 response.sendRedirect("forgotpassword.jsp?msg=invalid");
	}
	
	
}catch (Exception e2) {
	e2.printStackTrace();
	 response.sendRedirect("forgotpassword.jsp?msg=invalid");
	}
%><%=name %>
