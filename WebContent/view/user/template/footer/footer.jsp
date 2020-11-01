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