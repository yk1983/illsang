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
<!-- /Modal sample -->  