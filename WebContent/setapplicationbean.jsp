<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set Application Bean</title>
</head>
<body>

<jsp:useBean id="osoba2" class="beans.Person" scope="application"></jsp:useBean>

<jsp:setProperty property="name" name="osoba2" value="Sefik"/>
<jsp:setProperty property="id" name="osoba2" value="81"/>

Set Application Bean
</body>
</html>