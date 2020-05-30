<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<form id="frm-sample">
    <div class="form-group row">
        <label for="prdNm" class="col-sm-4 col-form-label">신청자명</label>
        <div class="col-sm-8">
            <input type="text" class="form-control" placeholder="신청자명을 입력하세요." name="sampleNm">
        </div>
    </div>

    <div class="form-group row">
        <label for="prdNm" class="col-sm-4 col-form-label">연락처</label>
        <div class="col-sm-8">
            <div class="input-group">
                <div class="input-group-prepend">
                    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">010</a>
                        <a class="dropdown-item" href="#">011</a>
                        <a class="dropdown-item" href="#">016</a>
                        <a class="dropdown-item" href="#">017</a>
                        <a class="dropdown-item" href="#">019</a>
                        <div role="separator" class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">02</a>
                        <a class="dropdown-item" href="#">031</a>
                        <a class="dropdown-item" href="#">053</a>
                    </div>
                </div>
                <input type="text" class="form-control" aria-label="Text input with dropdown button">
            </div>
        </div>
    </div>

        <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label-p">-- 제품은 최대 3개까지 신청가능합니다-- </label>
        </div>
        <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label">제품 선택1</label>
            <div class="col-sm-8">
                <select class="form-control">
                    <option>선택해주세요</option>
                    <option>와편</option>
                    <option>에코라이트</option>
                    <option>인조석</option>
                    <option>파벽돌</option>
                    <option>점토타일</option>
                    <option>바닥재</option>
                    <option>악세사리</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label">제품 선택2</label>
            <div class="col-sm-8">
                <select class="form-control">
                    <option>선택해주세요</option>
                    <option>물결파벽-69</option>
                    <option>물결파벽-61</option>
                    <option>이탈리아클링커-0129</option>
                    <option>MB코랄브릭-0819</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label">제품 선택3</label>
            <div class="col-sm-8">
                <select class="form-control">
                    <option>선택해주세요</option>
                    <option>물결파벽-69</option>
                    <option>물결파벽-61</option>
                    <option>이탈리아클링커-0129</option>
                    <option>MB코랄브릭-0819</option>
                </select>
            </div>
        </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">배송방법</label>
        <div class="col-sm-8">
            <select class="form-control">
                <option>선택해주세요</option>
                <option>택배 1~2일소요 / 제주도(착불)</option>
                <option>일반 3~4일소요(무료)</option>
            </select>
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">주소</label>
        <div class="col-sm-8">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="우편번호" aria-label="Recipient's username" aria-describedby="" readonly>
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button">검색</button>
                </div>
            </div>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-sm-4"></div>
        <div class="col-sm-8">
            <input type="text" class="form-control" placeholder="주소를 검색하세요." name="sampleAddress1" readonly>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-sm-4"></div>
        <div class="col-sm-8">
            <input type="text" class="form-control" placeholder="상세주소를 입력하세요." name="sampleAddress2">
        </div>
    </div>

    <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">비밀번호</label>
        <div class="col-sm-8">
            <input type="password" class="form-control" placeholder="비밀번호를 입력하세요." name="samplePsw">
        </div>
    </div>
    <c:if test="${category ne 'main'}">
    <div class="form-group">
        <label for="prdNm">개인정보취급방침:</label>
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
    <div class="form-group">
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">개인정보취급방침에 동의합니다.</label>
        </div>
    </div>
    </c:if>
</form>