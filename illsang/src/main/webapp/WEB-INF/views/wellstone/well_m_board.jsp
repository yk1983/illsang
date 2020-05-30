<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/wellstone/well_header.jsp">
	<c:param name="page" value="manager" />
</c:import>
	<!-- Page Content -->
    <div class="container-fluid content">
    ${category}
    	<!-- row -->
    	<div class="row">
    		<!-- nav -->
    		<c:import url="/WEB-INF/views/wellstone/well_m_nav.jsp">
				<c:param name="category" value="${category}" />
			</c:import>
            <!-- /nav -->
            <!-- main -->
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            		<c:choose>
            			<c:when test="${category eq 'm_product' || category eq 'm_product_detail'}">
               				<h1 class="title_h1">제품관리</h1>
               				<input type="hidden" id="ctgrCd" value="${code}">
               			</c:when>
               			<c:when test="${category eq 'm_construction'}">
               				<h1 class="title_h1">시공현황관리</h1>
               				<input type="hidden" id="ctgrCd" value="${code}">
               			</c:when>
               			<c:when test="${category eq 'm_estimate'}">
               				<h1 class="title_h1">견적관리</h1>
               				<input type="hidden" id="ctgrCd" value="${code}">
               			</c:when>
               			<c:when test="${category eq 'm_notice'}">
               				<h1 class="title_h1">공지사항</h1>
               				<input type="hidden" id="ctgrCd" value="${code}">
               			</c:when>               			
               			<c:otherwise>
               				<h1 class="title_h1">자유게시판</h1>
               				<input type="hidden" value="${code}">
               			</c:otherwise>
               		</c:choose>       
                </div>
                    
                <c:choose>
                	<c:when test="${category eq 'm_notice'}">
                		<ol class="breadcrumb">
	                 		<li class="breadcrumb-item">게시판관리</li>
	                 		<li class="breadcrumb-item active">공지사항</li>
                		</ol>
                	</c:when>
                	<c:when test="${category eq 'm_free'}">
                		<ol class="breadcrumb">
	                 		<li class="breadcrumb-item">게시판관리</li>
	                 		<li class="breadcrumb-item active">자유게시판</li>
                		</ol>
                	</c:when>
                	<c:when test="${category eq 'm_estimate'}">
                		<div class="form-check form-check-inline">
		                    <input class="form-check-input" type="radio" name="chk-estimate" value="시공견적문의" checked>
		                    <label class="form-check-label" for="inlineRadio1">시공견적문의</label>
		                </div>
		                <div class="form-check form-check-inline">
		                    <input class="form-check-input" type="radio" name="chk-estimate" value="카달로그신청">
		                    <label class="form-check-label" for="inlineRadio2">카달로그신청</label>
		                </div>
		                <div class="form-check form-check-inline mb-4">
		                    <input class="form-check-input" type="radio" name="chk-estimate" value="샘플신청">
		                    <label class="form-check-label" for="inlineRadio3">샘플신청</label>
		                </div>
		                <ol class="breadcrumb">
	                 		<li class="breadcrumb-item">견적관리</li>
	                 		<li class="breadcrumb-item active" id="li-breadcrumb">시공견적문의</li>
                		</ol>
                	</c:when>
                	<c:otherwise></c:otherwise>
                </c:choose>
				
				<c:choose>
					<c:when test="${category eq 'm_product_detail'}">
						<c:import url="/WEB-INF/views/wellstone/well_detail_product.jsp">
							<c:param name="category" value="${category}" />
							<c:param name="list" value="${list}" />
							<c:param name="productCtgrList" value="${productCtgrList}" />
						</c:import>	
					</c:when>
					<c:otherwise>
						<c:import url="/WEB-INF/views/wellstone/well_incl_board.jsp" />	
					</c:otherwise>
				</c:choose>
                
            </main>
            <!-- /main -->
    	</div>
    	<!-- /row -->
   	</div>
   	<!-- /Page Content -->
   	
<c:import url="/WEB-INF/views/wellstone/well_modal.jsp" />

<c:import url="/WEB-INF/views/wellstone/well_footer.jsp">
	<c:param name="category" value="${category}" />
</c:import>