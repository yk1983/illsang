<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<form id="frm-estimate">
    <div class="form-group row">
        <label for="prdNm" class="col-sm-4 col-form-label">상호명</label>
        <div class="col-sm-8">
            <input type="text" class="form-control" placeholder="상호명을 입력하세요." name="estimateNm">
        </div>
    </div>

    <div class="form-group row">
        <label for="prdNm" class="col-sm-4 col-form-label">연락처</label>
        <div class="col-sm-8">
            <div class="input-group">
                <div class="input-group-prepend">
                    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" name="esimatePrevNum">선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" onclick="estimate_prev_num(this);" href="javascript:void(0);">010</a>
                        <a class="dropdown-item" onclick="estimate_prev_num(this);" href="javascript:void(0);">011</a>
                        <a class="dropdown-item" onclick="estimate_prev_num(this);" href="javascript:void(0);">016</a>
                        <a class="dropdown-item" onclick="estimate_prev_num(this);" href="javascript:void(0);">017</a>
                        <a class="dropdown-item" onclick="estimate_prev_num(this);" href="javascript:void(0);">019</a>
                        <div role="separator" class="dropdown-divider"></div>
                        <a class="dropdown-item" onclick="estimate_prev_num(this);" href="javascript:void(0);">02</a>
                        <a class="dropdown-item" onclick="estimate_prev_num(this);" href="javascript:void(0);">031</a>
                        <a class="dropdown-item" onclick="estimate_prev_num(this);" href="javascript:void(0);">053</a>
                    </div>
                </div>
                <input type="text" class="form-control" aria-label="Text input with dropdown button" name="estimatePhone">
            </div>
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">지역</label>
        <div class="col-sm-8">
            <select class="form-control" name="areaCd">
                <option>선택해주세요</option>
                <c:forEach var="area" items="${areaList}" begin="0" step="1">
            		<option data-grpCd="${area.GRP_CD}" value="${area.MENU_TP}">${area.MENU_NM}</option>
            	</c:forEach>
            </select>
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">건물형태</label>
        <div class="col-sm-8">
            <select class="form-control" name="buildingType">
            	<option value="">선택해주세요</option>
            	<c:forEach var="building" items="${buildingList}" begin="0" step="1">
            		<option data-grpCd="${building.GRP_CD}" value="${building.MENU_TP}">${building.MENU_NM}</option>
            	</c:forEach>
            </select>
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">벽형태</label>
        <div class="col-sm-8">
            <select class="form-control" name="wallType">
                <option value="">선택해주세요</option>
                <c:forEach var="wall" items="${wallList}" begin="0" step="1">
            		<option data-grpCd="${wall.GRP_CD}" value="${wall.MENU_TP}">${wall.MENU_NM}</option>
            	</c:forEach>
            </select>
        </div>
    </div>
    
    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">제품명</label>
        <div class="col-sm-8">
            <select class="form-control" name="estimateProduct">
                <option value="">선택해주세요</option>
                <c:forEach var="product" items="${productList}" begin="0" step="1">
            		<option data-grpCd="${product.CTGR_CD}" value="${product.PRD_CD}">${product.PRD_NM}</option>
            	</c:forEach>
            </select>
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">회배수</label>
        <div class="col-sm-8">
            <input type="text" class="form-control" name="area" placeholder="회배수를 입력하세요.">
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">매지여부</label>
        <div class="col-sm-8">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="tileJoint" value="Y" checked="checked">
                <label class="form-check-label" for="inlineRadio1">Y</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="tileJoint" value="N">
                <label class="form-check-label" for="inlineRadio2">N</label>
            </div>
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">외장</label>
        <div class="col-sm-8">
            <select class="form-control" name="exterior">
                <option value="">선택해주세요</option>
                <c:forEach var="exterior" items="${exteriorList}" begin="0" step="1">
            		<option data-grpCd="${exterior.GRP_CD}" value="${exterior.MENU_TP}">${exterior.MENU_NM}</option>
            	</c:forEach>
            </select>
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">내장</label>
        <div class="col-sm-8">
            <select class="form-control" name="interior">
                <option>선택해주세요</option>
                <c:forEach var="interior" items="${interiorList}" begin="0" step="1">
            		<option data-grpCd="${interior.GRP_CD}" value="${interior.MENU_TP}">${interior.MENU_NM}</option>
            	</c:forEach>
            </select>
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">비밀번호</label>
        <div class="col-sm-8">
            <input type="password" class="form-control" placeholder="비밀번호를 입력하세요." name="estimatePsw">
        </div>
    </div>

	<c:if test="${category ne 'main'}">
	
	<div class="form-group row" style="display: none;" id="div-estimate-response">
        <label for="staticEmail" class="col-sm-4 col-form-label">답변</label>
        <div class="col-sm-8">
        	<textarea class="form-control" rows="3" cols="" name="estimateRes" readonly="readonly"></textarea>
        </div>
    </div>
	
    <div class="form-group" id="div-estimate-privacy">
        <label for="">개인정보취급방침:</label>
        <div class="agree">
            <h5>수집하는 개인정보의 항목</h5>
            <p>회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.</p>
            <ul>
                <li>
                    <span>
                        <strong>수집항목</strong>
                    </span> : 이름, 연락처, 배송방법, 주소, 패스워드</li>
                <li>
                    <span>
                        <strong>개인정보 수집방법</strong>
                    </span> :
                    <span>홈페이지</span>(
                    <span>회원가입</span>)</li>
            </ul>

            <h5>개인정보의 수집 및 이용목적</h5>
            <p>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
            <ul>
                <li>
                    <span>
                        <strong>서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</strong>
                    </span>
                    <p>
                        <span>구매 및 요금 결제, 물품배송 또는 청구지 등 발송</span>
                    </p>
                </li>
                <li>
                    <span>
                        <strong>회원 관리</strong>
                    </span>
                    <p>회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인</p>
                </li>
            </ul>

            <h5>개인정보의 보유 및 이용기간</h5>
            <p>회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.</p>
        </div>
    </div>
    <div class="form-group" id="div-estimate-privacy-check">
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="estimatePrivacy">
            <label class="form-check-label" for="estimatePrivacy">개인정보취급방침에 동의합니다.</label>
        </div>
    </div>
    </c:if>
</form>