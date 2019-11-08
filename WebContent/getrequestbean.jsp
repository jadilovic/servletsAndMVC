<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Request Bean</title>
</head>
<body>

<jsp:useBean id="osoba3" class="beans.Person" scope="request"></jsp:useBean>

Person name: <%= osoba3.getName() %>
<p/>
Perosn id: <%= osoba3.getId() %>
<p/>
GET REQUEST BEAN
</body>
</html>