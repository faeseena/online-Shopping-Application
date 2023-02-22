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
	<%int id=1;
	try{
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet res=stmt.executeQuery("select max(id)from product");
		while(res.next())
		{
			id=res.getInt(1);
			id=id+1;
			
		}
	}catch (Exception e2) {
		e2.printStackTrace();
		
		}

	%>
	<h3 style="color: yellow; text-align: center;">Product ID:<%out.println(id); %></h3>
	<div style="align-items:center;">
	<form action="addNewProductAction.jsp" method="post">
	<table>
	<tr><td>
	<input type="hidden" name="id" value="<%out.println(id); %>"></td>></tr>
	<tr><td><h3>Enter Name</h3></td><td><input type="text" name="name" placeholder="Enter Product Name" required="required"></td><td><h3>Enter CAtegory</h3></td><td>
	<input type="text" name="category" placeholder="Enter Category" required="required"></td></tr> 
	<tr><td><h3>Enter Price</h3></td><td><input type="text" name="price" placeholder="Enter Product price" required="required"></td><td><h3>Active</h3></td><td>
	<select name="active" >
	<option value="yes">yes</optgroup>
	<option value="no">no</option>
	
	</select></td></tr>
	<tr><td>
	<input type="submit" value="save" style="width: 100px; align-content: center;"></td></tr>
	</table>
	
    	
	</form>
	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>