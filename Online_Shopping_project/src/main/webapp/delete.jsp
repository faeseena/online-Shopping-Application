
<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete</title>
</head>
<body>

<%String product_id=request.getParameter("id");
System.out.print("product id="+product_id);
try{
Connection con=ConnectionProvider.getCon();
	
	PreparedStatement stmt=con.prepareStatement("delete from cart where product_id='"+product_id+"'");
	stmt.executeUpdate();
	response.sendRedirect("cart.jsp?msg=delete product");
}catch (Exception e2) {
	e2.printStackTrace();
	}

	%>

</body>
</html>