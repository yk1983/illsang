<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Cafe iLLSang</title>

<!-- Favicon  -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/css/core-style.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/site/magazine.css">

</head>

<body>
	<!-- Search Wrapper Area Start -->
	<div class="search-wrapper section-padding-100">
		<div class="search-close">
			<i class="fa fa-close" aria-hidden="true"></i>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="search-content">
						<form action="#" method="get">
							<input type="search" name="search" id="search"
								placeholder="Type your keyword...">
							<button type="submit">
								<img src="/img/core-img/search.png" alt="">
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Search Wrapper Area End -->

	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">

		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<!-- <a href="/"><img src="/img/core-img/logo.png"
					alt="cafeillsang logo"></a> -->
				<h1><a href="/">ILLSANG</a></h1>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>

		<!-- Header Area Start -->
		<header class="header-area clearfix">
			<!-- Close Icon -->
			<div class="nav-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			<!-- Logo -->
			<div class="logo">
				<!-- <a href="/"><img src="/img/core-img/logo.png"
					alt="cafeillsang logo"></a>-->
				<a href="/">ILLSANG</a>
			</div>
			<!-- Amado Nav -->
			<nav class="amado-nav">
				<ul>
					<li class="<c:out value="${param.home }" />"><a href="/">로스터리</a></li>
					<li class="<c:out value="${param.menu }" />"><a href="/menu">메뉴</a></li>
					<li class="<c:out value="${param.dlvr }" />"><a href="/bean-delivery">원두납품</a></li>
					<li class="<c:out value="${param.mgzn }" />"><a href="/magazine">매거진</a></li>
					<li class="<c:out value="${param.shop }" />"><a href="/shop">SHOP</a></li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100">
				<a href="#" class="btn amado-btn mb-15">로그인</a> <a href="#"
					class="btn amado-btn active">회원가입</a>
			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100">
				<a href="/shop/cart" class="cart-nav"><img
					src="/img/core-img/cart.png" alt=""> 장바구니 <span>(0)</span></a> <a
					href="#" class="fav-nav"><img src="/img/core-img/favorites.png"
					alt=""> 즐겨찾기</a> <a href="#" class="search-nav"><img
					src="/img/core-img/search.png" alt=""> 검색</a>
			</div>
			<!-- Social Button -->
			<div class="social-info d-flex justify-content-between">
				<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
			</div>
		</header>
		<!-- Header Area End -->