<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/user/template" var="url" />
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>The Online Book Store</title>
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="${ url}/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="${ url}/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="${ url}/css/themify-icons.css"
	type="text/css">
<link rel="stylesheet" href="${ url}/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="${ url}/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="${ url}/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="${ url}/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="${ url}/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="${ url}/css/style.css" type="text/css">
</head>
<body>
	<div id="preloder">
		<div class="loader"></div>
	</div>


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
					<c:choose>
						<c:when test="${sessionScope.username == null }">
							<a href="${pageContext.request.contextPath}/view/user/login"
								class="login-panel"><i class="fa fa-user"></i>Login</a>
						</c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/view/logout"
								class="login-panel"><i class="fa fa-user"></i>Logout</a>
						</c:otherwise>
					</c:choose>
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
</body>
</html>