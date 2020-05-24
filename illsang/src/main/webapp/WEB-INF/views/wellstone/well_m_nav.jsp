<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<nav class="col-md-2 bg-light sidebar">
	<div class="sidebar-sticky">
		<ul class="nav flex-column">
			<li class="nav-item"><a class="nav-link-M <c:if test="${param.category eq 'm_menu'}">active</c:if>"
				href="/wellstone/w_menu">· 메뉴관리</a></li>
			<li class="nav-item"><a class="nav-link-M" href="m_product.html">·
					제품관리</a></li>
			<li class="nav-item"><a class="nav-link-M"
				href="m_construction.html">· 시공현황관리</a></li>
			<li class="nav-item"><a class="nav-link-M" href="#board-submenu"
				data-toggle="collapse" aria-expanded="true" class="dropdown-toggle">·
					게시판관리</a>
				<ul class="collapse list-unstyled <c:if test="${param.category eq 'm_notice'}">collapse show</c:if>" id="board-submenu">
					<li class="nav-item"><a class="nav-link-M <c:if test="${param.category eq 'm_notice'}">active</c:if>"
						href="/wellstone/manager/notice">공지사항</a></li>
					<li class="nav-item"><a class="nav-link-M"
						href="/wellstone/m_free">자유게시판</a></li>
				</ul></li>
			<li class="nav-item"><a class="nav-link-M"
				href="#estimate-submenu" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle">· 견적관리</a>
				<ul class="collapse list-unstyled" id="estimate-submenu">
					<li class="nav-item"><a class="nav-link-M"
						href="m_estimate.html">시공견적문의</a></li>
					<li class="nav-item"><a class="nav-link-M"
						href="m_catalog.html">카달로그신청</a></li>
					<li class="nav-item"><a class="nav-link-M"
						href="m_sample.html">샘플신청</a></li>
				</ul></li>
		</ul>
	</div>
</nav>