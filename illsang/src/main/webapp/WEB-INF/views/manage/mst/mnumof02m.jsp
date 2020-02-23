<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/manage/include/header.jsp">
	<c:param name="gv_viewType" value="pages"></c:param>
</c:import>

<!-- begin:: Content -->
<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
	<c:if test="${gvPgmInfo.note ne null }">
		<div class="alert alert-light alert-elevate" role="alert">
			<div class="alert-icon"><i class="flaticon-warning kt-font-brand"></i></div>
			<div class="alert-text">${gvPgmInfo.note }</div>
		</div>	
	</c:if>
	
	<!--begin::Portlet-->
	<div class="kt-portlet kt-portlet--tabs">
		<div class="kt-portlet__head">
			<div class="kt-portlet__head-label">
				<h3 class="kt-portlet__head-title">오프라인 메뉴관리</h3>
			</div>
			<div class="kt-portlet__head-toolbar">
				<ul class="nav nav-tabs nav-tabs-line nav-tabs-line-right" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" data-toggle="tab" href="#tpg_1" role="tab">
							<i class="flaticon-list-3"></i> 현황조회
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#tpg_2" role="tab">
							<i class="flaticon-speech-bubble-1"></i> 카테고리
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#tpg_3" role="tab">
							<i class="flaticon-cogwheel-1"></i> 메뉴정보
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#tpg_4" role="tab">
							<i class="flaticon-cogwheel-1"></i> 옵션정보
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="kt-portlet__body">
			<div class="tab-content">
				<div class="tab-pane active" id="tpg_1" role="tabpanel">
					<c:import url="/WEB-INF/views/manage/mst/mnumof02t01.jsp" />
				</div>
				<div class="tab-pane" id="tpg_2" role="tabpanel">
					<c:import url="/WEB-INF/views/manage/mst/mnumof02t02.jsp" />
				</div>
				<div class="tab-pane" id="tpg_3" role="tabpanel">
					<c:import url="/WEB-INF/views/manage/mst/mnumof02t03.jsp" />
				</div>
				<div class="tab-pane" id="tpg_4" role="tabpanel">
					<c:import url="/WEB-INF/views/manage/mst/mnumof02t04.jsp" />
				</div>
			</div>
		</div>
	</div>
	<!--end::Portlet-->
</div>

<c:import url="/WEB-INF/views/manage/include/footer.jsp">
	<c:param name="gv_actionJs" value="menu.js" />
	<c:param name="gv_timestamp" value="${timestamp }"/>
</c:import>