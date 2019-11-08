<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Set Values of the Person Object / Class</title>
</head>
<body>

<jsp:useBean id="osoba" class="beans.Person" scope="session"></jsp:useBean>

<jsp:setProperty property="name" name="osoba" value="Jasmin"/>
<jsp:setProperty property="id" name="osoba" value="79"/>

</body>
</html>