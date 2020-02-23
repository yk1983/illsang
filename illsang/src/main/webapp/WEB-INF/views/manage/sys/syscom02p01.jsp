<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<c:set var="gdsCommCd" value="${gdsCommCd[0].items}" />
<!-- Large Modal -->
<div id="pop-edit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">취급상품 상세정보</h5>
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
							<div class="col-lg-6">
								<label>상품명:</label>
								<input type="text" name="ProductName" class="form-control" placeholder="상품명을 입력하세요.">
								<span class="form-text text-muted">상품명을 입력하세요.</span>
							</div>
							<div class="col-lg-6">
								<label>매입가:</label>
								<input type="number" name="Price" class="form-control" placeholder="매입가를 입력하세요.">
								<span class="form-text text-muted">매입가(구매가)를 입력하세요.</span>
							</div>
						</div>
						<c:forEach var="ctgr" items="${gdsCommCd }" varStatus="status1">
							<c:if test="${status1.count%2 != 0 }">
								<div class="form-group row">
							</c:if>
							<div class="col-lg-6">
								<label class="">${ctgr.commName }</label>
								
								<c:choose>
									<c:when test="${ctgr.commCode eq 'MS001' }">
										<c:set var="selectName" value="CountryCode" />
										<c:set var="note" value="원산지(국가)를 선택하세요." />
									</c:when>
									<c:when test="${ctgr.commCode eq 'MS002' }">
										<c:set var="selectName" value="CompanyCode" />
										<c:set var="note" value="판매처(업체)를 선택하세요." />
									</c:when>
									<c:when test="${ctgr.commCode eq 'MS003' }">
										<c:set var="selectName" value="GradeCode" />
										<c:set var="note" value="생두등급을 선택하세요." />
									</c:when>
									<c:when test="${ctgr.commCode eq 'MS004' }">
										<c:set var="selectName" value="ProcessCode" />
										<c:set var="note" value="가공 프로세스를 선택하세요." />
									</c:when>
									<c:when test="${ctgr.commCode eq 'MS005' }">
										<c:set var="selectName" value="TasteCode" />
										<c:set var="note" value="맛을 선택하세요." />
									</c:when>
									<c:otherwise>
										<c:set var="selectName" value="${ctgr.commCode}" />
										<c:set var="note" value="관리자에 문의하세요." />
									</c:otherwise>
								</c:choose>
								
								<select name="${selectName }" class="form-control kt_selectpicker" data-size="5">
									<option value="#" selected>선택해주세요.</option>
									<c:forEach var="dtl" items="${ctgr.items }" varStatus="status2">
										<option value="${dtl.detailCode }">${dtl.detailName }</option>
									</c:forEach>
								</select>
								<span class="form-text text-muted">${note }</span>
							</div>
							<c:if test="${status1.count%2 == 0 || status1.last }">
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