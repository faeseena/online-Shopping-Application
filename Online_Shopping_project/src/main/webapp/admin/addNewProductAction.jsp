<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>



<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");

try
	{
		Connection con=ConnectionProvider.getCon();
		PreparedStatement stmt=con.prepareStatement("Insert into product values(?,?,?,?,?)");
		stmt.setString(1, id);
		stmt.setString(2, name);
		stmt.setString(3, category);
		stmt.setString(4, price);
		stmt.setString(5, active);
		
		stmt.executeUpdate();
		response.sendRedirect("addNewProduct.jsp?msg=done");
		
	}catch (Exception e2) {
		e2.printStackTrace();
		response.sendRedirect("addNewProduct.jsp?msg=invalid");
		}
		%>