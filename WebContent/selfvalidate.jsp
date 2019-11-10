<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="person7" class="beans.Person" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="person7"/>

<%
if(person7.getName() != null){
	if(person7.validate()){
		request.getRequestDispatcher("/FormController").forward(request, response);
	}
}
%>

<jsp:getProperty property="message" name="person7"/><br/>

<form action="/MVC/selfvalidate.jsp" method="post">
	<input type="text" name="name" value="<jsp:getProperty property="name" name="person7"/>" /><br/>
	<input type="text" name="id" value="<jsp:getProperty property="id" name="person7"/>" /><br/>
	<input type="submit" value="OK" />
</form>

</body>
</html>