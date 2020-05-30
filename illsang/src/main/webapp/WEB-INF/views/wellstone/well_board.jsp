<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/wellstone/well_header.jsp">
	<c:param name="menuNm" value="${menuNm}" />
</c:import>

<!-- Slide -->
 <header>
  	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"></div>
     <div class="carousel-inner" role="listbox">
     	<div class="carousel-item active" style="background-image: url('/img/w_images/main_sildeBN_06.jpg')">
     		<div class="carousel-caption d-none d-md-block">
     			<h3>CUSTOMER SERVICE</h3>
     			<p> 시공견적 / 샘플신청 문의 언제든 환영입니다.</p>
        	</div>
       	</div>
    </div>
</header>
<!-- Slide -->

<!-- Page Content -->
<div id="sub_title" class="container">
	<c:choose>
		<c:when test="${category eq 'notice' || category eq 'notice_detail'}">
			<h1 class="mt-4 mb-3" id="h1-board-title">공지사항</h1>
			<input type="hidden" id="ctgrCd" value="${code}">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">${menuNm}</li>
				<li class="breadcrumb-item active">공지사항</li>
			</ol>	
		</c:when>
		<c:when test="${category eq 'estimate' || category eq 'estimate_detail'}">
			<h1 class="mt-4 mb-3" id="h1-board-title">시공견적 문의</h1>
			<input type="hidden" id="ctgrCd" value="${code}">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">${menuNm}</li>
				<li class="breadcrumb-item active">시공견적 문의</li>
			</ol>
		</c:when>
		<c:otherwise>
			<h1 class="mt-4 mb-3" id="h1-board-title">자유게시판</h1>
			<ol class="breadcrumb">
				<li class="breadcrumb-item">${menuNm}</li>
				<li class="breadcrumb-item active">자유게시판</li>
			</ol>
		</c:otherwise>		
	</c:choose>
	
	<c:import url="/WEB-INF/views/wellstone/well_incl_board.jsp">
		<c:param name="manage" value="" />
	</c:import>
	
</div>
<!-- /Page Content -->

<c:import url="/WEB-INF/views/wellstone/well_footer.jsp">
	<c:param name="category" value="${category}" />
</c:import>