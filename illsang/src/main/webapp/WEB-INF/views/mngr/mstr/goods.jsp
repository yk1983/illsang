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
	<c:param name="gv_prgr" value="goods" />
	<c:param name="gv_prgrNm" value="생두목록" />
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
						<h4 class="card-title">생두목록</h4>
					</div>
					<div class="card-body">
						<div class="toolbar">
							<!-- Here you can write extra buttons/actions for the toolbar -->
							<form id="frm-srch-cond">
								<div class="row">
									<c:forEach var="hdr" items="${ds_cmn.hdr }" varStatus="i">
										<div class="col-md-4">
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
									<button id="btn-new" class="btn btn-sm btn-success">
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
								<!-- <tfoot>
									<tr>
										<th>No.</th>
										<th>상품명</th>
										<th>등급</th>
										<th>가공</th>
										<th>맛</th>
										<th>기준가</th>
										<th>사용여부</th>
										<th></th>
									</tr>
								</tfoot> -->
								<tbody></tbody>
							</table>
						</div>
					</div><!-- end content-->					
				</div><!--  end card  -->
			</div><!-- end col-md-12 -->
		</div><!-- end row -->
	</div>
</div>

<c:import url="/WEB-INF/views/mngr/incd/footer.jsp">
	<c:param name="gv_prgr" value="goods" />
</c:import>