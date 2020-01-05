<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<!--
 =========================================================
 Cafe iLLSang
 =========================================================
 Program History
 Date           Name          Description
 ----------     ----------    ----------------------------
 2020.01.02                   최초작성
 =========================================================
-->
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="/img/mngr/apple-icon.png">
<link rel="icon" type="image/png" href="/img/mngr/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Cafe iLLSang Admin</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="/css/dashboard.css?v=2.1.0" rel="stylesheet" />
</head>

<c:choose>
	<c:when test="${param.tpl_type eq 'fluid' }">
		<body class="">
			<div class="wrapper ">
				<div class="sidebar" data-color="rose" data-background-color="black"
					data-image="/img/mngr/sidebar-1.jpg">
					<!--
			        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
			        Tip 2: you can also add an image using data-image tag
			    -->
					<div class="logo">
						<a href="/sr-admin" class="simple-text logo-mini"> CI </a> <a
							href="/sr-admin" class="simple-text logo-normal"> Cafe
							iLLSang </a>
					</div>
					<div class="sidebar-wrapper">
						<div class="user">
							<div class="photo">
								<img src="/img/mngr/faces/avatar.jpg" />
							</div>
							<div class="user-info">
								<a data-toggle="collapse" href="#collapseExample"
									class="username"> <span> Tania Andrew <b
										class="caret"></b>
								</span>
								</a>
								<div class="collapse" id="collapseExample">
									<ul class="nav">
										<li class="nav-item"><a class="nav-link" href="#"> <span
												class="sidebar-mini"> MP </span> <span
												class="sidebar-normal"> My Profile </span>
										</a></li>
										<li class="nav-item"><a class="nav-link" href="#"> <span
												class="sidebar-mini"> EP </span> <span
												class="sidebar-normal"> Edit Profile </span>
										</a></li>
										<li class="nav-item"><a class="nav-link" href="#"> <span
												class="sidebar-mini"> S </span> <span class="sidebar-normal">
													Settings </span>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
						<ul class="nav">
							<li class="nav-item active "><a class="nav-link"
								href="/sr-admin/dashboard.html"> <i class="material-icons">dashboard</i>
									<p>Dashboard</p>
							</a></li>
							<li class="nav-item "><a class="nav-link"
								data-toggle="collapse" href="#pagesExamples"> <i
									class="material-icons">image</i>
									<p>
										Pages <b class="caret"></b>
									</p>
							</a>
								<div class="collapse" id="pagesExamples">
									<ul class="nav">
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/pages/pricing.html"> <span
												class="sidebar-mini"> P </span> <span class="sidebar-normal">
													Pricing </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/pages/rtl.html"> <span
												class="sidebar-mini"> RS </span> <span
												class="sidebar-normal"> RTL Support </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/pages/timeline.html"> <span
												class="sidebar-mini"> T </span> <span class="sidebar-normal">
													Timeline </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/pages/login.html"> <span
												class="sidebar-mini"> LP </span> <span
												class="sidebar-normal"> Login Page </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/pages/register.html"> <span
												class="sidebar-mini"> RP </span> <span
												class="sidebar-normal"> Register Page </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/pages/lock.html"> <span
												class="sidebar-mini"> LSP </span> <span
												class="sidebar-normal"> Lock Screen Page </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/pages/user.html"> <span
												class="sidebar-mini"> UP </span> <span
												class="sidebar-normal"> User Profile </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/pages/error.html"> <span
												class="sidebar-mini"> E </span> <span class="sidebar-normal">
													Error Page </span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link"
								data-toggle="collapse" href="#componentsExamples"> <i
									class="material-icons">settings_system_daydream</i>
									<p>
										시스템관리 <b class="caret"></b>
									</p>
							</a>
								<div class="collapse" id="componentsExamples">
									<ul class="nav">
										<li class="nav-item "><a class="nav-link"
											data-toggle="collapse" href="#componentsCollapse"> <span
												class="sidebar-mini"> MLT </span> <span
												class="sidebar-normal"> Multi Level Collapse <b
													class="caret"></b>
											</span>
										</a>
											<div class="collapse" id="componentsCollapse">
												<ul class="nav">
													<li class="nav-item "><a class="nav-link" href="#0">
															<span class="sidebar-mini"> E </span> <span
															class="sidebar-normal"> Example </span>
													</a></li>
												</ul>
											</div></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/components/buttons.html"> <span
												class="sidebar-mini"> B </span> <span class="sidebar-normal">
													Buttons </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/components/grid.html"> <span
												class="sidebar-mini"> GS </span> <span
												class="sidebar-normal"> Grid System </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/components/panels.html"> <span
												class="sidebar-mini"> P </span> <span class="sidebar-normal">
													Panels </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/components/sweet-alert.html"> <span
												class="sidebar-mini"> SA </span> <span
												class="sidebar-normal"> Sweet Alert </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/components/notifications.html"> <span
												class="sidebar-mini"> N </span> <span class="sidebar-normal">
													Notifications </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/components/icons.html"> <span
												class="sidebar-mini"> I </span> <span class="sidebar-normal">
													Icons </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/components/typography.html"> <span
												class="sidebar-mini"> T </span> <span class="sidebar-normal">
													Typography </span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link"
								data-toggle="collapse" href="#formsExamples"> <i
									class="material-icons">assignment_ind</i>
									<p>
										회원관리 <b class="caret"></b>
									</p>
							</a>
								<div class="collapse" id="formsExamples">
									<ul class="nav">
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/forms/regular.html"> <span
												class="sidebar-mini"> RF </span> <span
												class="sidebar-normal"> Regular Forms </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/forms/extended.html"> <span
												class="sidebar-mini"> EF </span> <span
												class="sidebar-normal"> Extended Forms </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/forms/validation.html"> <span
												class="sidebar-mini"> VF </span> <span
												class="sidebar-normal"> Validation Forms </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/forms/wizard.html"> <span
												class="sidebar-mini"> W </span> <span class="sidebar-normal">
													Wizard </span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link"
								data-toggle="collapse" href="#tablesExamples"> <i
									class="material-icons">settings_applications</i>
									<p>
										마스터관리 <b class="caret"></b>
									</p>
							</a>
								<div class="collapse" id="tablesExamples">
									<ul class="nav">
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/tables/regular.html"> <span
												class="sidebar-mini"> RT </span> <span
												class="sidebar-normal"> Regular Tables </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/tables/extended.html"> <span
												class="sidebar-mini"> ET </span> <span
												class="sidebar-normal"> Extended Tables </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/tables/datatables.net.html"> <span
												class="sidebar-mini"> DT </span> <span
												class="sidebar-normal"> DataTables.net </span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link"
								data-toggle="collapse" href="#tablesExamples"> <i
									class="material-icons">move_to_inbox</i>
									<p>
										입고관리 <b class="caret"></b>
									</p>
							</a>
								<div class="collapse" id="tablesExamples">
									<ul class="nav">
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/tables/regular.html"> <span
												class="sidebar-mini"> RT </span> <span
												class="sidebar-normal"> Regular Tables </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/tables/extended.html"> <span
												class="sidebar-mini"> ET </span> <span
												class="sidebar-normal"> Extended Tables </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/tables/datatables.net.html"> <span
												class="sidebar-mini"> DT </span> <span
												class="sidebar-normal"> DataTables.net </span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link"
								data-toggle="collapse" href="#tablesExamples"> <i
									class="material-icons">all_inbox</i>
									<p>
										재고관리 <b class="caret"></b>
									</p>
							</a>
								<div class="collapse" id="tablesExamples">
									<ul class="nav">
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/tables/regular.html"> <span
												class="sidebar-mini"> RT </span> <span
												class="sidebar-normal"> Regular Tables </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/tables/extended.html"> <span
												class="sidebar-mini"> ET </span> <span
												class="sidebar-normal"> Extended Tables </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/tables/datatables.net.html"> <span
												class="sidebar-mini"> DT </span> <span
												class="sidebar-normal"> DataTables.net </span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link"
								data-toggle="collapse" href="#mapsExamples"> <i
									class="material-icons">shopping_cart</i>
									<p>
										주문관리 <b class="caret"></b>
									</p>
							</a>
								<div class="collapse" id="mapsExamples">
									<ul class="nav">
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/maps/google.html"> <span
												class="sidebar-mini"> GM </span> <span
												class="sidebar-normal"> Google Maps </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/maps/fullscreen.html"> <span
												class="sidebar-mini"> FSM </span> <span
												class="sidebar-normal"> Full Screen Map </span>
										</a></li>
										<li class="nav-item "><a class="nav-link"
											href="/sr-admin/maps/vector.html"> <span
												class="sidebar-mini"> VM </span> <span
												class="sidebar-normal"> Vector Map </span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link"
								href="/sr-admin/widgets.html"> <i class="material-icons">widgets</i>
									<p>Widgets</p>
							</a></li>
							<li class="nav-item "><a class="nav-link"
								href="/sr-admin/charts.html"> <i class="material-icons">timeline</i>
									<p>Charts</p>
							</a></li>
							<li class="nav-item "><a class="nav-link"
								href="/sr-admin/calendar.html"> <i class="material-icons">date_range</i>
									<p>Calendar</p>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="main-panel">
					<!-- Navbar -->
					<nav
						class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
						<div class="container-fluid">
							<div class="navbar-wrapper">
								<div class="navbar-minimize">
									<button id="minimizeSidebar"
										class="btn btn-just-icon btn-white btn-fab btn-round">
										<i
											class="material-icons text_align-center visible-on-sidebar-regular">more_vert</i>
										<i
											class="material-icons design_bullet-list-67 visible-on-sidebar-mini">view_list</i>
									</button>
								</div>
								<a class="navbar-brand" href="#pablo"><c:out value="${param.ttl_name }" /></a>
							</div>
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" aria-controls="navigation-index"
								aria-expanded="false" aria-label="Toggle navigation">
								<span class="sr-only">Toggle navigation</span> <span
									class="navbar-toggler-icon icon-bar"></span> <span
									class="navbar-toggler-icon icon-bar"></span> <span
									class="navbar-toggler-icon icon-bar"></span>
							</button>
							<div class="collapse navbar-collapse justify-content-end">
								<form class="navbar-form">
									<div class="input-group no-border">
										<input type="text" value="" class="form-control"
											placeholder="Search...">
										<button type="submit"
											class="btn btn-white btn-round btn-just-icon">
											<i class="material-icons">search</i>
											<div class="ripple-container"></div>
										</button>
									</div>
								</form>
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="#pablo">
											<i class="material-icons">dashboard</i>
											<p class="d-lg-none d-md-block">Stats</p>
									</a></li>
									<li class="nav-item dropdown"><a class="nav-link"
										href="http://example.com" id="navbarDropdownMenuLink"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> <i class="material-icons">notifications</i>
											<span class="notification">5</span>
											<p class="d-lg-none d-md-block">Some Actions</p>
									</a>
										<div class="dropdown-menu dropdown-menu-right"
											aria-labelledby="navbarDropdownMenuLink">
											<a class="dropdown-item" href="#">Mike John responded to
												your email</a> <a class="dropdown-item" href="#">You have 5
												new tasks</a> <a class="dropdown-item" href="#">You're now
												friend with Andrew</a> <a class="dropdown-item" href="#">Another
												Notification</a> <a class="dropdown-item" href="#">Another
												One</a>
										</div></li>
									<li class="nav-item dropdown"><a class="nav-link"
										href="#pablo" id="navbarDropdownProfile"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> <i class="material-icons">person</i>
											<p class="d-lg-none d-md-block">Account</p>
									</a>
										<div class="dropdown-menu dropdown-menu-right"
											aria-labelledby="navbarDropdownProfile">
											<a class="dropdown-item" href="#">Profile</a> <a
												class="dropdown-item" href="#">Settings</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Log out</a>
										</div></li>
								</ul>
							</div>
						</div>
					</nav>
					<!-- End Navbar -->
	</c:when>
	<c:otherwise>
		<body class="off-canvas-sidebar">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top text-white">
				<div class="container">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#pablo">${ttl_name }</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="sr-only">Toggle navigation</span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">
						<ul class="navbar-nav">
							<li class="nav-item"><a href="/sr-admin"
								class="nav-link"> <i class="material-icons">dashboard</i>
									Dashboard
							</a></li>
							<li class="nav-item "><a href="../pages/register.html"
								class="nav-link"> <i class="material-icons">person_add</i>
									Register
							</a></li>
							<li class="nav-item  active "><a href="../pages/login.html"
								class="nav-link"> <i class="material-icons">fingerprint</i>
									Login
							</a></li>
							<li class="nav-item "><a href="../pages/lock.html"
								class="nav-link"> <i class="material-icons">lock_open</i>
									Lock
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
	</c:otherwise>
</c:choose>