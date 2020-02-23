<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>

<!--begin::Form-->
<form class="kt-form" id="frm-detail" style="display:none;">
	<div class="kt-portlet__body">
		<div class="kt-section kt-section--first">
			<div class="form-group row">
				<div class="col-lg-4">
					<label>구분:</label>
					<select name="ModuleCode" class="form-control kt_selectpicker" data-size="5">
						<option value="#" selected>선택해주세요.</option>
						<c:forEach var="dtl" items="${gdsCommCd[0].items[0].items }" varStatus="status">
							<option value="${dtl.detailCode }">${dtl.detailName }</option>
						</c:forEach>
					</select>
					<span class="form-text text-muted">${note }</span>
				</div>
				<div class="col-lg-4">
					<label>정렬순서:</label>
					<input type="number" name="SortNo" class="form-control" placeholder="정렬순서">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>그룹코드:</label>
					<input type="text" name="MasterCode" class="form-control" placeholder="상위공통코드">
				</div>
				<div class="col-lg-8">
					<label>그룹코드 명칭:</label>
					<input type="text" name="MasterCode" class="form-control" placeholder="상위공통코드">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>상세코드 코드:</label>
					<input type="text" name="DetailCode" class="form-control" placeholder="상세공통코드">
				</div>
				<div class="col-lg-8">
					<label>상세코드 명칭:</label>
					<input type="text" name="DetailName" class="form-control" placeholder="상세공통코드 명칭">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>속성1 값:</label>
					<input type="text" name="Val1" class="form-control" placeholder="속성1 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성2 값:</label>
					<input type="text" name="Val2" class="form-control" placeholder="속성2 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성3 값:</label>
					<input type="text" name="Val3" class="form-control" placeholder="속성3 명칭">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>속성4 값:</label>
					<input type="text" name="Val4" class="form-control" placeholder="속성4 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성5 값:</label>
					<input type="text" name="Val5" class="form-control" placeholder="속성5 명창">
				</div>
				<div class="col-lg-4">
					<label>속성6 값:</label>
					<input type="text" name="Val6" class="form-control" placeholder="속성6 명칭">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>속성7 값:</label>
					<input type="text" name="Val7" class="form-control" placeholder="속성7 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성8 값:</label>
					<input type="text" name="Val8" class="form-control" placeholder="속성8 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성9 값:</label>
					<input type="text" name="Val9" class="form-control" placeholder="속성9 명칭">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>속성10 값:</label>
					<input type="text" name="Val10" class="form-control" placeholder="속성10 명칭">
				</div>
			</div>
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
				</div>
			</div>
		</div>
	</div>
	<div class="kt-portlet__foot">
		<div class="kt-form__actions">
			<button type="button" id="btn-detail-save" class="btn btn-primary">저장</button>
			<button type="button" id="btn-detail-reset" class="btn btn-secondary">초기화</button>
		</div>
	</div>
</form>
<!--end::Form-->