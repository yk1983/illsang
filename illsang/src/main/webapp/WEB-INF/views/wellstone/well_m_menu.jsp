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
            		<h1 class="title_h1">메뉴관리</h1>
            	</div>
            	<div class="row" style="margin-bottom: 20px;">
            		<div class="col-sm-6">
            			<div id="accordion">
            				<c:forEach var="list" items="${menuList}" begin="0" step="1">
            					<div class="card">
            						<div class="card-header" id="heading${list.menuCd}">
            							<h5 class="mb-0">
            								<button class="btn btn-link" name="btn-menu" data-toggle="collapse" 
            										data-target="#collapse${list.menuCd}" aria-expanded="true" 
            										aria-controls="collapse${list.menuCd}" onclick="fn_draw.upd(this);"
            										data-cd="${list.menuCd}" data-pcd="${list.pMenuCd}"
        											data-tp="${list.menuTp}" data-url="${list.menuUrl}"
        											data-use="${list.useYn}" data-sort="${list.sortNo}"
            										>
                                            	${list.menuNm}
                                        	</button>
            							</h5>
            						</div>
            						<div id="collapse${list.menuCd}" class="collapse" aria-labelledby="heading${list.menuCd}" data-parent="#accordion">
            							<div class="card-body" style="padding: 0;">
            								<div class="list-group" id="list-tab" role="tablist">
            									<c:forEach var="menu" items="${list.list}" begin="0" step="1">
            										<a class="list-group-item list-group-item-action" data-toggle="list" href="javascript:void(0);" onclick="fn_draw.upd(this);" role="tab"
            											data-cd="${menu.menuCd}" data-pcd="${menu.pMenuCd}"
           												data-tp="${menu.menuTp}" data-url="${menu.menuUrl}"
           												data-use="${menu.useYn}" data-sort="${menu.sortNo}">
           												${menu.menuNm}
        											</a>
            									</c:forEach>
            								</div>
            							</div>
            						</div>
                            	</div>
                            </c:forEach>
                        </div>
            		</div>
            		<div class="col-sm-6">
            			<form id="frm-mgmt-menu">
            				<input type="hidden" value="" name="menuCd">
                            <div class="form-group">
                                <label for="prtMenuCd">상위메뉴:</label>
                                <select class="form-control" name="topMenu">
                                    <option value="0">없음</option>
                                    <c:forEach var="top" items="${topMenu}" begin="0" step="1">
                                    	<option value="${top.MENU_CD}">${top.MENU_NM}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="menuTp">메뉴유형:</label>
                                <select class="form-control" name="menuTp">
                                	<c:forEach var="type" items="${menuType}" begin="0" step="1">
                                		<option value="${type.MENU_TP}">${type.MENU_NM}</option>
                                	</c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="menuNm">메뉴명:</label>
                                <input type="text" class="form-control" id="menuNm" placeholder="메뉴명을 입력하세요." name="menuNm">
                            </div>
                            <div class="form-group">
                                <label for="menuUrl">메뉴URL:</label>
                                <input type="url" class="form-control" id="menuUrl" placeholder="메뉴URL을 입력하세요." name="menuUrl">
                            </div>
                            <div class="form-group">
                                <label for="sortNo">정렬순서:</label>
                                <input type="number" class="form-control" id="sortNo" placeholder="정렬순서를 입력하세요." name="sortNo">
                            </div>
                            <div class="form-group form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="useYn" id="useYn"> 메뉴 사용
                                </label>
                            </div>
                            <button type="button" class="btn btn-secondary" id="btn-reset">신규</button>
                            <button type="button" class="btn btn-primary" id="btn-save-menu">저장</button>
                            <button type="button" class="btn btn-warning" id="btn-update-menu" style="display: none;">수정</button>
                            <button type="button" class="btn btn-danger" id="btn-delete-menu" style="display: none;">삭제</button>                            
                        </form>
            		</div>
            	</div>
            </main>
            <!-- /main -->
    	</div>
    	<!-- /row -->
    </div>
    <!-- /Page Content -->

<c:import url="/WEB-INF/views/wellstone/well_footer.jsp">
	<c:param name="category" value="${category}" />
</c:import>