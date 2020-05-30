<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<c:choose>
	<c:when test="${category eq 'notice_detail'}">
		<hr style="margin-top: 60px;">
		<h4 style="font-weight: 600;">${notice.TITLE}</h4>
		<p style="font-size: 12px;">${notice.WRITER}| ${notice.REG_DT} |
			조회수 ${notice.HITS} | 추천수${notice.G_HITS}</p>
		<div style="margin-top: 20px;">
			<p>${notice.CONTENTS}</p>
			<!--             <div class="card2 mb-4"> -->
			<!--                 <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap"> -->
			<!--             </div> -->
			<!--             <div class="card2 mb-4"> -->
			<!--                 <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap"> -->
			<!--             </div>             -->
		</div>
	</c:when>
	<c:otherwise>
		<!-- row -->
		<div class="row">
			<div class="col-lg-6" style="padding-top: 9px;">
				<span id="page-info"></span>
			</div>
			<div class="col-lg-6">
				<form class="form-inline float-md-right">
					<div class="form-group mb-2">
						<select class="form-control" id="select-board">
							<c:choose>
								<c:when test="${category eq 'm_product'}">
									<option value="prdNm">제품명</option>
									<option value="prdCd">제품번호</option>
									<option value="ctgrCd">제품카테고리</option>
								</c:when>
								<c:when test="${category eq 'estimate'}">
									<option value="">접수상태</option>
									<option value="01">등록</option>
									<option value="04">답변완료</option>
								</c:when>
								<c:otherwise>
									<option value="title">제목</option>
									<option value="writer">작성자</option>
								</c:otherwise>
							</c:choose>
						</select>
					</div>
					<div class="form-group mx-sm-3 mb-2">
						<label for="input-search" class="sr-only">검색어</label> <input
							type="text" class="form-control" id="input-search"
							placeholder="">
					</div>
					<button type="button" class="btn btn-primary mb-2" id="btn-search">검색</button>
					<button type="button" class="btn btn-outline-info mb-2" id="btn-create" style="margin-left: 10px;">글작성</button>
				</form>
			</div>
		</div>
		<!-- /row -->
		<div style="margin-top: 20px;">
			<table class="table table-hover" style="cursor: pointer;">
				<c:choose>
					<c:when test="${category eq 'm_product'}">
						<colgroup>
							<col width="15%">
							<col width="30%">
							<col width="20%">
							<col width="20%">
							<col width="15%">
						</colgroup>
						<thead>
							<tr>
								<th>제품번호</th>
								<th>제품카테고리</th>
								<th>제품명</th>
								<th>작성자</th>
								<th>등록일자</th>
							</tr>
						</thead>
						<tbody id="tbl-product">
							<c:forEach var="item" items="${list}" begin="0" step="1">
								<tr data-cd="${item.PRD_CD}" data-ctgr="${item.CTGR_CD}" onclick="fn_detail(this);">
									<td>${item.PRD_CD}</td>
									<td>${item.CTGR_CD}</td>
									<td>${item.PRD_NM}</td>
									<td>${item.REG_ID}</td>
									<td>${item.REG_DT}</td>
								</tr>
							</c:forEach>
						</tbody>
					</c:when>
					<c:when test="${category eq 'estimate'}">
						<colgroup>
							<col width="10%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="15%">
							<col width="15%">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>상호명</th>
								<th>건물형태</th>
								<th>등록일자</th>
								<th>답변일자</th>
								<th>접수상태</th>
							</tr>
						</thead>
						<tbody id="tbl-estimate">
							<c:forEach var="item" items="${list}" begin="0" step="1">
								<tr onclick="fn_modal_estimate(this);">
									<td>${item.REQ_NO}</td>
									<td>${item.REQ_NM}</td>
									<td>${item.BULD_TP}</td>
									<td>${item.REG_DT}</td>
									<td>${item.RES_DT}</td>
									<td>${item.STAT}</td>
								</tr>
							</c:forEach>
						</tbody>
					</c:when>
					<c:otherwise>
						<colgroup>
							<col width="10%">
							<col width="30%">
							<col width="20%">
							<col width="20%">
							<col width="10%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일자</th>
								<th>조회수</th>
								<th>추천수</th>
							</tr>
						</thead>
						<tbody id="tbl-notice">
							<c:forEach var="item" items="${list}" begin="0" step="1">
								<c:choose>
									<c:when test="${item.NOTICE_YN eq 'Y'}">
										<tr class="table-info" data-cd="${item.POSTS_NO}">
									</c:when>
									<c:otherwise>
										<tr data-cd="${item.POSTS_NO}">
									</c:otherwise>
								</c:choose>
								<td>${item.NO}</td>
								<td>${item.TITLE}</td>
								<td>${item.WRITER}</td>
								<td>${item.REG_DT}</td>
								<td>${item.HITS}</td>
								<td>${item.G_HITS}</td>
								</tr>
							</c:forEach>
						</tbody>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
		<ul class="pagination justify-content-center" id="paging"
			data-total-count="${totalCount}"></ul>
	</c:otherwise>
</c:choose>