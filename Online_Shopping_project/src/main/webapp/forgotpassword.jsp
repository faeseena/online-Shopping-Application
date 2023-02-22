<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
 <link rel="stylesheet" href="css/forgotpassword.css">
</head>
<body>
<div id='container'>
  <div class='login'>
    <form action="forgotpasswordAction.jsp" method="post">
    <table>
    <h1 class='head'>Sign Up Here</h1>
    <tr><td><input type="text" name='name' placeholder="Enter Name" required="required"></td></tr>
    <tr><td> <input type="email" name='email' placeholder="Enter Email Id" required="required"></td></tr>
     <tr><td> <input type="number" name='mobileNumber' placeholder="Enter Mobile Number" required="required"></td></tr>
     <tr><td> <select name="securityQuestion">
      <option value="Whtat's your First Car">Whtat's your First Car</option>
      <option value="Whats the name of pet">Whats the name of pet</option>
      <option value="Whats's the name of country you born">Whats's the name of country you born</option>
      <option value="What is the favouriate food">What is the favouriate food</option> 
      </select></td></tr>
   <tr><td> <input type="text" name='answer' placeholder="Enter Answer" required="required"></td></tr>
   <tr><td> <input type="password" name='newpassword' placeholder="Enter new password" required="required"></td></tr>
   <tr><td> <input type="submit" value="Sign Up"> </td></tr>
    </table>
    </form>
    <h2><a href="Login.jsp">Login</a></h2>
  
  </div>
  <div class='Whysign'>
  <%String msg=request.getParameter("msg") ;
  if("done".equals(msg))
  {
	  %>
	  <h3>password changed Successfully</h3>
	  <%}%>
  <%  if("invalid".equals(msg))
  {
	  %>
	  <h3>Something Went Wrong</h3>
	  <%}%> 
	  <h2>Online Shoping</h2>
	  
	  
 
	  
 
  
  
  </div>
</div>
</body>
</html>