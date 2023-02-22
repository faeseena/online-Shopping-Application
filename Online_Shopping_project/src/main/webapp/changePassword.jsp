<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src="https://kit.fontawesome.com/5cbcd05217.js" crossorigin="anonymous"></script>
<title>Message Us</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("notMatch".equals(msg))
{
	
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%} %>
<% if("wrong".equals(msg))
{
%>
<h3 class="alert">Your old Password is wrong!</h3>
<%} %>
<%if("done".equals(msg))
{
%>
<h3 class="alert">Password change successfully!</h3>
<%} %>
<%if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<form action="changePassWordAction.jsp" method="post">

<h3>Enter Old Password</h3>
 <input class="input-style" type="text" name="oldPassWord" placeholder="Enter Old PassWord" required>
  <hr>
 <h3>Enter New Password</h3>
  <input class="input-style" type="text" name="newPassWord" placeholder="Enter New PassWord" required>
 <hr>
<h3>Enter Confirm Password</h3>
 <input class="input-style" type="text" name="confirmPassWord" placeholder="Enter Confirm PassWord" required>
<hr>
<button class="button" type="submit">Save
 <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>