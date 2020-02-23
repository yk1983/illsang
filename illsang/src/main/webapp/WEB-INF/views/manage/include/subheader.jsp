<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<!-- begin:: Subheader -->
<div class="kt-subheader   kt-grid__item" id="kt_subheader">
	
	<div class="kt-container  kt-container--fluid ">
		<c:choose>
			<c:when test="${param.gv_viewType ne 'dashboard'}">
				<div class="kt-subheader__main">
					<h3 class="kt-subheader__title">${gvPgmInfo.program_name }</h3>
					<span class="kt-subheader__separator kt-hidden"></span>
					<div class="kt-subheader__breadcrumbs">
						<a href="#" class="kt-subheader__breadcrumbs-home">
							<i class="flaticon2-shelter"></i>
						</a>
						<span class="kt-subheader__breadcrumbs-separator"></span>
						<a href="javascript:;" class="kt-subheader__breadcrumbs-link">
							${gvPgmInfo.scnd_node_name }
						</a>
						<span class="kt-subheader__breadcrumbs-separator"></span>
						<a href="javascript:;" class="kt-subheader__breadcrumbs-link">
							${gvPgmInfo.thrd_node_name }
						</a>
						<span class="kt-subheader__breadcrumbs-separator"></span>
						<a href="javascript:;" class="kt-subheader__breadcrumbs-link">
							${gvPgmInfo.program_name }
						</a>
						<!-- <span class="kt-subheader__breadcrumbs-link kt-subheader__breadcrumbs-link--active">Active link</span> -->
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="kt-subheader__main">
					<h3 class="kt-subheader__title">Dashboard</h3>
					<span class="kt-subheader__separator kt-hidden"></span>
					<div class="kt-subheader__breadcrumbs">
						<a href="#" class="kt-subheader__breadcrumbs-home">
							<i class="flaticon2-shelter"></i>
						</a>
						<span class="kt-subheader__breadcrumbs-separator"></span>
						<a href="javascript:;" class="kt-subheader__breadcrumbs-link">
							Dashboard
						</a>
					</div>
				</div>
			</c:otherwise>
		</c:choose>

		<div class="kt-subheader__toolbar">
			<div class="kt-subheader__wrapper">
				<a href="#" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="kt-tooltip" title="Reports" data-placement="top"><i class="flaticon2-writing"></i></a>
				<a href="#" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="kt-tooltip" title="Calendar" data-placement="top"><i class="flaticon2-hourglass-1"></i></a>
				<div class="dropdown dropdown-inline" data-toggle="kt-tooltip" title="Quick actions" data-placement="top">
					<a href="#" class="btn btn-icon btn btn-label btn-label-brand btn-bold" data-toggle="dropdown" data-offset="0px,0px" aria-haspopup="true" aria-expanded="false">
						<i class="flaticon2-add-1"></i>
					</a>
					<div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
						<ul class="kt-nav kt-nav--active-bg" role="tablist">
							<c:if test="${gvPgmInfo.new_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_new(this);">
									<i class="kt-nav__link-icon flaticon2-add-1"></i>
									<span class="kt-nav__link-text">신규</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.save_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_save(this);">
									<i class="kt-nav__link-icon flaticon2-laptop"></i>
									<span class="kt-nav__link-text">저장</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.del_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_delete(this);">
									<i class="kt-nav__link-icon flaticon2-trash"></i>
									<span class="kt-nav__link-text">삭제</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.prt_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_print(this);">
									<i class="kt-nav__link-icon flaticon2-print"></i>
									<span class="kt-nav__link-text">프린트</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.xls_up_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_xlsUp(this);">
									<i class="kt-nav__link-icon flaticon2-arrow-up"></i>
									<span class="kt-nav__link-text">엑셀 업로드</span>
									<span class="kt-nav__link-badge">
										<span class="kt-badge kt-badge--danger kt-badge--inline kt-badge--rounded">Excel</span>
									</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.xls_dn_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_xlsDn(this);">
									<i class="kt-nav__link-icon flaticon2-arrow-down"></i>
									<span class="kt-nav__link-text">엑셀 다운로드</span>
									<span class="kt-nav__link-badge">
										<span class="kt-badge kt-badge--danger kt-badge--inline kt-badge--rounded">Excel</span>
									</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.etc1_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_ext01(this);">
									<i class="kt-nav__link-icon flaticon2-cube"></i>
									<span class="kt-nav__link-text">${gvPgmInfo.etc1_btn_name }</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.etc2_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_ext02(this);">
									<i class="kt-nav__link-icon flaticon2-cube"></i>
									<span class="kt-nav__link-text">${gvPgmInfo.etc2_btn_name }</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.etc3_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_ext03(this);">
									<i class="kt-nav__link-icon flaticon2-cube"></i>
									<span class="kt-nav__link-text">${gvPgmInfo.etc3_btn_name }</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.etc4_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_ext04(this);">
									<i class="kt-nav__link-icon flaticon2-cube"></i>
									<span class="kt-nav__link-text">${gvPgmInfo.etc4_btn_name }</span>
								</a>
							</li>
							</c:if>
							<c:if test="${gvPgmInfo.etc5_btn_yn eq 'Y' }">
							<li class="kt-nav__item">
								<a href="javascript:;" class="kt-nav__link" onclick="gfn_ext05(this);">
									<i class="kt-nav__link-icon flaticon2-cube"></i>
									<span class="kt-nav__link-text">${gvPgmInfo.etc5_btn_name }</span>
								</a>
							</li>
							</c:if>
							<li class="kt-nav__item">
								<a class="kt-nav__link" role="tab">
									<i class="kt-nav__link-icon flaticon2-chart2"></i>
									<span class="kt-nav__link-text">Report</span>
									<span class="kt-nav__link-badge">
										<span class="kt-badge kt-badge--danger kt-badge--inline kt-badge--rounded">pdf</span>
									</span>
								</a>
							</li>
							<li class="kt-nav__item">
								<a href="" class="kt-nav__link">
									<i class="kt-nav__link-icon flaticon2-sms"></i>
									<span class="kt-nav__link-text">Post</span>
								</a>
							</li>
							<li class="kt-nav__item">
								<a href="" class="kt-nav__link">
									<i class="kt-nav__link-icon flaticon2-avatar"></i>
									<span class="kt-nav__link-text">Customer</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
				
				<c:choose>
					<c:when test="${param.gv_viewType ne 'dashboard'}">
						<div class="dropdown dropdown-inline" data-toggle="kt-tooltip" title="Quick actions" data-placement="top">
							<a href="#" class="btn btn btn-label btn-label-brand btn-bold" data-toggle="dropdown" data-offset="0 0" aria-haspopup="true" aria-expanded="false">
								Reports
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<ul class="kt-nav kt-nav--active-bg" id="kt_nav_1" role="tablist">
									<li class="kt-nav__item">
										<a href="" class="kt-nav__link">
											<i class="kt-nav__link-icon flaticon2-psd"></i>
											<span class="kt-nav__link-text">Products</span>
										</a>
									</li>
									<li class="kt-nav__item">
										<a class="kt-nav__link" role="tab" id="kt_nav_link_1">
											<i class="kt-nav__link-icon flaticon2-supermarket"></i>
											<span class="kt-nav__link-text">Customers</span>
											<span class="kt-nav__link-badge">
												<span class="kt-badge kt-badge--success kt-badge--inline kt-badge--rounded">6</span>
											</span>
										</a>
									</li>
									<li class="kt-nav__item">
										<a href="" class="kt-nav__link">
											<i class="kt-nav__link-icon flaticon2-shopping-cart"></i>
											<span class="kt-nav__link-text">Orders</span>
										</a>
									</li>
									<li class="kt-nav__item">
										<a href="" class="kt-nav__link">
											<i class="kt-nav__link-icon flaticon2-shopping-cart"></i>
											<span class="kt-nav__link-text">Reports</span>
										</a>
									</li>
									<li class="kt-nav__item">
										<a class="kt-nav__link" role="tab" id="kt_nav_link_2">
											<i class="kt-nav__link-icon flaticon2-chart2"></i>
											<span class="kt-nav__link-text">Console</span>
											<span class="kt-nav__link-badge">
												<span class="kt-badge kt-badge--danger kt-badge--inline kt-badge--rounded">new</span>
											</span>
										</a>
									</li>
									<li class="kt-nav__item">
										<a href="" class="kt-nav__link">
											<i class="kt-nav__link-icon flaticon2-sms"></i>
											<span class="kt-nav__link-text">Settings</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<a href="#" class="btn btn-sm btn-elevate btn-brand btn-elevate" id="kt_dashboard_daterangepicker" data-toggle="kt-tooltip" title="" data-placement="left" data-original-title="Select dashboard daterange">
							<span class="kt-opacity-7" id="kt_dashboard_daterangepicker_title">Today:</span>&nbsp;
							<span class="kt-font-bold" id="kt_dashboard_daterangepicker_date">Jan 11</span>
							<i class="flaticon-calendar-with-a-clock-time-tools kt-padding-l-5 kt-padding-r-0"></i>
						</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>
<!-- end:: Subheader -->