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
	<%--Header of Website	 --%>
	<jsp:include page="/view/user/template/header/header.jsp" flush="true" />

	<%--Header of Website	 --%>


	<section class="hero-section">
		<div class="hero-items owl-carousel">
			<div class="single-hero-items set-bg"
				data-setbg="${ url}/img/hero-1.jpg">
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
			<div class="single-hero-items set-bg"
				data-setbg="${ url}/img/hero-2.jpg">
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

	<section class="deal-of-week set-bg spad"
		data-setbg="${ url}/img/time-bg.jpg">
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

	<%--Footer of Website --%>

	<jsp:include page="/view/user/template/footer/footer.jsp" flush="true" />
	
</body>

</html>