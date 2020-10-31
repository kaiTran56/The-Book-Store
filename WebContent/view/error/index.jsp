<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Error</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
body {
	margin: 0;
	background-color: rgb(160, 231, 146);
}

#image {
	background-image:
		url(${pageContext.request.contextPath}/view/error/image/404_page_cover.jpg);
	border-style: outset;
	border-width: 4px;
	border-color: cornsilk;
	margin-right: 10%;
	margin-left: 10%;
	margin-top: 5%;
	margin-bottom: 5%;
	margin-left: auto;
	margin-right: auto;
	height: 500px;
	width: 60%;
}

#Back {
	margin-left: 40%;
	padding-top: 450px;
}

#backButton {
	background-color: rgb(11, 134, 241);
	height: 30px;
	border-radius: 20px;
	color: white;
}

@media all and (max-width: 700px) {
	#image {
		max-width: max-content;
		margin-top: 5%;
		margin-bottom: 5%;
	}
}
</style>

</head>

<body>
	<div id="image">

		<a href="${pageContext.request.contextPath}/view/user/homepage"><button
				id="backButton">GO TO THE HOME PAGE</button> </a>
	</div>
</body>

</html>