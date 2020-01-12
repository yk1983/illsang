<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<!--
 =========================================================
 Material Dashboard PRO - v2.1.0
 =========================================================

 Product Page: https://www.creative-tim.com/product/material-dashboard-pro
 Copyright 2019 Creative Tim (https://www.creative-tim.com)

 Coded by Creative Tim

 =========================================================

 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->

<c:import url="/WEB-INF/views/mngr/incd/header.jsp">
	<c:param name="prgr" value="error" />
	<c:param name="ttl_nm" value="Error" />
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
	<c:param name="prgr" value="error" />
</c:import>