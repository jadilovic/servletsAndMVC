<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="demo.*" %>
<% Cart cart = (Cart) session.getAttribute("cart");
if(cart == null){ %>
	<b>No items in the cart</b>
<%
} else{ %>
Items in the cart: <%= cart.getTotalItems() %>

<% } %>
</body>
</html>