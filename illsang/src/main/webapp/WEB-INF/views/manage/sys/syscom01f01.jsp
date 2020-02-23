<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>

<!--begin::Form-->
<form class="kt-form" id="frm-master">
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
					<input type="text" name="MasterName" class="form-control" placeholder="상위공통코드">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>속성1 명칭:</label>
					<input type="text" name="Attr1" class="form-control" placeholder="속성1 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성2 명칭:</label>
					<input type="text" name="Attr2" class="form-control" placeholder="속성2 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성3 명칭:</label>
					<input type="text" name="Attr3" class="form-control" placeholder="속성3 명칭">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>속성4 명칭:</label>
					<input type="text" name="Attr4" class="form-control" placeholder="속성4 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성5 명칭:</label>
					<input type="text" name="Attr5" class="form-control" placeholder="속성5 명창">
				</div>
				<div class="col-lg-4">
					<label>속성6 명칭:</label>
					<input type="text" name="Attr6" class="form-control" placeholder="속성6 명칭">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>속성7 명칭:</label>
					<input type="text" name="Attr7" class="form-control" placeholder="속성7 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성8 명칭:</label>
					<input type="text" name="Attr8" class="form-control" placeholder="속성8 명칭">
				</div>
				<div class="col-lg-4">
					<label>속성9 명칭:</label>
					<input type="text" name="Attr9" class="form-control" placeholder="속성9 명칭">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-lg-4">
					<label>속성10 명칭:</label>
					<input type="text" name="Attr10" class="form-control" placeholder="속성10 명칭">
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
				<div class="col-lg-6">
					<label>관리여부:</label>
					<div class="kt-radio-inline">
						<label class="kt-radio kt-radio--solid">
							<input type="radio" name="MngrUseYn" checked value="Y"> 사용
							<span></span>
						</label>
						<label class="kt-radio kt-radio--solid">
							<input type="radio" name="MngrUseYn" value="N"> 미사용
							<span></span>
						</label>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="kt-portlet__foot">
		<div class="kt-form__actions">
			<button type="button" id="btn-master-save" class="btn btn-primary">저장</button>
			<button type="button" id="btn-master-reset" class="btn btn-secondary">초기화</button>
		</div>
	</div>
</form>
<!--end::Form-->