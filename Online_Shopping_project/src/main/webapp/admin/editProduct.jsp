 <%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Product</title>
</head>
<body style="background: blue;">
<% 
String msg=request.getParameter("msg");
if("done".equals(msg))
{	%>
<h3>Product add successfully..</h3>
<%} %>
<%if("wrong".equals(msg))
	{%>
	<h3>Some thing went Wrong</h3>
	<%} %>
	<%

		try{
			String id=request.getParameter("id");
		
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet res=stmt.executeQuery("select * from product  where id='"+id+"'");
		while(res.next())
		{
	
	%>
	<h3 style="color: pink; text-align: center;">Product ID:<%out.println(id); %></h3>
	<div style="align-items:center;">
	<form action="editProductAction.jsp" method="post">
	<table>
	<tr><td>
	<input type="hidden" name="id" value="<%out.println(id); %>"></td>></tr>
	<tr><td><h3>Enter Name</h3></td><td><input type="text" name="name"  required="required" value="<%=res.getString(2) %>"></td><td><h3>Enter CAtegory</h3></td><td>
	<input type="text" name="category"  required="required" value="<%=res.getString(3) %>"></td></tr> 
	<tr><td><h3>Enter Price</h3></td><td><input type="text" name="price" required="required" value="<%=res.getString(4) %>"></td><td><h3>Active</h3></td><td>
	<select name="active" >
	<option value="yes">yes</optgroup>
	<option value="no">no</option>
	
	</select></td></tr>
	<tr><td>
	<input type="submit" value="save" style="width: 100px; align-content: center;"></td></tr>
	</table>
	
    	
	</form>
	<%} %>
	</div>

		
	<%}catch (Exception e2) {
		e2.printStackTrace();
		
		} %>
		
	
<%@ include file="../footer.jsp" %>
</body>
</html>