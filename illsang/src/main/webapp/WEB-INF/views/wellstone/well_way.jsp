<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/wellstone/well_header.jsp" />

<!-- Slide -->
<header>
 	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"></div>
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
	<h1 class="mt-4 mb-3">오시는 길</h1>
	<ol class="breadcrumb">
		<li class="breadcrumb-item">회사소개</li>
		<li class="breadcrumb-item active">오시는 길</li>
	</ol>
	<div class="row">
		<div class="col-lg-8 mb-4">
			<!-- Embedded Google Map -->
			<iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2246.759086795377!2d127.04047010049379!3d37.21454543666961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b440988b863f3%3A0x10fec1f921ee3f3!2z6rK96riw64-EIO2ZlOyEseyLnCDsp4TslYjrj5kg7Zqo7ZaJ66GcIDEwNTE!5e0!3m2!1sko!2skr!4v1589201884568!5m2!1sko!2skr"></iframe>
		</div>
		<div class="waytext" class="col-lg-4 mb-4">
			<h2>웰석재</h2>
			<hr>
			<p>
				<b>주소</b> : 경기도 화성시 효행로 1051 메인프라자 506-2호
			</p>
			<p>
				<b>전화번호</b> : 031-237-3744
			</p>
			<p>
				<b>팩스</b> : 031-237-2435
			</p>
			<p>
				<b>이메일</b> : sookki5@naver.com
			</p>
		</div>
	</div>
</div>
<!-- /Page Content -->

<c:import url="/WEB-INF/views/wellstone/well_footer.jsp" />