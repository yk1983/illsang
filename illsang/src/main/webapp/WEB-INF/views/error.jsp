<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/erp/include/header.jsp">
	<c:param name="gv_viewType" value="error" />
</c:import>

	<!-- begin:: Page -->
	<div class="kt-grid kt-grid--ver kt-grid--root">
		<div class="kt-error404-v2">
			<div class="kt-error404-v2__content">
				<div class="kt-error404-v2__title">${data.cd }</div>
				<div class="kt-error404-v2__desc">${data.msg }</div>
			</div>
		</div>
	</div>
	<!-- end:: Page -->

<c:import url="/WEB-INF/views/erp/include/footer.jsp">
	<c:param name="gv_viewType" value="error" />
</c:import>