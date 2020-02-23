<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<!--
 =========================================================
 Material Dashboard PRO - v2.1.0
 =========================================================

 Product Page: https://www.creative-tim.com/product/material-dashboard-pro
 Copyright 2019 Creative Tim (https://www.creative-tim.com)

 Coded by Creative Tim

 =========================================================

 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->

<c:import url="/WEB-INF/views/mngr/incd/header.jsp">
	<c:param name="gv_sidebar" value="on" />
	<c:param name="gv_lclass" value="mstr" />
	<c:param name="gv_prgr" value="goods" />
	<c:param name="gv_prgrNm" value="생두목록" />
</c:import>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div id="div-lst" class="card">
					<div class="card-header card-header-primary card-header-icon">
						<div class="card-icon">
							<i class="material-icons">assignment</i>
						</div>
						<h4 class="card-title">생두목록</h4>
					</div>
					<div class="card-body">
						<div class="toolbar">
							<!-- Here you can write extra buttons/actions for the toolbar -->
							<form id="frm-srch-cond">
								<div class="row">
									<c:forEach var="hdr" items="${ds_cmn.hdr }" varStatus="i">
										<div class="col-md-3">
											<select name="${hdr.ctg_cd }" class="selectpicker"
													data-style="select-with-transition" 
													<c:if test="${hdr.ctg_cd ne 'MS002' && hdr.ctg_cd ne 'MS006' }">
														multiple
													</c:if>
													title="${hdr.ctg_nm }" data-size="7">
												<c:forEach var="dtl" items="${hdr.dtl }" varStatus="j">
													<option value="${dtl.ctg_dtl_cd }">${dtl.ctg_dtl_nm }</option>
												</c:forEach>
											</select>
										</div>
									</c:forEach>
								</div>
							</form>
							<div class="row text-right">
								<div class="col-md-12">
									<button id="btn-new" class="btn btn-sm btn-success" data-toggle="modal" data-target="#pop-editor">
										<i class="material-icons">add</i> 신규
									</button>
									<button id="btn-search" class="btn btn-sm btn-primary">
										<i class="material-icons">search</i> 조회
									</button>
								</div>
							</div>
						</div>
						<div class="material-datatables">
							<table id="tbl-gods"
								class="table table-striped table-no-bordered table-hover"
								cellspacing="0" width="100%" style="width: 100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>상품명</th>
										<th>등급</th>
										<th>가공</th>
										<th>맛</th>
										<th>기준가</th>
										<th>사용</th>
										<th></th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>
					</div><!-- end content-->					
				</div><!--  end card  -->
			</div><!-- end col-md-12 -->
			
			<div class="col-md-12">
			    <form id="frm-rgst" action="" method="">
				    <div class="card ">
				        <div class="card-header card-header-rose card-header-icon">
				            <div class="card-icon">
				                <i class="material-icons">edit</i>
				            </div>
				            <h4 class="card-title">신규등록</h4>
				        </div>
				        <div class="card-body ">
				        	<div class="row">
				        		<c:forEach var="hdr" items="${ds_cmn.hdr }" varStatus="i">
									<div class="col-md-3">
										<select name="${hdr.ctg_cd }" class="selectpicker"
												data-style="select-with-transition" 
												<c:if test="${hdr.ctg_cd ne 'MS002' && hdr.ctg_cd ne 'MS006' }">
													multiple
												</c:if>
												title="${hdr.ctg_nm }" data-size="7">
											<c:forEach var="dtl" items="${hdr.dtl }" varStatus="j">
												<option value="${dtl.ctg_dtl_cd }">${dtl.ctg_dtl_nm }</option>
											</c:forEach>
										</select>
									</div>
								</c:forEach>
							</div>
							<div class="row">
						        <div class="col-md-2">
						            <div class="form-group">
						                <label for="examplePassword" class="bmd-label-floating"> 상품코드 *</label>
						                <input type="password" class="form-control" id="examplePassword" required="true" name="password">
						            </div>
						        </div>
						        <div class="col-md-4">
									<div class="form-group">
						                <label for="exampleEmail" class="bmd-label-floating"> 상품명 *</label>
						                <input type="email" class="form-control" id="exampleEmail" required="true">
						            </div>
						        </div>
				        		<div class="col-md-12">
						            <div class="category form-category">* Required fields</div>				        		
				        		</div>
				        	</div>
				        </div>
				        <div class="card-footer text-right">
				            <div class="form-check mr-auto">
				                <label class="form-check-label">
				            <input class="form-check-input" type="checkbox" value="" required> Subscribe to newsletter
				            <span class="form-check-sign">
				              <span class="check"></span>
				            </span>
				          </label>
				            </div>
				            <button type="submit" class="btn btn-rose">Register</button>
				        </div>
				    </div>
				</form>
			</div>
		</div><!-- end row -->
	</div>
</div>

<!-- pop-editor modal -->
<div class="modal fade" id="pop-editor" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-notice">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModalLabel">How Do You Become an Affiliate?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
            <i class="material-icons">close</i>
          </button>
            </div>
            <div class="modal-body">
                <div class="instruction">
                    <div class="row">
                        <div class="col-md-8">
                            <strong>1. Register</strong>
                            <p class="description">The first step is to create an account at
                                <a href="http://www.creative-tim.com/">Creative Tim</a>. You can choose a social network or go for the classic version, whatever works best for you.</p>
                        </div>
                        <div class="col-md-4">
                            <div class="picture">
                                <img src="../../assets/img/card-1.jpg" alt="Thumbnail Image" class="rounded img-fluid">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="instruction">
                    <div class="row">
                        <div class="col-md-8">
                            <strong>2. Apply</strong>
                            <p class="description">The first step is to create an account at
                                <a href="http://www.creative-tim.com/">Creative Tim</a>. You can choose a social network or go for the classic version, whatever works best for you.</p>
                        </div>
                        <div class="col-md-4">
                            <div class="picture">
                                <img src="../../assets/img/card-2.jpg" alt="Thumbnail Image" class="rounded img-fluid">
                            </div>
                        </div>
                    </div>
                </div>
                <p>If you have more questions, don't hesitate to contact us or send us a tweet @creativetim. We're here to help!</p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-info btn-round" data-dismiss="modal">Sounds good!</button>
            </div>
        </div>
    </div>
</div><!-- end pop-editor modal -->

<c:import url="/WEB-INF/views/mngr/incd/footer.jsp">
	<c:param name="gv_prgr" value="goods" />
</c:import>