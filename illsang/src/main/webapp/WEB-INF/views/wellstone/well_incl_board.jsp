<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<div class="row">
	<div class="col-lg-6" style="padding-top: 9px;">
		<span id="page-info"></span>
	</div>
	<div class="col-lg-6">
		<form class="form-inline float-md-right">
			<div class="form-group mb-2">
                   <select class="form-control" id="select-board">
                       <option value="title">제목</option>
                       <option value="writer">작성자</option>
                   </select>
               </div>
               <div class="form-group mx-sm-3 mb-2">
                   <label for="input-search" class="sr-only">검색어</label>
                   <input type="text" class="form-control" id="input-search" placeholder="">
               </div>
               <button type="button" class="btn btn-primary mb-2" id="btn-search">검색</button>
		</form>
	</div>
</div>
<c:if test="${param.manage ne 'manage'}">
	<div style="margin-top: 20px;">
</c:if>
<table class="table table-hover" style="cursor: pointer;">
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
       	<c:forEach var="item" items="${noticeList}" begin="0" step="1">
       		<c:choose>
       			<c:when test="${item.NOTICE_YN eq 'Y'}">
       				<tr class="table-info" data-cd="${item.POSTS_NO}">
       				<td>${item.NO}</td>
       			</c:when>
       			<c:otherwise>
       				<tr data-cd="${item.POSTS_NO}">
       				<td>${item.NO}</td>	
       			</c:otherwise>
       		</c:choose>
       			<td>${item.TITLE}</td>
       			<td>${item.WRITER}</td>
       			<td>${item.REG_DT}</td>
       			<td>${item.HITS}</td>
       			<td>${item.G_HITS}</td>
       		</tr>
       	</c:forEach>
       </tbody>
</table> 
<c:if test="${param.manage ne 'manage'}">
	</div>
</c:if>
<ul class="pagination justify-content-center" id="paging" data-total-count="${totalCount}"></ul>