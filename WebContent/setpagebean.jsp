<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set Page Bean</title>
</head>
<body>

<jsp:useBean id="osoba1" class="beans.Person" scope="page"></jsp:useBean>

<jsp:setProperty property="name" name="osoba1" value="Jasmin"/>
<jsp:setProperty property="id" name="osoba1" value="79"/>

Person Name: <%= osoba1.getName() %>
<p/>
Person ID: <%= osoba1.getId() %>
<p/>
Page Bean was Set
</body>
</html>