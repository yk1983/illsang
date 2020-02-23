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
	<div class="row">
		<div class="col-lg-4">
			<!--begin::Portlet-->
			<div class="kt-portlet">
                   <div class="kt-portlet__head">
                       <div class="kt-portlet__head-label">
                           <h3 class="kt-portlet__head-title">
                               카테고리 뷰
                           </h3>
                       </div>
                   </div>
                   <div class="kt-portlet__body">
                       <div id="trv-pgm-ctgr" class="tree-demo"></div>
                       <div class="alert alert-solid-brand  kt-margin-t-20">
                              <div class="alert-text">메뉴 카테고리 트리뷰입니다.</div>
                          </div>
                   </div>
               </div>
               <!--end::Portlet-->
		</div>
		<div class="col-lg-8">
			<div class="kt-portlet kt-portlet--mobile">
				<div class="kt-portlet__head">
					<div class="kt-portlet__head-label">
						<h3 class="kt-portlet__head-title">카테고리 목록</h3>
					</div>
				</div>
				<div class="kt-portlet__body">
					<!--begin: Datatable -->
					<table class="table table-striped- table-bordered table-hover table-checkable" id="tbl-program-ctgr">
						<thead>
							<tr>
								<th></th>
								<th>코드</th>
								<th>명칭</th>
								<th>아이콘(클래스명)</th>
								<th>레벨</th>
								<th>사용여부</th>
								<th>정렬순서</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th></th>
								<th>코드</th>
								<th>명칭</th>
								<th>아이콘(클래스명)</th>
								<th>레벨</th>
								<th>사용여부</th>
								<th>정렬순서</th>
								<th>Actions</th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end:: Content -->
<c:import url="/WEB-INF/views/manage/sys/syspgm01p01.jsp" />

<c:import url="/WEB-INF/views/manage/include/footer.jsp">
	<c:param name="gv_actionJs" value="program-c.js" />
	<c:param name="gv_timestamp" value="${timestamp }"/>
</c:import>