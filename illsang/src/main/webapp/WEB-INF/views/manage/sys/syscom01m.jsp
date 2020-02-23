<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>

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
	<div class="row">
		<div class="col-lg-4">
			<!--begin::Portlet-->
			<div class="kt-portlet">
				<div class="kt-portlet__head">
					<div class="kt-portlet__head-label">
						<h3 class="kt-portlet__head-title">시스템 코드 등록</h3>
					</div>
				</div>
				<c:import url="/WEB-INF/views/manage/sys/syscom01f01.jsp" />
				<c:import url="/WEB-INF/views/manage/sys/syscom01f02.jsp" />
			</div>
			<!--end::Portlet-->
		</div>
		
		<div class="col-lg-8">
			<!--begin::Portlet-->
			<div class="kt-portlet kt-portlet--tabs">
				<div class="kt-portlet__head">
					<div class="kt-portlet__head-label">
						<h3 class="kt-portlet__head-title">시스템 코드 목록</h3>
					</div>
					<div class="kt-portlet__head-toolbar">
						<ul id="tab-system-code" class="nav nav-tabs nav-tabs-line nav-tabs-line-right" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" data-toggle="tab" data-tab-index="1" href="#kt_portlet_base_demo_1_tab_content" role="tab">
									<i class="flaticon-upload-1"></i> 공통코드
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" data-tab-index="2" href="#kt_portlet_base_demo_2_tab_content" role="tab">
									<i class="flaticon-speech-bubble-1"></i> 상세코드
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="kt-portlet__body">
					<div class="tab-content">
						<div class="tab-pane active" id="kt_portlet_base_demo_1_tab_content" role="tabpanel">
							<c:import url="/WEB-INF/views/manage/sys/syscom01t01.jsp" />
						</div>
						<div class="tab-pane" id="kt_portlet_base_demo_2_tab_content" role="tabpanel">
							<c:import url="/WEB-INF/views/manage/sys/syscom01t02.jsp" />
						</div>
					</div>
				</div>
			</div>
			<!--end::Portlet-->
		</div>
	</div>
</div>
<!-- end:: Content -->

<c:import url="/WEB-INF/views/manage/sys/syscom01p01.jsp" />

<c:import url="/WEB-INF/views/manage/include/footer.jsp">
	<c:param name="gv_actionJs" value="system-code.js" />
	<c:param name="gv_timestamp" value="${timestamp }" />
</c:import>