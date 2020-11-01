
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/user/template" var="url" />


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Profile User</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="${url}/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/themify-icons.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="${url}/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="${url}/css/style.css" type="text/css">

<style>
body {
	/* font-family: Georgia, 'Times New Roman', Times, serif; */
	font-size: 18px;
}

.col-xs-6 p {
	font-family: "Muli", sans-serif;
	font-style: oblique;
	font-size: 18px;
	color: #4e4c48;
	/* font-family: Georgia, 'Times New Roman', Times, serif; */
}

.col-xs-6 h4 {
	color: #e7ab3c;
}

.col-sm-9 a {
	color: #e7ab3c;
	font-family: "Muli", sans-serif;
	font-size: 25px;
}

table {
	font-family: "Muli", sans-serif;
	border-collapse: collapse;
	width: 100%;
	margin-top: 20px;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #e7ab3c;
}

.container {
	width: 100%;
}

.nav-tabs {
	border-bottom: 1px solid #ddd;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: rgb(221, 221, 221);
}

.row {
	margin-top: 28px;
	margin-bottom: 30px;
}

.col-xs-6 hr {
	margin-top: -20px;
	border: 0.3px solid #e9eaec;
}

.col-sm-9 li {
	font-family: "Muli", sans-serif;
	font-weight: bold;
	font-size: 24px;
}

.btn btn-lg btn-success {
	color: #e7ab3c;
}
</style>
</head>
<body>
	<%
		response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");

	if (session.getAttribute("username") == null) {
		response.sendRedirect(request.getContextPath() + "/view/user/login");
	}
	%>
	<jsp:include page="/view/user/template/header/header.jsp" flush="true" />
	<div></div>
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-9">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#home">_______HOME________</a></li>
					<li><a data-toggle="tab" href="#messages">EDIT
							PROFILE________</a></li>
					<li><a data-toggle="tab" href="#settings"> HISTORY_______
					</a></li>
				</ul>


				<div class="tab-content">
					<div class="tab-pane active" id="home">
						<hr>

						<div class="col-xs-6">
							<h4>User Name</h4>
							<p id="user-name">${requestScope.userDetail.name}</p>
							<hr>
						</div>
						<div class="col-xs-6">
							<h4>Phone</h4>
							<p id="phone">${requestScope.userDetail.phone}</p>
							<hr>
						</div>

						<div class="col-xs-6">
							<h4>Email</h4>
							<p id="email">${requestScope.userDetail.email}</p>
							<hr>
						</div>
						<div class="col-xs-6">
							<h4>Location</h4>
							<p id="location">${requestScope.userDetail.address}</p>
							<hr>
						</div>
						<div class="col-xs-6">
							<h4>Date of Birth</h4>
							<p id="password">${requestScope.userDetail.dateOfBirth}</p>
							<hr>

						</div>
						<div class="col-xs-6">
							<h4>Created Day</h4>
							<p id="">${requestScope.userDetail.created}</p>
							<hr>

						</div>
					</div>
					<!--/tab-pane-->

					<div class="tab-pane" id="messages">

						<hr>
						<form class="form"
							action="${pageContext.request.contextPath}/view/user/edit"
							method="get" id="registrationForm">

							<div class="form-group">

								<div class="col-xs-6">
									<label for="last_name"><h4>User Name</h4></label> <input
										type="text" class="form-control" name="nameTemp"
										id="last_name" value="${requestScope.userDetail.name}">
								</div>
							</div>

							<div class="form-group">

								<div class="col-xs-6">
									<label for="phone"><h4>Phone</h4></label> <input type="text"
										class="form-control" name="phoneTemp" id="phone"
										value="${requestScope.userDetail.phone}">
								</div>
							</div>


							<div class="col-xs-6">
								<h4>Email</h4>
								<p id="email">${requestScope.userDetail.email}</p>
								<hr>
							</div>

							<div class="form-group">

								<div class="col-xs-6">
									<label for="email"><h4>Location</h4></label> <input type="text"
										class="form-control" name="addressTemp" id="location"
										value="${requestScope.userDetail.address}">
								</div>
							</div>

							<div class="form-group">

								<div class="col-xs-6">
									<label for="password2"><h4>Date of Birth</h4></label> <input
										type="text" class="form-control" name="dobTemp"
										value="${requestScope.userDetail.dateOfBirth}">
								</div>
							</div>

							<div class="col-xs-6">
								<h4>Created Day</h4>
								<p id="">${requestScope.userDetail.created}</p>
								<hr>

							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-lg btn-success" type="submit">
										<i class="glyphicon glyphicon-ok-sign"></i> Save
									</button>
								</div>
							</div>
						</form>

					</div>

					<div class="tab-pane" id="settings">



						<div class="form-group">

							<table>
								<tr>
									<th>Name Book</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total Money</th>
									<th>Ordered Date</th>
								</tr>
								<tr>
									<td>Detective Conan</td>
									<td>$3</td>
									<td>2</td>
									<td>$6</td>
									<td>10/10/2020</td>
								</tr>
								<tr>
									<td>Sherlock Holmes</td>
									<td>$13</td>
									<td>3</td>
									<td>$39</td>
									<td>11/10/2020</td>
								</tr>

							</table>
						</div>


						</form>
					</div>

				</div>
				<!--/tab-pane-->
				<!--/tab-content-->

			</div>
			<!--/col-9-->
		</div>
		<!--/row-->
	</div>

	<div class="partner-logo">
		<div class="container">
			<div class="logo-carousel owl-carousel">
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="${url}/img/logo-carousel/logo-1.png" alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="${url}/img/logo-carousel/logo-2.png" alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="${url}/img/logo-carousel/logo-3.png" alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="${url}/img/logo-carousel/logo-4.png" alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img src="${url}/img/logo-carousel/logo-5.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Partner Logo Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page ="/view/user/template/footer/footer.jsp" flush = "true"/>
</body>
</html>