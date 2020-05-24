<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/wellstone/well_header.jsp">
	<c:param name="page" value="manager" />
</c:import>

	<!-- Page Content -->
    <div class="container-fluid content">
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
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">게시판관리</li>
                    <c:choose>
                    	<c:when test="${category eq 'm_notice'}">
                    		<li class="breadcrumb-item active">공지사항</li>
                    	</c:when>
                    	<c:otherwise>
                    		<li class="breadcrumb-item active">자유게시판</li>
                    	</c:otherwise>
                    </c:choose>
                    
                </ol>
                <div class="btn-toolbar mb-2 mb-md-0" style="text-align: center;">
                    <div class="btn-group mr-2">
                        <button type="button" class="btn btn-outline-info" id="btn-create">글작성</button>
                    </div>
                </div> 
                <div style="margin-bottom: 20px;">
                	<c:import url="/WEB-INF/views/wellstone/well_incl_board.jsp">
						<c:param name="manage" value="manage" />
					</c:import>
                </div>
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