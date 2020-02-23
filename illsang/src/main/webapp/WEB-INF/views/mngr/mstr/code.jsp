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
	<c:param name="gv_prgr" value="code" />
	<c:param name="gv_prgrNm" value="공통코드" />
</c:import>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header card-header-primary card-header-icon">
						<div class="card-icon">
							<i class="material-icons">assignment</i>
						</div>
						<h4 class="card-title ">공통코드</h4>
					</div>
					<div class="card-body">
						<div class="toolbar">
							<!-- Here you can write extra buttons/actions for the toolbar -->
							<form id="frm-srch-cond">
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" class="form-control"
												placeholder="분류코드">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" class="form-control"
												placeholder="분류명">
										</div>
									</div>
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
									<button id="btn-reset" class="btn btn-sm">
										<i class="material-icons">refresh</i> 초기화
									</button>
								</div>
							</div>
						</div>
						<div class="material-datatables">
							<table id="tbl-code"
								class="table table-striped table-no-bordered table-hover"
								cellspacing="0">
								<thead>
									<tr>
										<th>No.</th>
										<th>분류코드</th>
										<th>분류명</th>
										<th>비고</th>
										<th>속성1</th>
										<th>속성2</th>
										<th>속성3</th>
										<th>속성4</th>
										<th>속성5</th>
										<th>속성6</th>
										<th>속성7</th>
										<th>속성8</th>
										<th>속성9</th>
										<th>속성10</th>
										<th>사용</th>
										<th></th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>
					</div>
				</div>
			</div><!-- master end -->
		</div>
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
	<c:param name="gv_prgr" value="code" />
</c:import>