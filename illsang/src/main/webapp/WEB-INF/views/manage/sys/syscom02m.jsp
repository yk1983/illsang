<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/manage/include/header.jsp">
	<c:param name="gv_viewType" value="pages"></c:param>
</c:import>
		
<!-- begin:: Content -->
<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
	<c:if test="${gvPgmInfo.note ne null }">
		<div class="alert alert-light alert-elevate" role="alert">
			<div class="alert-icon">
				<i class="flaticon-warning kt-font-brand"></i>
			</div>
			<div class="alert-text">${gvPgmInfo.note }</div>
		</div>
	</c:if>
	<div class="kt-portlet kt-portlet--mobile">
		<div class="kt-portlet__head">
			<div class="kt-portlet__head-label">
				<h3 class="kt-portlet__head-title">취급가능 품목관리</h3>
			</div>
			<div class="kt-portlet__head-toolbar">
				<div class="kt-portlet__head-toolbar">
					<div class="dropdown dropdown-inline">
						<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="la la-sellsy"></i>
						</button>
						<div class="dropdown-menu dropdown-menu-right">
							<ul class="kt-nav">
								<li class="kt-nav__section kt-nav__section--first">
									<span class="kt-nav__section-text">Quick Actions</span>
								</li>
								<li class="kt-nav__item">
									<a href="#" class="kt-nav__link">
										<i class="kt-nav__link-icon flaticon2-graph-1"></i>
										<span class="kt-nav__link-text">Statistics</span>
									</a>
								</li>
								<li class="kt-nav__item">
									<a href="#" class="kt-nav__link">
										<i class="kt-nav__link-icon flaticon2-calendar-4"></i>
										<span class="kt-nav__link-text">Events</span>
									</a>
								</li>
								<li class="kt-nav__item">
									<a href="#" class="kt-nav__link">
										<i class="kt-nav__link-icon flaticon2-layers-1"></i>
										<span class="kt-nav__link-text">Reports</span>
									</a>
								</li>
								<li class="kt-nav__item">
									<a href="#" class="kt-nav__link">
										<i class="kt-nav__link-icon flaticon2-bell-1o"></i>
										<span class="kt-nav__link-text">Notifications</span>
									</a>
								</li>
								<li class="kt-nav__item">
									<a href="#" class="kt-nav__link">
										<i class="kt-nav__link-icon flaticon2-file-1"></i>
										<span class="kt-nav__link-text">Files</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="kt-portlet__body">
			<!--begin: Datatable -->
			<table class="table table-striped- table-bordered table-hover table-checkable" id="tbl-product-lst">
				<thead>
					<tr>
						<th>No</th>
						<th>상품코드</th>
						<th>상품명</th>
						<th>국가</th>
						<th>등급</th>
						<th>프로세스</th>
						<th>맛</th>
						<th>매입가</th>
						<th>사용여부</th>
						<th>최종등록일</th>
						<th></th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>No</th>
						<th>상품코드</th>
						<th>상품명</th>
						<th>국가</th>
						<th>등급</th>
						<th>프로세스</th>
						<th>맛</th>
						<th>매입가</th>
						<th>사용여부</th>
						<th>최종등록일</th>
						<th></th>
					</tr>
				</tfoot>
			</table>
			<!--end: Datatable -->
		</div>
	</div>
</div>
<!-- end:: Content -->

<<c:import url="/WEB-INF/views/manage/sys/syscom02p01.jsp" />

<c:import url="/WEB-INF/views/manage/include/footer.jsp">
	<c:param name="gv_actionJs" value="beans-product.js" />
	<c:param name="gv_timestamp" value="${timestamp }"/>
</c:import>