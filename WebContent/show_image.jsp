<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ImageJDBC</title>
</head>
<body>
<h1>${requestScope.image}</h1>
	<img alt="This is image which load from JDBC" src="${pageContext.request.contextPath}/${requestScope.image}">
</body>
</html>