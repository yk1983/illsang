<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<!-- Success Modal -->
<div class="modal fade" id="modal-success" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelsuccess" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header-success">
        <h5 class="modal-title" id="exampleModalLabelsuccess">Success</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="white-text">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center" id="modal-success-text">
        	성공적으로 등록되었습니다.
      </div>
      <div class="modal-footer">
<!--         <button type="button" class="btn  btn-outline-success" data-dismiss="modal">확인</button> -->
        <button type="button" class="btn btn-primary btn-success" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>
<!-- /Success Modal -->

<!-- Error Modal -->
<div class="modal fade" id="modal-fail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabeldanger" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header-danger">
        <h5 class="modal-title" id="exampleModalLabeldanger">Error</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="white-text">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center" id="modal-fail-text">
        	빈칸을 모두 입력하여 주세요.
      </div>
      <div class="modal-footer">
<!--         <button type="button" class="btn  btn-outline-danger" data-dismiss="modal">확인</button> -->
        <button type="button" class="btn btn-primary btn-danger" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>
<!-- /Error Modal -->

<!-- Modal product -->
<div class="modal fade" id="modal-product" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">제품등록</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
            		<c:import url="/WEB-INF/views/wellstone/well_frm_product.jsp"  />
            		<input type="hidden" id="hidden-prd-detail-cnt" value="0">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btn-save-product" data-dismiss="modal">등록</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
            </div>
        </div>
    </div>
</div>
<!-- /Modal product -->

<!-- Modal board -->
<div class="modal fade" id="modal-board" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">
               		<c:choose>
               			<c:when test="${category eq 'm_notice'}">
               				공지사항 글등록
               			</c:when>
               			<c:otherwise>
               				자유게시판 글등록
               			</c:otherwise>
               		</c:choose>                	
               	</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" enctype="multipart/form-data" id="frm-board">
		            <c:if test="${category ne 'm_notice'}">
		            	<div class="form-group">
		                	<label for="prdNm">작성자:</label>
		                	<input type="text" class="form-control" id="boardNm" name="boardNm" placeholder="작성자명을 입력하세요.">
		            	</div>
<!-- 		            	<div class="form-group"> -->
<!-- 		                	<label for="prdNm">비밀번호:</label> -->
<!-- 		                	<input type="password" class="form-control" id="boardPw" name="boardPw" placeholder="비밀번호를 입력하세요."> -->
<!-- 		            	</div> -->
		            </c:if>
		            <div class="form-group">
		                <label for="prdNm">제목:</label>
		                <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요.">
		            </div>    
		            <div class="form-group">
		                <label for="exampleFormControlTextarea1">내용:</label>
		                <textarea class="form-control" id="content" name="content" rows="10"></textarea>
		            </div>
		            <c:if test="${category ne 'm_notice'}">
		            	<div class="form-group">
		                	<div class="form-group form-check">
		                    	<input type="checkbox" class="form-check-input" id="secretYn">
		                    	<label class="form-check-label" for="secretYn">비밀글로 등록합니다.</label>
		                	</div>
		            	</div>
		            	<div class="form-group">
	                		<label for="pwd">비밀번호:</label>
	                    	<input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요.">
		            	</div>
		            </c:if>
		            <c:if test="${category eq 'm_notice'}">
		            	<div class="form-group">
		                	<div class="form-group form-check">
		                    	<input type="checkbox" class="form-check-input" id="noticeYn">
		                    	<label class="form-check-label" for="noticeYn">공지여부</label>
		                	</div>
		            	</div>
		            	<div class="form-group">
		                	<label for="prdNm">공지시작일:</label>
		                	<input type="text" class="form-control" id="start" name="start">
		            	</div>
				        <div class="form-group">
			            	<label for="prdNm">공지종료일:</label>
				            <input type="text" class="form-control" id="end" name="end">
				        </div>
		            </c:if>
		            <div class="form-group">
		                <label for="prdNm">첨부파일:</label>
		                <input type="file" class="form-control-file" id="fileupload" name="fileupload" multiple="multiple">
		            </div>
		            <div id="fileList"></div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btn-save-board" data-dismiss="modal">등록</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
            </div>
        </div>
    </div>
</div>
<!-- /Modal board -->

<!-- main page와 중복되므로 -->
<c:if test="${category ne 'main'}">

<!-- Modal estimate -->
<div class="modal fade" id="modal-estimate" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">시공견적 문의</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
			<div class="modal-body">
				<c:import url="/WEB-INF/views/wellstone/well_frm_estimate.jsp" />
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" id="btn-create-estimate" data-dismiss="modal">등록</button>
                <button type="button" class="btn btn-primary" id="btn-update-estimate" data-dismiss="modal">수정</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
            </div>
		</div>
	</div>
</div>
<!-- /Modal estimate -->

<!-- Modal catalog -->
<div class="modal fade" id="modal-catalog" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">카달로그 신청</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
			<div class="modal-body">
				<c:import url="/WEB-INF/views/wellstone/well_frm_catalog.jsp" />
			</div>
		</div>
	</div>
</div>
<!-- /Modal catalog -->

<!-- Modal sample -->
<div class="modal fade" id="modal-sample" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">카달로그 신청</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
			<div class="modal-body">
				<c:import url="/WEB-INF/views/wellstone/well_frm_sample.jsp" />
			</div>
		</div>
	</div>
</div>
<!-- /Modal sample -->

</c:if>

<!-- Password Modal -->
<div class="modal fade" id="modal-password" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">비밀번호확인</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
			</div>
			<div class="modal-body">
				<form id="frm-password">
					<div class="form-group row">
				        <label for="staticEmail" class="col-sm-4 col-form-label">비밀번호</label>
				        <div class="col-sm-8">
				            <input type="password" class="form-control" placeholder="비밀번호를 입력하세요." name="password">
				        </div>
				    </div>
				</form>
			</div>
			<div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btn-chk-psw" data-dismiss="modal">확인</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
            </div>
		</div>
	</div>
</div>
<!-- /Password Modal -->

<!-- Modal privacy(estimate) -->
<div class="modal fade" id="modal-privacy-estimate" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">개인정보취급방침 동의서</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
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
                <div class="form-group">
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="chk-agree-estimate">
                        <label class="form-check-label" for="chk-agree-estimate">개인정보취급방침에 동의합니다.</label>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" name="btn-agree-estimate">등록</button>
            </div>
        </div>
    </div>
</div>
<!-- /Modal privacy -->

<!-- Modal privacy(catalog) -->
<div class="modal fade" id="modal-privacy-catalog" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">개인정보취급방침 동의서</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
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
                <div class="form-group">
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="chk-agree-estimate">
                        <label class="form-check-label" for="chk-agree-estimate">개인정보취급방침에 동의합니다.</label>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" name="btn-agree-catalog">등록</button>
            </div>
        </div>
    </div>
</div>
<!-- /Modal privacy -->

<!-- Modal privacy(sample) -->
<div class="modal fade" id="modal-privacy-sample" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">개인정보취급방침 동의서</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
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
                <div class="form-group">
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="chk-agree-estimate">
                        <label class="form-check-label" for="chk-agree-estimate">개인정보취급방침에 동의합니다.</label>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" name="btn-agree-sample">등록</button>
            </div>
        </div>
    </div>
</div>
<!-- /Modal privacy -->