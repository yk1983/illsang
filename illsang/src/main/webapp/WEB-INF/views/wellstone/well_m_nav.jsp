<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<nav class="col-md-2 bg-light sidebar">
	<div class="sidebar-sticky">
		<ul class="nav flex-column">
			<li class="nav-item"><a class="nav-link-M <c:if test="${param.category eq 'm_menu'}">active</c:if>"
				href="/wellstone/manager/menu">· 메뉴관리</a></li>
			<li class="nav-item"><a class="nav-link-M <c:if test="${param.category eq 'm_product' || param.category eq 'm_product_detail'}">active</c:if>" 
				href="/wellstone/manager/product">· 제품관리</a></li>
			<li class="nav-item"><a class="nav-link-M <c:if test="${param.category eq 'm_construction'}">active</c:if>"
				href="/wellstone/manager/construction">· 시공현황관리</a></li>
			<li class="nav-item"><a class="nav-link-M" href="#board-submenu"
				data-toggle="collapse" aria-expanded="true" class="dropdown-toggle">·
					게시판관리</a>
				<ul class="collapse list-unstyled <c:if test="${param.category eq 'm_notice' || param.category eq 'm_free'}">collapse show</c:if>" id="board-submenu">
					<li class="nav-item"><a class="nav-link-M <c:if test="${param.category eq 'm_notice'}">active</c:if>"
						href="/wellstone/manager/notice">공지사항</a></li>
					<li class="nav-item"><a class="nav-link-M <c:if test="${param.category eq 'm_free'}">active</c:if>"
						href="/wellstone/m_free">자유게시판</a></li>
				</ul></li>
			<li class="nav-item"><a class="nav-link-M <c:if test="${param.category eq 'm_estimate'}">active</c:if>"
				href="/wellstone/manager/estimate">· 견적관리</a></li>
		</ul>
	</div>
</nav>