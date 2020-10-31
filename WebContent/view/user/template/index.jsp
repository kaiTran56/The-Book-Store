<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/view/user/template" var="url" />
<!DOCTYPE html>
<html lang="zxx">

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
													<td class="si-pic"><img src="${ url}/img/select-product-1.jpg"
														alt=""></td>
													<td class="si-text">
														<div class="product-selected">
															<p>$2.42 x 1</p>
															<h6>Cho Toi Mot Ve Di Tuoi Tho</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close"></i></td>
												</tr>
												<tr>
													<td class="si-pic"><img src="${ url}/img/select-product-2.jpg"
														alt=""></td>
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
								<li><a href="${pageContext.request.contextPath }/view/user/profile">Profile User</a></li>
								<li><a href="${pageContext.request.contextPath }/view/register">Register</a></li>
								<li><a href="${pageContext.request.contextPath }/view/user/login">Login</a></li>
							</ul></li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>

	<section class="hero-section">
		<div class="hero-items owl-carousel">
			<div class="single-hero-items set-bg" data-setbg="${ url}/img/hero-1.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-5">
							<span>All products.</span>
							<h1>Black friday</h1>
							<p>You are a book lover, but sometimes you also run into
								problems with limited books. The upcoming Black Friday 2020
								program will be the day you should not miss, with super sales,
								deals with huge discounts.</p>
							<a href="#" class="primary-btn">Shop Now</a>
						</div>
					</div>
					<div class="off-card">
						<h2>
							Sale <span>10-30%</span>
						</h2>
					</div>
				</div>
			</div>
			<div class="single-hero-items set-bg" data-setbg="${ url}/img/hero-2.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-5">
							<span>All products.</span>
							<h1>Black friday</h1>
							<p>You are a book lover, but sometimes you also run into
								problems with limited books. The upcoming Black Friday 2020
								program will be the day you should not miss, with super sales,
								deals with huge discounts.</p>
							<a href="#" class="primary-btn">Shop Now</a>
						</div>
					</div>
					<div class="off-card">
						<h2>
							Sale <span>10-30%</span>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="banner-section spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-4">
					<div class="single-banner">
						<img src="${ url}/img/banner-1.jpg" alt="">
						<div class="inner-text">
							<h4>Novel</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="single-banner">
						<img src="${ url}/img/banner-2.jpg" alt="">
						<div class="inner-text">
							<h4>Comic</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="single-banner">
						<img src="${ url}/img/banner-3.jpg" alt="">
						<div class="inner-text">
							<h4>Science Fiction Book</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="women-banner spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3">
					<div class="product-large set-bg"
						data-setbg="${ url}/img/products/women-large.jpg">
						<h2>Best Seller</h2>
						<a href="#">Discover More</a>
					</div>
				</div>
				<div class="col-lg-8 offset-lg-1">
					<div class="filter-control">
						<ul>
							<li class="active">Fairy Tale</li>
							<li>Fable</li>
							<li>Short Story</li>
							<li>Nonfiction</li>
						</ul>
					</div>
					<div class="product-slider owl-carousel">
						<div class="product-item">
							<div class="pi-pic">
								<img src="${ url}/img/products/women-1.jpg" alt="">
								<div class="sale">Sale</div>
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Short Story</div>
								<a href="#">
									<h5>Mắt Biếc</h5>
								</a>
								<div class="product-price">$3.94</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="${ url}/img/products/women-2.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Novel</div>
								<a href="#">
									<h5>The World That We Knew</h5>
								</a>
								<div class="product-price">$10.99</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="${ url}/img/products/women-3.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Novel</div>
								<a href="#">
									<h5>Charlotte's Web</h5>
								</a>
								<div class="product-price">$18.95</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="${ url}/img/products/women-4.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Nonfiction</div>
								<a href="#">
									<h5>The Little Book of Happiness</h5>
								</a>
								<div class="product-price">$11.64</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="deal-of-week set-bg spad" data-setbg="${ url}/img/time-bg.jpg">
		<div class="container">
			<div class="col-lg-6 text-center">
				<div class="section-title">
					<h2>Deal $1</h2>
					<p>Deal of the week</p>
					<div class="product-price">
						$1 <span>/ Romance Novel</span>
					</div>
				</div>
				<div class="countdown-timer" id="countdown">
					<div class="cd-item">
						<span>56</span>
						<p>Days</p>
					</div>
					<div class="cd-item">
						<span>12</span>
						<p>Hrs</p>
					</div>
					<div class="cd-item">
						<span>40</span>
						<p>Mins</p>
					</div>
					<div class="cd-item">
						<span>52</span>
						<p>Secs</p>
					</div>
				</div>
				<a href="#" class="primary-btn">Shop Now</a>
			</div>
		</div>
	</section>

	<section class="man-banner spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">
					<div class="filter-control">
						<ul>
							<li class="active">Novel</li>
							<li>Dictionary</li>
							<li>Ghost Story</li>
							<li>More.</li>
						</ul>
					</div>
					<div class="product-slider owl-carousel">
						<div class="product-item">
							<div class="pi-pic">
								<img src="${ url}/img/products/man-1.jpg" alt="">
								<div class="sale">Sale</div>
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Reference Book</div>
								<a href="#">
									<h5>Oford Reference Grammar</h5>
								</a>
								<div class="product-price">$2.9</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="${ url}/img/products/man-2.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Novel</div>
								<a href="#">
									<h5>The Lord Of The Rings</h5>
								</a>
								<div class="product-price">$12.5</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="${ url}/img/products/man-3.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Thriller Book</div>
								<a href="#">
									<h5>Take On Me</h5>
								</a>
								<div class="product-price">$3.99</div>
							</div>
						</div>
						<div class="product-item">
							<div class="pi-pic">
								<img src="${ url}/img/products/man-4.jpg" alt="">
								<div class="icon">
									<i class="icon_heart_alt"></i>
								</div>
								<ul>
									<li class="w-icon active"><a href="#"><i
											class="icon_bag_alt"></i></a></li>
									<li class="quick-view"><a href="#">+ Quick View</a></li>
									<li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
								</ul>
							</div>
							<div class="pi-text">
								<div class="catagory-name">Novel</div>
								<a href="#">
									<h5>The Art of Holding On and Letting Go</h5>
								</a>
								<div class="product-price">$10.19</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1">
					<div class="product-large set-bg m-large"
						data-setbg="${ url}/img/products/man-large.jpg">
						<h2>Best Seller</h2>
						<a href="#">Discover More</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="instagram-photo">
		<div class="insta-item set-bg" data-setbg="${ url}/img/insta-1.jpg">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">onl.bookstore_Collection</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg" data-setbg="${ url}/img/insta-2.jpg">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">onl.bookstore_Collection</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg" data-setbg="${ url}/img/insta-3.jpg">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">onl.bookstore_Collection</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg" data-setbg="${ url}/img/insta-4.jpg">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">onl.bookstore_Collection</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg" data-setbg="${ url}/img/insta-5.jpg">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">onl.bookstore_Collection</a>
				</h5>
			</div>
		</div>
		<div class="insta-item set-bg" data-setbg="${ url}/img/insta-6.jpg">
			<div class="inside-text">
				<i class="ti-instagram"></i>
				<h5>
					<a href="#">onl.bookstore_Collection</a>
				</h5>
			</div>
		</div>
	</div>

	<section class="latest-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>From The Blog</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single-latest-blog">
						<img src="${ url}/img/latest-1.jpg" alt="">
						<div class="latest-text">
							<div class="tag-list">
								<div class="tag-item">
									<i class="fa fa-calendar-o"></i> May 4,2019
								</div>
								<div class="tag-item">
									<i class="fa fa-comment-o"></i> 5
								</div>
							</div>
							<a href="#">
								<h4>The Best Book</h4>
							</a>
							<p>Sed quia non numquam modi tempora indunt ut labore et
								dolore magnam aliquam quaerat</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-latest-blog">
						<img src="${ url}/img/latest-2.jpg" alt="">
						<div class="latest-text">
							<div class="tag-list">
								<div class="tag-item">
									<i class="fa fa-calendar-o"></i> May 4,2019
								</div>
								<div class="tag-item">
									<i class="fa fa-comment-o"></i> 5
								</div>
							</div>
							<a href="#">
								<h4>Vogue's Book</h4>
							</a>
							<p>New Book</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-latest-blog">
						<img src="${ url}/img/latest-3.jpg" alt="">
						<div class="latest-text">
							<div class="tag-list">
								<div class="tag-item">
									<i class="fa fa-calendar-o"></i> May 4,2019
								</div>
								<div class="tag-item">
									<i class="fa fa-comment-o"></i> 5
								</div>
							</div>
							<a href="#">
								<h4>Book Change</h4>
							</a>
							<p>Sed quia non numquam modi tempora indunt ut labore et
								dolore magnam aliquam quaerat</p>
						</div>
					</div>
				</div>
			</div>
			<div class="benefit-items">
				<div class="row">
					<div class="col-lg-4">
						<div class="single-benefit">
							<div class="sb-icon">
								<img src="${ url}/img/icon-1.png" alt="">
							</div>
							<div class="sb-text">
								<h6>Free Shipping</h6>
								<p>For all order over 20$</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="single-benefit">
							<div class="sb-icon">
								<img src="${ url}/img/icon-2.png" alt="">
							</div>
							<div class="sb-text">
								<h6>Delivery On Time</h6>
								<p>If good have prolems</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="single-benefit">
							<div class="sb-icon">
								<img src="${ url}/img/icon-1.png" alt="">
							</div>
							<div class="sb-text">
								<h6>Secure Payment</h6>
								<p>100% secure payment</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="footer-left">
						<div class="footer-logo">
							<a href="#"><img src="${ url}/img/footer-logo.png" alt=""></a>
						</div>
						<ul>
							<li>Address: Km9 Nguyen Trai, Trung Van Ward, Nam Tu Liem
								District, Ha Noi.</li>
							<li>Phone: +65 11.188.888</li>
							<li>Email: onl.bookstore@gmail.com</li>
						</ul>
						<div class="footer-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a>
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
							SAD FAll-
							<script>
								document.write(new Date().getFullYear());
							</script>
							|| This template is made with <i class="fa fa-heart-o"
								aria-hidden="true"></i> by <a href="https://myteam.com"
								target="_blank">MyTeam</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
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