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
						<h3 class="kt-portlet__head-title">상품상세정보</h3>
					</div>
				</div>
				<!--begin::Form-->
				<form class="kt-form">
					<div class="kt-portlet__body">
						<div class="kt-section kt-section--first">
							<div class="form-group row">
								<div class="col-lg-6">
									<label>상품코드:</label>
									<input type="text" class="form-control" placeholder="상품코드를 입력하세요.">
									<span class="form-text text-muted">상품코드를 입력하세요.</span>
								</div>
								<div class="col-lg-6">
									<label>상품명:</label>
									<input type="text" class="form-control" placeholder="상품명을 입력하세요.">
									<span class="form-text text-muted">상품명을 입력하세요.</span>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-lg-6">
									<label>상품가격:</label>
									<input type="number" class="form-control" placeholder="상품가격을 입력하세요.">
									<span class="form-text text-muted">상품가격을 입력하세요.</span>
								</div>
								<div class="col-lg-6">
									<label class="">사용여부:</label>
								<div class="kt-radio-inline">
									<label class="kt-radio kt-radio--solid">
										<input type="radio" name="example_2" checked value="Y"> 사용
										<span></span>
									</label>
									<label class="kt-radio kt-radio--solid">
										<input type="radio" name="example_2" value="N"> 미사용
										<span></span>
									</label>
								</div>
								<span class="form-text text-muted">사용여부를 선택하세요.</span>
								</div>
							</div>
						</div>
					</div>
					<div class="kt-portlet__foot">
						<div class="kt-form__actions">
							<button type="reset" class="btn btn-primary">Submit</button>
							<button type="reset" class="btn btn-secondary">Cancel</button>
						</div>
					</div>
				</form>
				<!--end::Form-->
			</div>
			<!--end::Portlet-->
		</div>
		
		<div class="col-lg-8">
			<div class="kt-portlet kt-portlet--mobile">
				<div class="kt-portlet__head">
					<div class="kt-portlet__head-label">
						<h3 class="kt-portlet__head-title">상품목록</h3>
					</div>
				</div>
				<div class="kt-portlet__body">
					<div class="row">
						<div class="col-lg-12">
							<!--begin: Datatable -->
							<table class="table table-striped- table-bordered table-hover table-checkable" id="tbl-product-lst">
								<thead>
									<tr>
										<th></th>
										<th>코드</th>
										<th>명칭</th>
										<th>상품가격</th>
										<th>사용여부</th>
										<th>정렬순서</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th></th>
										<th>코드</th>
										<th>명칭</th>
										<th>상품가격</th>
										<th>사용여부</th>
										<th>정렬순서</th>
										<th></th>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<c:import url="/WEB-INF/views/manage/include/footer.jsp">
	<c:param name="gv_actionJs" value="store-product.js" />
	<c:param name="gv_timestamp" value="${timestamp }"/>
</c:import>