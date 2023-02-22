<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email=session.getAttribute("email").toString();
String status="processing";
try{

	Connection con=ConnectionProvider.getCon();
	PreparedStatement pt=con.prepareStatement("update cart set status=? where email=? and status='bill'");
	pt.setString(1, status);
	pt.setString(2, email);
	pt.executeUpdate();
	response.sendRedirect("Home.jsp");
	
	

}catch(Exception e)
{
System.out.println(e);
}
%>