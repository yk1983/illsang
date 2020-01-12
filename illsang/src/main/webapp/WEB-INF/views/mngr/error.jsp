<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<!--
 =========================================================
 Cafe iLLSang
 =========================================================
 Program History
 Date           Name          Description
 ----------     ----------    ----------------------------
 2020.01.02                   최초작성
 =========================================================
-->
<c:import url="/WEB-INF/views/mngr/incd/header.jsp">
	<c:param name="gv_sidebar" value="off" />
	<c:param name="gv_prgr" value="error" />
	<c:param name="gv_prgrNm" value="Error" />
</c:import>

<div class="content-center">
	<div class="row">
		<div class="col-md-12">
			<h1 class="title">404</h1>
			<h2>Page not found :(</h2>
			<h4>Ooooups! Looks like you got lost.</h4>
		</div>
	</div>
</div>

<c:import url="/WEB-INF/views/mngr/incd/footer.jsp">
	<c:param name="gv_prgr" value="error" />
</c:import>