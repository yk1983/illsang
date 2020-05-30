<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<div class="row">
	<div class="col-6">
		<form id="frm-product" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="prdCtgr">제품카테고리</label>
				<div class="col-sm-8">
					<select class="form-control" id="prdCtgr" name="prdCtgr">
						<c:forEach var="ctgr" items="${productCtgrList}" begin="0" step="1">
							<option value="${ctgr.MENU_CD}">${ctgr.MENU_NM}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="prdNm">제품명</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="prdNm" placeholder="제품명을 입력하세요." name="prdNm">
				</div>
			</div>
<!-- 			<div class="text-right mb-2"> -->
<!-- 				<span id="span-chk-product">중복확인해주세요.</span> -->
<!-- 				<button type="button" class="btn btn-info btn-sm" id="btn-chk-duplication">중복확인</button> -->
<!-- 			</div> -->
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="thumbnail-fileupload">썸네일</label>
				<div class="col-sm-8">
					<input type="file" multiple="multiple" class="form-control-file" id="thumbnail-fileupload" name="thumbnail-fileupload">
				</div>
			</div>
			<div class="thumbnail-fileList mb-4"></div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="fileupload">제품상세</label>
				<div class="col-sm-8">
					<input type="file" multiple="multiple" class="form-control-file" id="fileupload" name="fileupload">
				</div>
			</div>
			<div class="fileList"></div>
		</form>
	</div>
	<div class="col-6">
		<form id="frm-product-detail" method="post">
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="hrz">가로</label>
				<div class="col-sm-8">
					<input type="number" class="form-control" id="hrz" name="hrz" placeholder="">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="vrt">세로</label>
				<div class="col-sm-8">
					<input type="number" class="form-control" id="vrt" name="vrt" placeholder="">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="thk">두께(T)</label>
				<div class="col-sm-8">
					<input type="number" class="form-control" id="thk" name="thk" placeholder="">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="boxSize">1BOX</label>
				<div class="col-sm-8">
					<input type="number" class="form-control" id="boxSize" name="boxSize" placeholder="">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="boxCnt">박스당 수량</label>
				<div class="col-sm-8">
					<input type="number" class="form-control" id="boxCnt" name="boxCnt" placeholder="">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="areaKg">㎡당 중량</label>
				<div class="col-sm-8">
					<input type="number" class="form-control" id="areaKg" name="areaKg" placeholder="kg 기준">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label" for="tonBox">파렛트(톤)</label>
				<div class="col-sm-8 row">
					<div class="col">
						<input type="number" class="form-control" id="tonBox" name="tonBox" placeholder="1BOX">
					</div>
					<div class="col">
						<input type="text" class="form-control" id="ton" name="ton" placeholder="1T">
					</div>
				</div>
			</div>
			<div class="form-group row">
		        <label for="staticEmail" class="col-sm-4 col-form-label">줄눈</label>
		        <div class="col-sm-8">
		            <div class="form-check form-check-inline">
		                <input class="form-check-input" type="radio" name="lineYn" value="Y" checked="checked">
		                <label class="form-check-label" for="lineYn">포함</label>
		            </div>
		            <div class="form-check form-check-inline">
		                <input class="form-check-input" type="radio" name="lineYn" value="N">
		                <label class="form-check-label" for="lineYn">미포함</label>
		            </div>
		        </div>
		    </div>
		    <div class="form-group row">
				<label class="col-sm-4 col-form-label" for="corner">코너</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="corner" name="corner" placeholder="">
				</div>
			</div>
		</form>
	</div>
</div>
<div class="text-right mb-2">
	<button type="button" class="btn btn-info btn-sm" id="btn-add-prd-detail">제품상세 추가</button>
</div>
<div class="row">
	<table class="table table-bordered" style="text-align: center;">
		<colgroup>
			<col width="8%">
			<col width="8%">
			<col width="8%">
			<col width="11%">
			<col width="13%">
			<col width="13%">
			<col width="15%">
			<col width="8%">
			<col width="8%">
			<col width="8%">
		</colgroup>
		<thead>
	      <tr>
	        <th>가로</th>
	        <th>세로</th>
	        <th>두께</th>
	        <th>1BOX</th>
	        <th>박스당 수량</th>
	        <th>㎡당 중량</th>
	        <th>파렛트</th>
	        <th>줄눈</th>
	        <th>코너</th>
	        <th>비고</th>
	      </tr>
	    </thead>
	    <tbody id="tbody-product-detail" style="cursor: pointer;">
	    </tbody>
    </table>
</div>