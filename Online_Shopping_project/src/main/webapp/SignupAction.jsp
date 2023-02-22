<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>



<%String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
String country="";

	try
	{
		Connection con=ConnectionProvider.getCon();
		PreparedStatement stmt=con.prepareStatement("Insert into user values(?,?,?,?,?,?,?,?,?,?)");
		stmt.setString(1, name);
		stmt.setString(2, email);
		stmt.setString(3, mobileNumber);
		stmt.setString(4, securityQuestion);
		stmt.setString(5, answer);
		stmt.setString(6, password);
		stmt.setString(7, address);
		stmt.setString(8, city);
		stmt.setString(9, state);
		stmt.setString(10, country);
		stmt.executeUpdate();
		response.sendRedirect("SignUp.jsp?msg=valid");
		
	}catch (Exception e2) {
		e2.printStackTrace();
		response.sendRedirect("SignUp.jsp?msg=invalid");
		}
		
	


%>
