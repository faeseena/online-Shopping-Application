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
		Statement stmt=con.createStatement();
	    stmt.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"' where id='"+id+"'");
	      if(active.equals("no"))
	      {
	    	  stmt.executeUpdate("delete from product where id='"+id+"'" );
	      }
		response.sendRedirect("allProductedit.jsp?msg=done");
		
		}catch (Exception e2) {
			e2.printStackTrace();
			response.sendRedirect("allProductedit.jsp?msg=invalid");
			}%>
		