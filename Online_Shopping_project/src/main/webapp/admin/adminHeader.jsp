<%--@page errorPage="erroru" --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/home-style.css">

<script src="https://kit.fontawesome.com/5cbcd05217.js" crossorigin="anonymous"></script>
  


</head>

<br>
<div class="topnav sticky">
<% String email=session.getAttribute("email").toString();
%>

   
           
<center><h2>Online Shopping</h2></center>
<a href="addNewProduct.jsp" >Add New Product<i class="fa-solid fa-square-plus"></i></i></a>
<a href="allProductedit.jsp" >All Product & Edit Product<i class="fa-sharp fa-solid fa-pen-to-square"></i></i></a>
<a href="messagesReceived.jsp">Message Recieved<i class="fa-solid fa-message"></i></a>
<a href="ordersReceived.jsp">Order Recieves<i class="fa-solid fa-box-archive"></i></a>
<a href="cancelOrders.jsp">Cancel Order<i class="fa-solid fa-rectangle-xmark"></i></a>
<a href="deliveredOrders.jsp" >Deliverd Orders<i class="fa-sharp fa-solid fa-dolly"></i></a>
<a href="Logout.jsp">Logout<i class="fa-solid fa-right-from-bracket"></i></a>

</div>
</br>

</html>