<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/wellstone/well_header.jsp" />
	
<!-- Slide -->
<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    
    </div>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active" style="background-image: url('/img/w_images/main_sildeBN_07.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>WELL STONE</h3>
                    <p>오랜 경력의 시공 전문업체 웰석재입니다.</p>
                </div>
            </div>

        </div>
</header>
<!-- /Slide -->

<!-- Page Content -->
<div id="sub_title" class="container">
    <h1 class="mt-4 mb-3">인사말</h1>
    <ol class="breadcrumb">
        <li class="breadcrumb-item">회사소개</li>
        <li class="breadcrumb-item active">인사말</li>
    </ol>
    <div style="margin-top: 20px;">
        <div class="card2 mb-4">
            <img class="card-img-top" src="/img/w_images/greetings.jpg">
        </div>
    </div>
</div>
<!-- /Page Content -->

<c:import url="/WEB-INF/views/wellstone/well_footer.jsp" />