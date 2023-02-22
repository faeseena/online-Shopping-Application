<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="Header.jsp" %>
<% 
String emailid=session.getAttribute("email").toString();
String product_id=request.getParameter("id");
int quantity=1;
int product_price=0;
int product_total=0;
int cart_total=0;
int z=0;
try{
Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	ResultSet res=stmt.executeQuery("select *from product where id='"+product_id+"'");
	while(res.next())
	{
		product_price=res.getInt(4);
		product_total=product_price;
	}
	ResultSet res1=stmt.executeQuery("select *from cart where product_id='"+product_id+"' and email='"+emailid+"' and address is NULL");
	while(res1.next())
	{
		cart_total=res1.getInt(5);
		cart_total=cart_total+product_total;
		quantity=res1.getInt(3);
		quantity=quantity+1;
		z=1;
	}
	
	if(z==1)
	{
		stmt.executeUpdate("update cart set total='"+cart_total+"',quantity='"+quantity+"' where product_id='"+product_id+"' and email='"+emailid+"'");
		response.sendRedirect("Home.jsp?msg=exist");
		
		
	}
	if(z==0)
	{
		PreparedStatement stmt1=con.prepareStatement("insert into cart(email,product_id,quantity,price,total)values(?,?,?,?,?)");
		stmt1.setString(1,emailid);
		stmt1.setString(2,product_id);
		stmt1.setInt(3,quantity);
		stmt1.setInt(4,product_price);
		stmt1.setInt(5,product_total);
		stmt1.executeUpdate();
		response.sendRedirect("Home.jsp?msg=added");
	}
}catch (Exception e2) {
	e2.printStackTrace();
	}

	%>
	
%>