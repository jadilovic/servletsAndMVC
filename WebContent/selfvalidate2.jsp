<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Self Validate Page</title>
</head>
<body>
<h1>Please Login With Your Email and Password</h1>
<jsp:useBean id="user10" class="beans.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user10"/>

<%
if(user10.getEmail() != ""){
	if(user10.validate()){
		request.getRequestDispatcher("/Controller").forward(request, response);
	}
}
%>

<form action="/MVC/selfvalidate2.jsp" method="post">
<input type="text" name="email" value="<jsp:getProperty property="email" name="user10"/>" />
<input type="text" name="password" value="<jsp:getProperty property="password" name="user10"/>" />
<input type="submit" value="OK" />
</form>

</body>
</html>