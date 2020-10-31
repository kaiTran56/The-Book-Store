
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
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="ht-left">
					<div class="mail-service">
						<i class=" fa fa-envelope"></i> onl.bookstore@gmail.com
					</div>
					<div class="phone-service">
						<i class=" fa fa-phone"></i> +65 11.188.888
					</div>
				</div>
				<div class="ht-right">
					<a href="${pageContext.request.contextPath}/view/user/login"
						class="login-panel"><i class="fa fa-user"></i>Login</a>
					<div class="lan-selector">
						<select class="language_drop" name="countries" id="countries"
							style="width: 300px;">
							<option value='yt' data-image="${ url}/img/flag-2.jpg"
								data-imagecss="flag yt" data-title="English">English</option>
							<option value='yu' data-image="${ url}/img/flag-1.jpg"
								data-imagecss="flag yu" data-title="Bangladesh">VietNam
							</option>
						</select>
					</div>
					<div class="top-social">
						<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
							class="ti-twitter-alt"></i></a> <a href="#"><i
							class="ti-linkedin"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="inner-header">
				<div class="row">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href="${url}/index.jsp"> <img src="${url}/img/logo.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-md-7">
						<div class="advanced-search">
							<button type="button" class="category-btn">All
								Categories</button>
							<form action="#" class="input-group">
								<input type="text"
									placeholder="What kinds of books do you need?">
								<button type="button">
									<i class="ti-search"></i>
								</button>
							</form>
						</div>
					</div>
					<div class="col-lg-3 text-right col-md-3">
						<ul class="nav-right">
							<li class="heart-icon"><a href="#"> <i
									class="icon_heart_alt"></i> <span>1</span>
							</a></li>
							<li class="cart-icon"><a href="#"> <i
									class="icon_bag_alt"></i> <span>2</span>
							</a>
								<div class="cart-hover">
									<div class="select-items">
										<table>
											<tbody>
												<tr>
													<td class="si-pic"><img
														src="${ url}/img/select-product-1.jpg" alt=""></td>
													<td class="si-text">
														<div class="product-selected">
															<p>$2.42 x 1</p>
															<h6>Cho Toi Mot Ve Di Tuoi Tho</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close"></i></td>
												</tr>
												<tr>
													<td class="si-pic"><img
														src="${ url}/img/select-product-2.jpg" alt=""></td>
													<td class="si-text">
														<div class="product-selected">
															<p>$3.94 x 1</p>
															<h6>Mat Biec</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close"></i></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="select-total">
										<span>total:</span>
										<h5>$6.36</h5>
									</div>
									<div class="select-button">
										<a href="#" class="primary-btn view-card">VIEW CARD</a> <a
											href="#" class="primary-btn checkout-btn">CHECK OUT</a>
									</div>
								</div></li>
							<li class="cart-price">$100.00</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn">
						<i class="ti-menu"></i> <span>All departments</span>
						<ul class="depart-hover">
							<li class="active"><a href="#">Textbook </a></li>
							<li><a href="#">Novel</a></li>
							<li><a href="#">Comic</a></li>
							<li><a href="#">Reference Book</a></li>
							<li><a href="#">Thriller Book</a></li>
							<li><a href="#">Short Story</a></li>
							<li><a href="#">Science Fiction Book</a></li>
						</ul>
					</div>
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
						<li><a href="${url}/index.jsp">Home</a></li>
						<li><a href="${ url}/shop.jsp">Shop</a></li>
						<li><a href="#">Language of Book</a>
							<ul class="dropdown">
								<li><a href="#">English</a></li>
								<li><a href="#">Vietnamese</a></li>
							</ul></li>
						<li><a href="${ url}/contact.jsp">Contact</a></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								<li><a href="${ url}/blog-details.jsp">Blog Details</a></li>
								<li><a href="${ url}/shopping-cart.jsp">Shopping Cart</a></li>
								<li><a href="${ url}/check-out.jsp">Checkout</a></li>
								<li><a
									href="${pageContext.request.contextPath }/view/user/profile">Profile
										User</a></li>
								<li><a
									href="${pageContext.request.contextPath }/view/register">Register</a></li>
								<li><a
									href="${pageContext.request.contextPath }/view/user/login">Login</a></li>
							</ul></li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>
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
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="footer-left">
						<div class="footer-logo">
							<a href="#"><img src="${url}/img/footerlogo.png" alt=""></a>
						</div>
						<ul>
							<li>Address: km9 Nguyen Trai, Ha Noi University, Trung Van
								Ward, Nam Tu Liem District, Ha Noi</li>
							<li>Phone: +65 11.188.888</li>
							<li>Email: onl.bookstore@gmail.com</li>
						</ul>
						<div class="footer-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-pinterest"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 offset-lg-1">
					<div class="footer-widget">
						<h5>Information</h5>
						<ul>
							<li><a href="#">About Us</a></li>
							<li><a href="#">Checkout</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Serivius</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="footer-widget">
						<h5>My Account</h5>
						<ul>
							<li><a href="#">My Account</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Shopping Cart</a></li>
							<li><a href="#">Shop</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="newslatter-item">
						<h5>Join Our Newsletter Now</h5>
						<p>Get E-mail updates about our latest shop and special
							offers.</p>
						<form action="#" class="subscribe-form">
							<input type="text" placeholder="Enter Your Mail">
							<button type="button">Subscribe</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright-reserved">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="copyright-text">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</div>
						<div class="payment-pic">
							<img src="${url}/img/payment-method.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="${ url}/js/jquery-3.3.1.min.js"></script>
	<script src="${ url}/js/bootstrap.min.js"></script>
	<script src="${ url}/js/jquery-ui.min.js"></script>
	<script src="${ url}/js/jquery.countdown.min.js"></script>
	<script src="${ url}/js/jquery.nice-select.min.js"></script>
	<script src="${ url}/js/jquery.zoom.min.js"></script>
	<script src="${ url}/js/jquery.dd.min.js"></script>
	<script src="${ url}/js/jquery.slicknav.js"></script>
	<script src="${ url}/js/owl.carousel.min.js"></script>
	<script src="${ url}/js/main.js"></script>
</body>
</html>