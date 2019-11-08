<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set Request Bean</title>
</head>
<body>

<jsp:useBean id="osoba3" class="beans.Person" scope="request"></jsp:useBean>

<jsp:setProperty property="name" name="osoba3" value="Adian"/>
<jsp:setProperty property="id" name="osoba3" value="9"/>

Person name: <%= osoba3.getName() %>
<p/>
Person id: <%= osoba3.getId() %>
<p/>
<% //response.sendRedirect("getrequestbean.jsp"); %>

<jsp:forward page="getrequestbean.jsp"></jsp:forward>
SET REQUEST BEAN

</body>
</html>