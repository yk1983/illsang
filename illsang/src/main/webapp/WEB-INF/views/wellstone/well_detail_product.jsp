<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>

<!-- Page Content -->
<div id="sub_title" class="container" style="">
	<c:choose>
		<c:when test="${param.category eq 'product'}">
			<h1 class="mt-4 mb-3">제품소개</h1>
			<ol class="breadcrumb">
				<li class="breadcrumb-item">제품소개</li>
				<li class="breadcrumb-item">전체</li>
				<li class="breadcrumb-item active" id="li-prd-nm">제품명</li>
			</ol>
			<div class="bd-example">
				<ul class="categorynav">
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">전체</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">천연석</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">점토벽돌</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">명문브릭</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">고벽돌</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">모노타일</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">클링커타일</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">미래파벽</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">호소와리</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">화강석</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">테라조</font></a></li>
					<li class="categorynav-item"><a class="categorynav-link"
						href="#"><font style="vertical-align: inherit;">기타</font></a></li>
				</ul>
			</div>
		</c:when>
		<c:otherwise></c:otherwise>
	</c:choose>
	
	<div class="row" style="margin-bottom: 20px; margin-top: 60px;">
		<div class="col-lg-6 mb-4 ">
			<div style="max-width: 700px">
				<img class="mySlides" src=""  style="width: 100%"> 
				<img class="mySlides" src=""  style="width:100%;display:none">
				<img class="mySlides" src=""  style="width:100%;display:none">
				<img class="mySlides" src=""  style="width:100%;display:none">
				<img class="mySlides" src=""  style="width:100%;display:none">
				<div class="mx-auto img-section" style="width: 80%;">
					<div class="img_col s1">
						<img class=" img-opacity img-hover-opacity-off"
							src=""
							style="width: 100%; cursor: pointer" onclick="currentDiv(1)">
					</div>
					<div class="img_col s1">
						<img class=" img-opacity img-hover-opacity-off"
							src=""
							style="width: 100%; cursor: pointer" onclick="currentDiv(2)">
					</div>
					<div class="img_col s1">
						<img class="img-opacity img-hover-opacity-off"
							src=""
							style="width: 100%; cursor: pointer" onclick="currentDiv(3)">
					</div>
					<div class="img_col s1">
						<img class="img-opacity img-hover-opacity-off"
							src=""
							style="width: 100%; cursor: pointer" onclick="currentDiv(4)">
					</div>
					<div class="img_col s1">
						<img class="img-opacity img-hover-opacity-off"
							src=""
							style="width: 100%; cursor: pointer" onclick="currentDiv(5)">
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-6 mb-4 d-flex flex-column">
			<div class="row">
				<table class="table table-bordered" style="text-align: center;vertical-align: bottom;">
					<thead>
						<tr>
	                        <th>SIZE</th>
	                        <th>1Box</th>
	                        <th>박스당 수량</th>
	                        <th>㎡당 중량</th>
	                        <th>파렛트(톤)</th>
	                        <th>줄눈</th>
	                        <th>코너</th>
	                    </tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${list}" varStatus="status">
							<tr>
								<td>${item.PRD_HRZ} x ${item.PRD_VRT} x ${item.PRD_THK}</td>
								<td>${item.AREA_BOX}</td>
								<td>${item.NMBR_BOX}</td>
								<td>${item.WGHT_AREA}</td>
								<td>${item.BOXCN_TON}</td>
								<td>${item.LINE_YN}</td>
								<td>${item.PRD_CORNER}</td>
							</tr>
							
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="row mt-auto some-class">
				<button type="button" class="btn-a btn-outline-dark col mr-1"
					id="btn-estimate-modal">견적문의</button>
				<button type="button" class="btn-a btn-outline-dark col mr-1"
					id="btn-catalog-modal">카달로그신청</button>
				<button type="button" class="btn-a btn-outline-dark col"
					id="btn-sample-modal">샘플신청</button>
			</div>
		</div>
	</div>
	<hr>
	<h4 style="font-weight: 600;">티크우드</h4>
	<p style="font-size: 12px;">티크우드 | 2020-04-25 13:30:00 | 조회수 10</p>
	<div style="margin-top: 20px;">
		<div class="card2 mb-4">
			<img class="card-img-top" src="" alt="Card image cap">
		</div>
		<div class="card2 mb-4">
			<img class="card-img-top" src="">
		</div>
	</div>
</div>
<!-- /.container -->