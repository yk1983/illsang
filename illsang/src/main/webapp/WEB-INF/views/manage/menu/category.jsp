<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/manage/include/header.jsp">
	<c:param name="gv_viewType" value="pages"></c:param>
</c:import>

<!-- begin:: Wrapper -->
<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">

	<c:import url="/WEB-INF/views/manage/include/topbar.jsp" />
	
	<div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">

	<c:import url="/WEB-INF/views/manage/include/subheader.jsp">
		<c:param name="PgmId" value="" />
		<c:param name="PgmNm" value="카테고리 관리" />
		<c:param name="PgmMClsCd" value="" />
		<c:param name="PgmMClsNm" value="마스터관리" />
		<c:param name="PgmCClsCd" value="" />
		<c:param name="PgmCClsNm" value="메뉴관리" />
		<c:param name="PgmSClsCd" value="" />
		<c:param name="PgmSClsNm" value="카테고리 관리" />
	</c:import>
	
	
	
	<c:import url="/WEB-INF/views/manage/include/footerbar.jsp"></c:import>
	
</div>
<!-- end:: Wrapper -->

<c:import url="/WEB-INF/views/manage/include/footer.jsp">
	<c:param name="gv_actionJs" value="code.js"></c:param>
	<c:param name="gv_timestamp" value="${timestamp }"/>
</c:import>