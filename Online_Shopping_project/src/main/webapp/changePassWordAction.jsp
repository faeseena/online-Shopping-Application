<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String oldPassWord=request.getParameter("oldPassWord");
String newPassWord=request.getParameter("newPassWord");
String confirmPassWord=request.getParameter("confirmPassWord");

if(!confirmPassWord.equals(newPassWord))
{
	response.sendRedirect("changePassword.jsp?msg=notMatch");
}
else
{
	int check=0;
	try
	{
		Connection con=ConnectionProvider.getCon();
	    Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and password='"+oldPassWord+"'");
	    while(rs.next())
	    {
	    	check=1;
	    	st.executeUpdate("update user set password='"+newPassWord+"' where email='"+email+"' ");
	    	response.sendRedirect("changePassword.jsp?msg=done");
	    	
	    }
	    if(check==0)
	    {
	    	response.sendRedirect("changePassword.jsp?msg=wrong");
	    }
	}catch(Exception e){
		System.out.println(e);
	}
}

%>