<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/erp/include/header.jsp">
	<c:param name="gv_viewType" value="pages"></c:param>
</c:import>

<!-- begin:: Wrapper -->
<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">

	<c:import url="/WEB-INF/views/erp/include/topbar.jsp" />
	
	<div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">

	<c:import url="/WEB-INF/views/erp/include/subheader.jsp">
		<c:param name="PgmId" value="" />
		<c:param name="PgmNm" value="일정관리" />
		<c:param name="PgmMClsCd" value="" />
		<c:param name="PgmMClsNm" value="매거진" />
		<c:param name="PgmCClsCd" value="" />
		<c:param name="PgmCClsNm" value="로스팅" />
		<c:param name="PgmSClsCd" value="" />
		<c:param name="PgmSClsNm" value="일정관리" />
	</c:import>
	
		<!-- begin:: Content -->
		<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
			<div class="row">
				<div class="col-lg-12">
	
					<!--begin::Portlet-->
					<div class="kt-portlet" id="kt_portlet">
						<div class="kt-portlet__head kt-portlet__head--lg">
							<div class="kt-portlet__head-label">
								<span class="kt-portlet__head-icon">
									<i class="flaticon-map-location"></i>
								</span>
								<h3 class="kt-portlet__head-title">
									Basic Calendar
								</h3>
							</div>
							<div class="kt-portlet__head-toolbar">
								<div class="kt-portlet__head-group">
									<button type="button" class="btn btn-brand" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<i class="la la-plus"></i> Add Event
									</button>
									<div class="dropdown-menu dropdown-menu-right">
	
										<!--begin::Nav-->
										<ul class="kt-nav">
											<li class="kt-nav__section kt-nav__section--first">
												<span class="kt-nav__section-text">Export Tools</span>
											</li>
											<li class="kt-nav__item">
												<a href="#" class="kt-nav__link">
													<i class="kt-nav__link-icon la la-print"></i>
													<span class="kt-nav__link-text">Print</span>
												</a>
											</li>
											<li class="kt-nav__item">
												<a href="#" class="kt-nav__link">
													<i class="kt-nav__link-icon la la-copy"></i>
													<span class="kt-nav__link-text">Copy</span>
												</a>
											</li>
											<li class="kt-nav__item">
												<a href="#" class="kt-nav__link">
													<i class="kt-nav__link-icon la la-file-excel-o"></i>
													<span class="kt-nav__link-text">Excel</span>
												</a>
											</li>
											<li class="kt-nav__item">
												<a href="#" class="kt-nav__link">
													<i class="kt-nav__link-icon la la-file-text-o"></i>
													<span class="kt-nav__link-text">CSV</span>
												</a>
											</li>
											<li class="kt-nav__item">
												<a href="#" class="kt-nav__link">
													<i class="kt-nav__link-icon la la-file-pdf-o"></i>
													<span class="kt-nav__link-text">PDF</span>
												</a>
											</li>
										</ul>
	
										<!--end::Nav-->
									</div>
								</div>
							</div>
						</div>
						<div class="kt-portlet__body">
							<div id="kt_calendar"></div>
						</div>
					</div>
					<!--end::Portlet-->
				</div>
			</div>
		</div>
		<!-- end:: Content -->
	
	</div>
	
	<c:import url="/WEB-INF/views/erp/include/footerbar.jsp"></c:import>
	
</div>
<!-- end:: Wrapper -->

<c:import url="/WEB-INF/views/erp/include/footer.jsp">
	<c:param name="gv_actionJs" value="calendar.js"></c:param>
</c:import>