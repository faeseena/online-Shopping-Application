<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
h3{
color:pink;
text-align: center;
}
body{
background: blue;

}
</style>
</head>
<body>
<div style="color: white; text-align: center;font-size: 30px; ">All Product and Edit Products</div>
<%String msg=getInitParameter("msg");
if("done".equals(msg))
{%>
	<h3>Successfully Updated</h3>	try{
		
<%} %>
<%if("wrong".equals(msg)) 

{%>
<h3>Something Wend Wrong</h3>
<%} %>
<table style="background: white; width: 80%; margin-left: 10%; text-align: center;">
<thead>
<tr>
<th scope="col">ID</th>
<th scope="col">NAME</th>
<th scope="col">CATEGORY</th>
<th scope="col">PRICE</th>
<th scope="col">STATUS</th>
<th scope="col">EDIT</th>
</tr></thead>
<tbody>
<tr>
<%
try{
Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet res=stmt.executeQuery("select *from product");
		while(res.next())
		{%>
		
		<td><%=res.getString(1) %></td>
		<td><%=res.getString(2) %></td>
		<td><%=res.getString(3) %></td>
		<td><%=res.getString(4) %></td>
		<td><%=res.getString(5) %></td>
		<td><a href="editProduct.jsp?id=<%=res.getString(1) %>">Edit</a></td>
		</tr>
		<%}%>
<%}catch (Exception e2) {
			e2.printStackTrace();
			}
		
		
		%>
			
	
		
		


</table>

</body>
</html>