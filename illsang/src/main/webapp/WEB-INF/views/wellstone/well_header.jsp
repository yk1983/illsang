<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<c:set var="tar" value="${param.page}"/>
<c:set var="menuNm" value="${param.menuNm}"/>
<!DOCTYPE html>
<html>
<head>
    <title>Well Stone</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
   	<!-- Multiple File Upload -->
	<script src="/js/w_js/jquery.form.js"></script>
    
    
    <!-- datepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<!--     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script> -->

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    
    <!-- datepicker -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">

    <!-- Custom styles for this template -->
    <link href="/css/w_css/modern-business.css" rel="stylesheet">
    <link href="/css/w_css/common/common.css" rel="stylesheet">
    <c:choose>
    	<c:when test="${tar eq 'manager'}">
    		<link href="/css/w_css/manager/manager.css" rel="stylesheet">	
    	</c:when>
    	<c:otherwise>
			<link href="/css/w_css/main/main.css" rel="stylesheet">  
    		<link href="/css/w_css/sub/sub.css" rel="stylesheet">    	
    	</c:otherwise>
    </c:choose>
	<style>
        html,
        body {
            margin: 0;
            /* 리셋을 하지 않은 경우 추가 */
            height: 100%;
            /* overflow: hidden; */
        }

        .content {
            /* height: 100%; */
            /* height: 100vmax; */
        }
    </style>
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark fixed-top navibg">
		<div class="container">
			<a class="navbar-brand" href="/wellstone"> 
				<img src="/img/w_images/main_logo.png">
			</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<c:choose>
						<c:when test="${tar eq 'manager'}">
							<li class="nav-item">
								<a class="nav-link" href="/wellstone">logout</a>
							</li>
						</c:when>
						<c:otherwise>
							<c:forEach var="list" items="${menuList}" begin="0" step="1">
								<li class="nav-item dropdown">
									<c:choose>
										<c:when test="${menuNm eq list.menuNm}">
											<a class="nav-link active" href="${list.menuUrl}" id="nav-item" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">	
										</c:when>
										<c:otherwise>
											<a class="nav-link" href="${list.menuUrl}" id="nav-item" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">	
										</c:otherwise>
									</c:choose>
										${list.menuNm}
									</a>
									<div class="dropdown-menu dropdown-menu-right" aria-labelledby="nav-item">
									<c:forEach var="menu" items="${list.list}" begin="0" step="1">
										<a class="dropdown-item" href="${menu.menuUrl}">${menu.menuNm}</a>
									</c:forEach>
									</div>
								</li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
	<!-- /Navigation -->

<c:if test="${tar eq 'main'}">
	<!-- Slide -->
	 <header>
	     <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	         <ol class="carousel-indicators">
	             <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	             <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	             <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	         </ol>
	         <div class="carousel-inner" role="listbox">
	             <!-- Slide One - Set the background image for this slide in the line below -->
	             <div class="carousel-item active carousel-item-main" style="background-image: url('/img/w_images/main_sildeBN_03.jpg');">
	                 <div id="mainSlideArea" class="carousel-caption d-none d-md-block" style="bottom: 35%;">
	                     <h2>WELL STONE</h2>
	                     <p>천연석, 파벽돌, 인조석스톤 등 다양한 종류의 자재를 취급하는 시공 전문업체 '웰석재'입니다.</p>
	                 </div>
	             </div>
	             <!-- Slide Two - Set the background image for this slide in the line below -->
	             <div class="carousel-item carousel-item-main" style="background-image: url('/img/w_images/main_sildeBN_02.jpg');">
	                 <div id="mainSlideArea" class="carousel-caption d-none d-md-block" style="bottom: 35%;">
	                     <h2>WELL STONE</h2>
	                     <p>시공 전문업체로서 정직한 견적과 최고의 성실함으로 고객님을 대하겠습니다.</p>
	                 </div>
	             </div>
	             <!-- Slide Three - Set the background image for this slide in the line below -->
	             <div id="mainSlideArea" class="carousel-item carousel-item-main" style="background-image: url('/img/w_images/main_sildeBN_01.jpg');">
	                 <div class="carousel-caption d-none d-md-block" style="bottom: 35%;">
	                     <h2>WELL STONE</h2>
	                     <p>시공견적문의, 카달로그신청, 자재샘플신청 편하게 문의주세요. 빠른답장 드리겠습니다.</p>
	                 </div>
	             </div>
	         </div>
	         <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	             <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	             <span class="sr-only">Previous</span>
	         </a>
	         <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	             <span class="carousel-control-next-icon" aria-hidden="true"></span>
	             <span class="sr-only">Next</span>
	         </a>
	     </div>
	 </header>
	 <!-- /Slide -->
</c:if>