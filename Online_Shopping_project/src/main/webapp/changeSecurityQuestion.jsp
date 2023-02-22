<%@page import="com.demo.online.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %><html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src="https://kit.fontawesome.com/5cbcd05217.js"></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
	
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%if("wrong".equals(msg))
{
	
%>
<h3 class="alert">Your Password is wrong!</h3>

<%} %>
 <form action="changeSecurityAction.jsp" method="post">
<h3>Select Your New Securtiy Question</h3>
 <select class="input-style" name="securityQuestion">
      <option value="Whtat's your First Car">Whtat's your First Car</option>
      <option value="Whats the name of pet">Whats the name of pet</option>
      <option value="Whats's the name of country you born">Whats's the name of country you born</option>
      <option value="What is the favouriate food">What is the favouriate food</option> 
      </select>
 <hr>
 <h3>Enter Your New Answer</h3>
  <input class="input-style" type="text" name="newAnswer" placeholder="Enter Your New Answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
 <input class="input-style" type="password" name="password" placeholder="Enter Password(security)" required>
<hr>
<button class="button" type="submit">Save  <i class='far fa-arrow-alt-circle-right'></i></button>
</form> 
</body>
<br><br><br>
</html>