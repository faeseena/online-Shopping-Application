<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
h3{
color:purple;
text-align: center;

}
a{
color:red;
text-align: center;
}
</style>
</head>
<body style="background: blue">
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<%String msg=request.getParameter("msg");
if("done".equals(msg))
{	%>
<h3>Product add successfully..</h3>
<%} %>
<%if("wrong".equals(msg))
	{%>
	<h3>Some thing went Wrong</h3>
	<%} %> 
	<% if("exist".equals(msg))
{	%>
<h3>Product already in your cart,quantity Increased</h3>
<%} %>
<%if("added".equals(msg))
	{%>
	<h3>Prodect added to cart</h3>
	<%} %> 
	<table>
	<thred>
	<tr>
	<th scoope="col">Id</th>
	<th scoope="col">Name</th>
	<th scoope="col">Category</th>
	<th scoope="col">Price</th>
	<th scoope="col">Add To Cart</th>
	</tr>
	</thred>
	
<% 	try{
Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet res=stmt.executeQuery("select *from product where active='yes'");
		while(res.next())
		{%>
		<tr>
		<td><%=res.getString(1) %></td>
		<td><%=res.getString(2) %></td>
		<td><%=res.getString(3) %></td>
		<td><%=res.getString(4) %></td>
		<td><a href="addToActionCart.jsp?id=<%=res.getString(1)%>">Add to Cart</a></td>
		</tr>
	<%}
		}catch (Exception e2) {
			e2.printStackTrace();
			}
		
		
		%>

	
	
	
	</table>
<%@ include file="../footer.jsp" %>
</body>
</html>