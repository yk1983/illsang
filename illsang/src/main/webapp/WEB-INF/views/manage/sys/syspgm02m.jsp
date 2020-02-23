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
						<h3 class="kt-portlet__head-title">프로그램 상세</h3>
					</div>
				</div>

				<!--begin::Form-->
				<form class="kt-form">
					<div class="kt-portlet__body">
						<div class="kt-section kt-section--first">
							<div class="form-group row">
								<div class="col-lg-6">
									<label>프로그램 명:</label>
									<input type="text" class="form-control" placeholder="프로그램 명을 입력하세요.">
									<span class="form-text text-muted">프로그램 명을 입력하세요.</span>
								</div>
								<div class="col-lg-6">
									<label>프로그램 아이콘:</label>
									<input type="text" class="form-control" placeholder="프로그램 아이콘을 입력하세요.">
									<span class="form-text text-muted">HTML class 속성명입니다.</span>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-lg-6">
									<label>프로그램 경로:</label>
									<input type="text" class="form-control" placeholder="프로그램 파일 경로를 입력하세요.">
									<span class="form-text text-muted">파일 경로를 입력하세요.</span>
								</div>
								<div class="col-lg-6">
									<label>프로그램 URL:</label>
									<input type="text" class="form-control" placeholder="프로그램 호출 URL을 입력하세요.">
									<span class="form-text text-muted">호출 URL을 입력하세요.</span>
								</div>
							</div>
							<div class="form-group">
								<label>기본버튼 설정:</label>
								<div class="kt-checkbox-inline">
									<label class="kt-checkbox">
										<input type="checkbox"> 신규
										<span></span>
									</label>
									<label class="kt-checkbox">
										<input type="checkbox"> 저장
										<span></span>
									</label>
									<label class="kt-checkbox">
										<input type="checkbox"> 삭제
										<span></span>
									</label>
									<label class="kt-checkbox">
										<input type="checkbox"> 출력
										<span></span>
									</label>
								</div>
								<div class="kt-checkbox-inline">
									<label class="kt-checkbox">
										<input type="checkbox"> 엑셀 업로드
										<span></span>
									</label>
									<label class="kt-checkbox">
										<input type="checkbox"> 엑셀 다운로드
										<span></span>
									</label>
								</div>
							</div>
							<div class="form-group">
								<label>확장버튼 설정:</label>
								<div class="kt-checkbox-inline">
									<label class="kt-checkbox">
										<input type="checkbox"> 버튼1
										<span></span>
									</label>
									<label class="kt-checkbox">
										<input type="checkbox"> 버튼2
										<span></span>
									</label>
									<label class="kt-checkbox">
										<input type="checkbox"> 버튼3
										<span></span>
									</label>
									<label class="kt-checkbox">
										<input type="checkbox"> 버튼4
										<span></span>
									</label>
									<label class="kt-checkbox">
										<input type="checkbox"> 버튼5
										<span></span>
									</label>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-lg-6">
									<label>확장버튼1 명칭:</label>
									<input type="text" class="form-control" placeholder="확장버튼1 명칭을 입력하세요.">
									<span class="form-text text-muted">확장버튼1을 사용하는 경우 명칭 입력 (default 버튼1).</span>
								</div>
								<div class="col-lg-6">
									<label>확장버튼2 명칭:</label>
									<input type="text" class="form-control" placeholder="확장버튼2 명칭을 입력하세요.">
									<span class="form-text text-muted">확장버튼2을 사용하는 경우 명칭 입력 (default 버튼2).</span>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-lg-6">
									<label>확장버튼3 명칭:</label>
									<input type="text" class="form-control" placeholder="확장버튼3 명칭을 입력하세요.">
									<span class="form-text text-muted">확장버튼3을 사용하는 경우 명칭 입력 (default 버튼3).</span>
								</div>
								<div class="col-lg-6">
									<label>확장버튼4 명칭:</label>
									<input type="text" class="form-control" placeholder="확장버튼4 명칭을 입력하세요.">
									<span class="form-text text-muted">확장버튼4을 사용하는 경우 명칭 입력 (default 버튼4).</span>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-lg-6">
									<label>확장버튼5 명칭:</label>
									<input type="text" class="form-control" placeholder="확장버튼5 명칭을 입력하세요.">
									<span class="form-text text-muted">확장버튼5을 사용하는 경우 명칭 입력 (default 버튼5).</span>
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
						<h3 class="kt-portlet__head-title">프로그램 목록</h3>
					</div>
				</div>
				<div class="kt-portlet__body">
					<div class="row">
						<div class="col-lg-12">
							<!--begin: Datatable -->
							<table class="table table-striped- table-bordered table-hover table-checkable" id="tbl-program-lst">
								<thead>
									<tr>
										<th>No</th>
										<th>코드</th>
										<th>명칭</th>
										<th>URL</th>
										<th>경로</th>
										<th>아이콘</th>
										<th>사용여부</th>
										<th>관리자여부</th>
										<th>신규</th>
										<th>저장</th>
										<th>삭제</th>
										<th>출력</th>
										<th>엑셀(Up)</th>
										<th>엑셀(Dn)</th>
										<th>버튼1</th>
										<th>버튼2</th>
										<th>버튼3</th>
										<th>버튼4</th>
										<th>버튼5</th>
										<th>버튼명1</th>
										<th>버튼명2</th>
										<th>버튼명3</th>
										<th>버튼명4</th>
										<th>버튼명5</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>No</th>
										<th>코드</th>
										<th>명칭</th>
										<th>URL</th>
										<th>경로</th>
										<th>아이콘</th>
										<th>사용여부</th>
										<th>관리자여부</th>
										<th>신규</th>
										<th>저장</th>
										<th>삭제</th>
										<th>출력</th>
										<th>엑셀(Up)</th>
										<th>엑셀(Dn)</th>
										<th>버튼1</th>
										<th>버튼2</th>
										<th>버튼3</th>
										<th>버튼4</th>
										<th>버튼5</th>
										<th>버튼명1</th>
										<th>버튼명2</th>
										<th>버튼명3</th>
										<th>버튼명4</th>
										<th>버튼명5</th>
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
<!-- end:: Content -->

<c:import url="/WEB-INF/views/manage/modal/syspgm01p.jsp" />

<c:import url="/WEB-INF/views/manage/include/footer.jsp">
	<c:param name="gv_actionJs" value="program-l.js" />
	<c:param name="gv_timestamp" value="${timestamp }"/>
</c:import>