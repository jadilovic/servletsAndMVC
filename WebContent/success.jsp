<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Successful loged in data</title>
</head>
<body>
<p>You have loged in with</p>
<p>Email:</p> <%= request.getAttribute("email") %>
<p>Password:</p> <%= request.getAttribute("password") %>
</body>
</html>