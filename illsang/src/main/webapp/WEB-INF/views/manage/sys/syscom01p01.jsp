<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>

<!-- Large Modal -->
<div id="pop-edit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">시스템 코드</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<!--begin::Form-->
				<form class="kt-form kt-form--label-right" id="frm-beans-product">
					<input type="hidden" name="ProductCode" />
					<div class="kt-portlet__body">
						<div class="form-group row">
							<div class="col-lg-3">
								<label>업무구분:</label>
								<input type="text" name="ProductName" class="form-control" placeholder="상품명을 입력하세요.">
								<span class="form-text text-muted">상품명을 입력하세요.</span>
							</div>
							<div class="col-lg-3">
								<label>코드:</label>
								<input type="text" name="ProductName" class="form-control" placeholder="공통코드를 입력하세요.">
								<span class="form-text text-muted">공통코드를 입력하세요.</span>
							</div>
							<div class="col-lg-3">
								<label>코드명:</label>
								<input type="text" name="ProductName" class="form-control" placeholder="공통코드명을 입력하세요.">
								<span class="form-text text-muted">공통코드명을 입력하세요.</span>
							</div>
						</div>
						<c:forEach begin="0" end="9" step="1" varStatus="status">
							<c:if test="${status.first || status.count%4 == 1 }">
								<div class="form-group row">
							</c:if>
							<div class="col-lg-3">
								<label>속성명 ${status.count }:</label>
								<input type="text" name="Attr${status.count }" class="form-control" placeholder="속성명 ${status.count }를 입력하세요.">
								<span class="form-text text-muted">속성명 ${status.count }를 입력하세요.</span>
							</div>
							<c:if test="${status.count%4 == 0 || status.last }">
								</div>
							</c:if>
						</c:forEach>
						<div class="form-group row">
							<div class="col-lg-6">
								<label>사용여부:</label>
								<div class="kt-radio-inline">
									<label class="kt-radio kt-radio--solid">
										<input type="radio" name="UseYn" checked value="Y"> 사용
										<span></span>
									</label>
									<label class="kt-radio kt-radio--solid">
										<input type="radio" name="UseYn" value="N"> 미사용
										<span></span>
									</label>
								</div>
								<span class="form-text text-muted">사용여부를 선택하세요.</span>
							</div>
						</div>
					</div>
				</form>
				<!--end::Form-->
			</div>
			<div class="modal-footer">
				<button type="button" id="btn-save" class="btn btn-primary">
					<i class="la la-save"></i> 저장
				</button>
				<button type="button" id="btn-reset" class="btn btn-secondary" data-dismiss="modal">
					<i class="la la-close"></i> 닫기
				</button>
			</div>
		</div>
	</div>
</div>