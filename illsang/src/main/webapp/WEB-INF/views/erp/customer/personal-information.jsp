<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/erp/include/header.jsp">
	<c:param name="gv_viewType" value="pages"></c:param>
</c:import>

				<!-- begin:: Wrapper -->
				<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">

					<!-- begin:: Header -->
					<div id="kt_header" class="kt-header kt-grid__item  kt-header--fixed ">

						<!-- begin:: Header Menu -->
						<button class="kt-header-menu-wrapper-close" id="kt_header_menu_mobile_close_btn"><i class="la la-close"></i></button>
						<div class="kt-header-menu-wrapper" id="kt_header_menu_wrapper">
							<div id="kt_header_menu" class="kt-header-menu kt-header-menu-mobile  kt-header-menu--layout- ">
								<ul class="kt-menu__nav ">
									<li class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel kt-menu__item--active" data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><span class="kt-menu__link-text">Pages</span><i class="kt-menu__hor-arrow la la-angle-down"></i><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
										<div class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--left">
											<ul class="kt-menu__subnav">
												<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Create New Post</span></a></li>
												<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Generate Reports</span><span class="kt-menu__link-badge"><span class="kt-badge kt-badge--success">2</span></span></a></li>
												<li class="kt-menu__item  kt-menu__item--submenu" data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Manage Orders</span><i class="kt-menu__hor-arrow la la-angle-right"></i><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
													<div class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--right">
														<ul class="kt-menu__subnav">
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Latest Orders</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Pending Orders</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Processed Orders</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Delivery Reports</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Payments</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Customers</span></a></li>
														</ul>
													</div>
												</li>
												<li class="kt-menu__item  kt-menu__item--submenu" data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a href="#" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Customer Feedbacks</span><i class="kt-menu__hor-arrow la la-angle-right"></i><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
													<div class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--right">
														<ul class="kt-menu__subnav">
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Customer Feedbacks</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Supplier Feedbacks</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Reviewed Feedbacks</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Resolved Feedbacks</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Feedback Reports</span></a></li>
														</ul>
													</div>
												</li>
												<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Register Member</span></a></li>
											</ul>
										</div>
									</li>
									<li class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel" data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><span class="kt-menu__link-text">Reports</span><i class="kt-menu__hor-arrow la la-angle-down"></i><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
										<div class="kt-menu__submenu  kt-menu__submenu--fixed kt-menu__submenu--left" style="width:1000px">
											<div class="kt-menu__subnav">
												<ul class="kt-menu__content">
													<li class="kt-menu__item ">
														<h3 class="kt-menu__heading kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Finance Reports</span><i class="kt-menu__ver-arrow la la-angle-right"></i></h3>
														<ul class="kt-menu__inner">
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-map"></i><span class="kt-menu__link-text">Annual Reports</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-user"></i><span class="kt-menu__link-text">HR Reports</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-clipboard"></i><span class="kt-menu__link-text">IPO Reports</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-graphic-1"></i><span class="kt-menu__link-text">Finance Margins</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-graphic-2"></i><span class="kt-menu__link-text">Revenue Reports</span></a></li>
														</ul>
													</li>
													<li class="kt-menu__item ">
														<h3 class="kt-menu__heading kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Project Reports</span><i class="kt-menu__ver-arrow la la-angle-right"></i></h3>
														<ul class="kt-menu__inner">
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--line"><span></span></i><span class="kt-menu__link-text">Coca Cola CRM</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--line"><span></span></i><span class="kt-menu__link-text">Delta Airlines Booking Site</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--line"><span></span></i><span class="kt-menu__link-text">Malibu Accounting</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--line"><span></span></i><span class="kt-menu__link-text">Vineseed Website Rewamp</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--line"><span></span></i><span class="kt-menu__link-text">Zircon Mobile App</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--line"><span></span></i><span class="kt-menu__link-text">Mercury CMS</span></a></li>
														</ul>
													</li>
													<li class="kt-menu__item ">
														<h3 class="kt-menu__heading kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">HR Reports</span><i class="kt-menu__ver-arrow la la-angle-right"></i></h3>
														<ul class="kt-menu__inner">
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Staff Directory</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Client Directory</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Salary Reports</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Staff Payslips</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Corporate Expenses</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Project Expenses</span></a></li>
														</ul>
													</li>
													<li class="kt-menu__item ">
														<h3 class="kt-menu__heading kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Reporting Apps</span><i class="kt-menu__ver-arrow la la-angle-right"></i></h3>
														<ul class="kt-menu__inner">
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Report Adjusments</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Sources & Mediums</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Reporting Settings</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Conversions</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Report Flows</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><span class="kt-menu__link-text">Audit & Logs</span></a></li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</li>
									<li class="kt-menu__item  kt-menu__item--submenu kt-menu__item--rel" data-ktmenu-submenu-toggle="click" aria-haspopup="true"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><span class="kt-menu__link-text">Apps</span><i class="kt-menu__hor-arrow la la-angle-down"></i><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
										<div class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--left">
											<ul class="kt-menu__subnav">
												<li class="kt-menu__item " aria-haspopup="true"><a href="javascript:;" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">eCommerce</span></a></li>
												<li class="kt-menu__item  kt-menu__item--submenu" data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Audience</span><i class="kt-menu__hor-arrow la la-angle-right"></i><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
													<div class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--right">
														<ul class="kt-menu__subnav">
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-users"></i><span class="kt-menu__link-text">Active Users</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-interface-1"></i><span class="kt-menu__link-text">User Explorer</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-lifebuoy"></i><span class="kt-menu__link-text">Users Flows</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-graphic-1"></i><span class="kt-menu__link-text">Market Segments</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-graphic"></i><span class="kt-menu__link-text">User Reports</span></a></li>
														</ul>
													</div>
												</li>
												<li class="kt-menu__item " aria-haspopup="true"><a href="javascript:;" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Marketing</span></a></li>
												<li class="kt-menu__item " aria-haspopup="true"><a href="javascript:;" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Campaigns</span><span class="kt-menu__link-badge"><span class="kt-badge kt-badge--success">3</span></span></a></li>
												<li class="kt-menu__item  kt-menu__item--submenu" data-ktmenu-submenu-toggle="hover" aria-haspopup="true"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">Cloud Manager</span><i class="kt-menu__hor-arrow la la-angle-right"></i><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
													<div class="kt-menu__submenu kt-menu__submenu--classic kt-menu__submenu--right">
														<ul class="kt-menu__subnav">
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-add"></i><span class="kt-menu__link-text">File Upload</span><span class="kt-menu__link-badge"><span class="kt-badge kt-badge--danger">3</span></span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-signs-1"></i><span class="kt-menu__link-text">File Attributes</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-folder"></i><span class="kt-menu__link-text">Folders</span></a></li>
															<li class="kt-menu__item " aria-haspopup="true"><a href="#" class="kt-menu__link "><i class="kt-menu__link-icon flaticon-cogwheel-2"></i><span class="kt-menu__link-text">System Settings</span></a></li>
														</ul>
													</div>
												</li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<!-- end:: Header Menu -->

						<!-- begin:: Header Topbar -->
						<div class="kt-header__topbar">

							<!--begin: Search -->
							<div class="kt-header__topbar-item kt-header__topbar-item--search dropdown">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="10px,0px">
									<span class="kt-header__topbar-icon"><i class="flaticon2-search-1"></i></span>
								</div>
								<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-top-unround dropdown-menu-anim dropdown-menu-lg">
									<div class="kt-quick-search kt-quick-search--dropdown kt-quick-search--result-compact" id="kt_quick_search_dropdown">
										<form method="get" class="kt-quick-search__form">
											<div class="input-group">
												<div class="input-group-prepend"><span class="input-group-text"><i class="flaticon2-search-1"></i></span></div>
												<input type="text" class="form-control kt-quick-search__input" placeholder="Search...">
												<div class="input-group-append"><span class="input-group-text"><i class="la la-close kt-quick-search__close"></i></span></div>
											</div>
										</form>
										<div class="kt-quick-search__wrapper kt-scroll" data-scroll="true" data-height="325" data-mobile-height="200">
										</div>
									</div>
								</div>
							</div>

							<!--end: Search -->

							<!--begin: Notifications -->
							<div class="kt-header__topbar-item dropdown">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="30px,0px">
									<span class="kt-header__topbar-icon">
										<i class="flaticon2-bell-alarm-symbol"></i>
										<span class="kt-badge kt-badge--dot kt-badge--notify kt-badge--sm kt-badge--brand"></span>
									</span>
								</div>
								<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-lg">
									<form>
										<div class="kt-head" style="background-image: url(assets/media/misc/head_bg_sm.jpg)">
											<h3 class="kt-head__title">User Notifications</h3>
											<div class="kt-head__sub"><span class="kt-head__desc">23 new notifications</span></div>
										</div>
										<div class="kt-notification kt-margin-t-30 kt-margin-b-20 kt-scroll" data-scroll="true" data-height="270" data-mobile-height="220">
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-line-chart kt-font-success"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														New order has been received
													</div>
													<div class="kt-notification__item-time">
														2 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-box-1 kt-font-brand"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														New customer is registered
													</div>
													<div class="kt-notification__item-time">
														3 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-chart2 kt-font-danger"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														Application has been approved
													</div>
													<div class="kt-notification__item-time">
														3 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-image-file kt-font-warning"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														New file has been uploaded
													</div>
													<div class="kt-notification__item-time">
														5 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-user kt-font-info"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														New user feedback received
													</div>
													<div class="kt-notification__item-time">
														8 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-pie-chart-2 kt-font-success"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														System reboot has been successfully completed
													</div>
													<div class="kt-notification__item-time">
														12 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-favourite kt-font-focus"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														New order has been placed
													</div>
													<div class="kt-notification__item-time">
														15 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item kt-notification__item--read">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-safe kt-font-primary"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														Company meeting canceled
													</div>
													<div class="kt-notification__item-time">
														19 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-psd kt-font-success"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														New report has been received
													</div>
													<div class="kt-notification__item-time">
														23 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon-download-1 kt-font-danger"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														Finance report has been generated
													</div>
													<div class="kt-notification__item-time">
														25 hrs ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon-security kt-font-warning"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														New customer comment recieved
													</div>
													<div class="kt-notification__item-time">
														2 days ago
													</div>
												</div>
											</a>
											<a href="#" class="kt-notification__item">
												<div class="kt-notification__item-icon">
													<i class="flaticon2-pie-chart kt-font-focus"></i>
												</div>
												<div class="kt-notification__item-details">
													<div class="kt-notification__item-title">
														New customer is registered
													</div>
													<div class="kt-notification__item-time">
														3 days ago
													</div>
												</div>
											</a>
										</div>
									</form>
								</div>
							</div>

							<!--end: Notifications -->

							<!--begin: Quick Actions -->
							<div class="kt-header__topbar-item">
								<div class="kt-header__topbar-wrapper" id="kt_offcanvas_toolbar_quick_actions_toggler_btn">
									<span class="kt-header__topbar-icon"><i class="flaticon2-gear"></i></span>
								</div>
							</div>

							<!--end: Quick Actions -->

							<!--begin:: Languages -->
							<div class="kt-header__topbar-item kt-header__topbar-item--langs">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="10px,0px">
									<span class="kt-header__topbar-icon">
										<img class="" src="assets/media/flags/226-united-states.svg" alt="" />
									</span>
								</div>
								<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround">
									<ul class="kt-nav kt-margin-t-10 kt-margin-b-10">
										<li class="kt-nav__item kt-nav__item--active">
											<a href="#" class="kt-nav__link">
												<span class="kt-nav__link-icon"><img src="assets/media/flags/226-united-states.svg" alt="" /></span>
												<span class="kt-nav__link-text">English</span>
											</a>
										</li>
										<li class="kt-nav__item">
											<a href="#" class="kt-nav__link">
												<span class="kt-nav__link-icon"><img src="assets/media/flags/128-spain.svg" alt="" /></span>
												<span class="kt-nav__link-text">Spanish</span>
											</a>
										</li>
										<li class="kt-nav__item">
											<a href="#" class="kt-nav__link">
												<span class="kt-nav__link-icon"><img src="assets/media/flags/162-germany.svg" alt="" /></span>
												<span class="kt-nav__link-text">German</span>
											</a>
										</li>
									</ul>
								</div>
							</div>

							<!--end:: Languages -->

							<!--begin: User Bar -->
							<div class="kt-header__topbar-item kt-header__topbar-item--user">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="0px,0px">

									<!--use "kt-rounded" class for rounded avatar style-->
									<div class="kt-header__topbar-user kt-rounded-">
										<span class="kt-header__topbar-welcome kt-hidden-mobile">Hi,</span>
										<span class="kt-header__topbar-username kt-hidden-mobile">Sean</span>
										<img alt="Pic" src="assets/media/users/300_25.jpg" class="kt-rounded-" />

										<!--use below badge element instead the user avatar to display username's first letter(remove kt-hidden class to display it) -->
										<span class="kt-badge kt-badge--username kt-badge--lg kt-badge--brand kt-hidden kt-badge--bold">S</span>
									</div>
								</div>
								<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-sm">
									<div class="kt-user-card kt-margin-b-40 kt-margin-b-30-tablet-and-mobile" style="background-image: url(assets/media/misc/head_bg_sm.jpg)">
										<div class="kt-user-card__wrapper">
											<div class="kt-user-card__pic">

												<!--use "kt-rounded" class for rounded avatar style-->
												<img alt="Pic" src="assets/media/users/300_21.jpg" class="kt-rounded-" />
											</div>
											<div class="kt-user-card__details">
												<div class="kt-user-card__name">Alex Stone</div>
												<div class="kt-user-card__position">CTO, Loop Inc.</div>
											</div>
										</div>
									</div>
									<ul class="kt-nav kt-margin-b-10">
										<li class="kt-nav__item">
											<a href="custom/profile/personal-information.html" class="kt-nav__link">
												<span class="kt-nav__link-icon"><i class="flaticon2-calendar-3"></i></span>
												<span class="kt-nav__link-text">My Profile</span>
											</a>
										</li>
										<li class="kt-nav__item">
											<a href="custom/profile/overview-1.html" class="kt-nav__link">
												<span class="kt-nav__link-icon"><i class="flaticon2-browser-2"></i></span>
												<span class="kt-nav__link-text">My Tasks</span>
											</a>
										</li>
										<li class="kt-nav__item">
											<a href="custom/profile/overview-2.html" class="kt-nav__link">
												<span class="kt-nav__link-icon"><i class="flaticon2-mail"></i></span>
												<span class="kt-nav__link-text">Messages</span>
											</a>
										</li>
										<li class="kt-nav__item">
											<a href="custom/profile/account-settings.html" class="kt-nav__link">
												<span class="kt-nav__link-icon"><i class="flaticon2-gear"></i></span>
												<span class="kt-nav__link-text">Settings</span>
											</a>
										</li>
										<li class="kt-nav__separator kt-nav__separator--fit"></li>
										<li class="kt-nav__custom kt-space-between">
											<a href="custom/login/login-v1.html" target="_blank" class="btn btn-label-brand btn-upper btn-sm btn-bold">Sign Out</a>
											<i class="flaticon2-information kt-label-font-color-2" data-toggle="kt-tooltip" data-placement="right" title="" data-original-title="Click to learn more..."></i>
										</li>
									</ul>
								</div>
							</div>

							<!--end: User Bar -->

							<!--begin:: Quick Panel Toggler -->
							<div class="kt-header__topbar-item kt-header__topbar-item--quick-panel" data-toggle="kt-tooltip" title="Quick panel" data-placement="right">
								<span class="kt-header__topbar-icon" id="kt_quick_panel_toggler_btn">
									<i class="flaticon2-grids"></i>
								</span>
							</div>

							<!--end:: Quick Panel Toggler -->
						</div>

						<!-- end:: Header Topbar -->
					</div>

					<!-- end:: Header -->
					<div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">

						<!-- begin:: Subheader -->
						<div class="kt-subheader   kt-grid__item" id="kt_subheader">
							<div class="kt-container  kt-container--fluid ">
								<div class="kt-subheader__main">
									<h3 class="kt-subheader__title">Profile</h3>
									<span class="kt-subheader__separator kt-hidden"></span>
									<div class="kt-subheader__breadcrumbs">
										<a href="#" class="kt-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
										<span class="kt-subheader__breadcrumbs-separator"></span>
										<a href="" class="kt-subheader__breadcrumbs-link">
											Custom </a>
										<span class="kt-subheader__breadcrumbs-separator"></span>
										<a href="" class="kt-subheader__breadcrumbs-link">
											Apps </a>
										<span class="kt-subheader__breadcrumbs-separator"></span>
										<a href="" class="kt-subheader__breadcrumbs-link">
											Profile </a>
										<span class="kt-subheader__breadcrumbs-separator"></span>
										<a href="" class="kt-subheader__breadcrumbs-link">
											Personal Information </a>

										<!-- <span class="kt-subheader__breadcrumbs-link kt-subheader__breadcrumbs-link--active">Active link</span> -->
									</div>
								</div>
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
													<li class="kt-nav__item">
														<a href="" class="kt-nav__link">
															<i class="kt-nav__link-icon flaticon2-psd"></i>
															<span class="kt-nav__link-text">Document</span>
														</a>
													</li>
													<li class="kt-nav__item">
														<a class="kt-nav__link" role="tab">
															<i class="kt-nav__link-icon flaticon2-supermarket"></i>
															<span class="kt-nav__link-text">Message</span>
														</a>
													</li>
													<li class="kt-nav__item">
														<a href="" class="kt-nav__link">
															<i class="kt-nav__link-icon flaticon2-shopping-cart"></i>
															<span class="kt-nav__link-text">Product</span>
														</a>
													</li>
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
									</div>
								</div>
							</div>
						</div>

						<!-- end:: Subheader -->

						<!-- begin:: Content -->
						<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">

							<!--Begin::App-->
							<div class="kt-grid kt-grid--desktop kt-grid--ver kt-grid--ver-desktop kt-app">

								<!--Begin:: App Aside Mobile Toggle-->
								<button class="kt-app__aside-close" id="kt_profile_aside_close">
									<i class="la la-close"></i>
								</button>

								<!--End:: App Aside Mobile Toggle-->

								<!--Begin:: App Aside-->
								<div class="kt-grid__item kt-app__toggle kt-app__aside kt-app__aside--sm kt-app__aside--fit" id="kt_profile_aside">

									<!--Begin:: Portlet-->
									<div class="kt-portlet">
										<div class="kt-portlet__body">
											<div class="kt-widget kt-widget--general-1">
												<div class="kt-media kt-media--brand kt-media--md kt-media--circle">
													<img src="assets/media/users/100_3.jpg" alt="image">
												</div>
												<div class="kt-widget__wrapper">
													<div class="kt-widget__label">
														<a href="#" class="kt-widget__title">
															Luke Davids
														</a>
														<span class="kt-widget__desc">
															Web Developer
														</span>
													</div>
													<div class="kt-widget__toolbar kt-widget__toolbar--top-">
														<div class="btn-group">
															<div class="dropdown dropdown-inline">
																<button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																	<i class="flaticon-more-1"></i>
																</button>
																<div class="dropdown-menu dropdown-menu-fit dropdown-menu-md dropdown-menu-right">

																	<!--begin::Nav-->
																	<ul class="kt-nav">
																		<li class="kt-nav__head">
																			Export Options
																			<i class="flaticon2-information" data-toggle="kt-tooltip" data-placement="right" title="Click to learn more..."></i>
																		</li>
																		<li class="kt-nav__separator"></li>
																		<li class="kt-nav__item">
																			<a href="#" class="kt-nav__link">
																				<i class="kt-nav__link-icon flaticon2-drop"></i>
																				<span class="kt-nav__link-text">Users</span>
																			</a>
																		</li>
																		<li class="kt-nav__item">
																			<a href="#" class="kt-nav__link">
																				<i class="kt-nav__link-icon flaticon2-calendar-8"></i>
																				<span class="kt-nav__link-text">Reports</span>
																				<span class="kt-nav__link-badge">
																					<span class="kt-badge kt-badge--danger">9</span>
																				</span>
																			</a>
																		</li>
																		<li class="kt-nav__item">
																			<a href="#" class="kt-nav__link">
																				<i class="kt-nav__link-icon flaticon2-drop"></i>
																				<span class="kt-nav__link-text">Statements</span>
																			</a>
																		</li>
																		<li class="kt-nav__item">
																			<a href="#" class="kt-nav__link">
																				<i class="kt-nav__link-icon flaticon2-new-email"></i>
																				<span class="kt-nav__link-text">Customer Support</span>
																			</a>
																		</li>
																		<li class="kt-nav__separator"></li>
																		<li class="kt-nav__foot">
																			<a class="btn btn-label-brand btn-bold btn-sm" href="#">Proceed</a>
																			<a class="btn btn-clean btn-bold btn-sm" href="#" data-toggle="kt-tooltip" data-placement="right" title="Click to learn more...">Learn more</a>
																		</li>
																	</ul>

																	<!--end::Nav-->
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="kt-portlet__separator"></div>
										<div class="kt-portlet__body">
											<ul class="kt-nav kt-nav--bolder kt-nav--fit-ver kt-nav--v4" role="tablist">
												<li class="kt-nav__item  active ">
													<a class="kt-nav__link active" href="?page=custom/profile/personal-information" role="tab">
														<span class="kt-nav__link-icon"><i class="flaticon2-user"></i></span>
														<span class="kt-nav__link-text">Personal Information</span>
													</a>
												</li>
												<li class="kt-nav__item  ">
													<a class="kt-nav__link" href="?page=custom/profile/account-settings" role="tab">
														<span class="kt-nav__link-icon"><i class="flaticon-feed"></i></span>
														<span class="kt-nav__link-text">Account Settings</span>
													</a>
												</li>
												<li class="kt-nav__item  ">
													<a class="kt-nav__link" href="?page=custom/profile/change-password" role="tab">
														<span class="kt-nav__link-icon"><i class="flaticon2-settings"></i></span>
														<span class="kt-nav__link-text">Change Password</span>
													</a>
												</li>
												<li class="kt-nav__item  ">
													<a class="kt-nav__link" href="?page=custom/profile/user-settings" role="tab">
														<span class="kt-nav__link-icon"><i class="flaticon2-chart2"></i></span>
														<span class="kt-nav__link-text">User Settings</span>
													</a>
												</li>
											</ul>
										</div>
										<div class="kt-portlet__separator"></div>
										<div class="kt-portlet__body">
											<ul class="kt-nav kt-nav--bolder kt-nav--fit-ver kt-nav--v4" role="tablist">
												<li class="kt-nav__item">
													<a class="kt-nav__link" href="#" role="tab" data-toggle="kt-tooltip" data-placement="right" title="This feature is coming soon!">
														<span class="kt-nav__link-icon"><i class="flaticon2-chart2"></i></span>
														<span class="kt-nav__link-text">Email Settings</span>
													</a>
												</li>
												<li class="kt-nav__item">
													<a class="kt-nav__link" href="#" role="tab" data-toggle="kt-tooltip" data-placement="right" title="This feature is coming soon!">
														<span class="kt-nav__link-icon"><i class="flaticon-safe-shield-protection"></i></span>
														<span class="kt-nav__link-text">Saved Credit Cards</span>
													</a>
												</li>
												<li class="kt-nav__item">
													<a class="kt-nav__link" href="#" role="tab" data-toggle="kt-tooltip" data-placement="right" title="This feature is coming soon!">
														<span class="kt-nav__link-icon"><i class="flaticon-download-1"></i></span>
														<span class="kt-nav__link-text">Social Networks</span>
													</a>
												</li>
												<li class="kt-nav__item">
													<a class="kt-nav__link" href="#" role="tab" data-toggle="kt-tooltip" data-placement="right" title="This feature is coming soon!">
														<span class="kt-nav__link-icon"><i class="flaticon-security"></i></span>
														<span class="kt-nav__link-text">Tax Information</span>
													</a>
												</li>
												<li class="kt-nav__space"></li>
												<li class="kt-nav__custom">
													<a href="#" class="btn btn-default btn-sm btn-upper btn-bold">
														New Group
													</a>
												</li>
											</ul>
										</div>
									</div>

									<!--End:: Portlet-->

									<!--Begin:: Portlet-->
									<div class="kt-portlet kt-portlet--head-noborder">
										<div class="kt-portlet__head">
											<div class="kt-portlet__head-label">
												<h3 class="kt-portlet__head-title  kt-font-danger">
													Important Update
												</h3>
											</div>
											<div class="kt-portlet__head-toolbar">
												<span class="kt-badge kt-badge--bolder kt-badge kt-badge--inline kt-badge--danger">Now</span>
											</div>
										</div>
										<div class="kt-portlet__body kt-portlet__body--fit-top">
											<div class="kt-section kt-section--space-sm">
												Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
											</div>
											<div class="kt-section kt-section--last">
												<a href="#" class="btn btn-brand btn-sm btn-bold"><i class=""></i> Take Action</a>&nbsp;
												<a href="#" class="btn btn-clean btn-sm btn-bold">Dismiss</a>
											</div>
										</div>
									</div>

									<!--End:: Portlet-->
								</div>

								<!--End:: App Aside-->

								<!--Begin:: App Content-->
								<div class="kt-grid__item kt-grid__item--fluid kt-app__content">
									<div class="kt-portlet">
										<div class="kt-portlet__head">
											<div class="kt-portlet__head-label">
												<h3 class="kt-portlet__head-title">Personal Information <small>update your personal informaiton</small></h3>
											</div>
											<div class="kt-portlet__head-toolbar">
												<div class="kt-portlet__head-wrapper">
													<div class="dropdown dropdown-inline">
														<button type="button" class="btn btn-label-brand btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
															<i class="flaticon2-gear"></i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<ul class="kt-nav">
																<li class="kt-nav__section kt-nav__section--first">
																	<span class="kt-nav__section-text">Export Tools</span>
																</li>
																<li class="kt-nav__item">
																	<a href="#" class="kt-nav__link">
																		<i class="kt-nav__link-icon la la-print"></i>
																		<span class="kt-nav__link-text">Print</span>
																	</a>
																</li>
																<li class="kt-nav__item">
																	<a href="#" class="kt-nav__link">
																		<i class="kt-nav__link-icon la la-copy"></i>
																		<span class="kt-nav__link-text">Copy</span>
																	</a>
																</li>
																<li class="kt-nav__item">
																	<a href="#" class="kt-nav__link">
																		<i class="kt-nav__link-icon la la-file-excel-o"></i>
																		<span class="kt-nav__link-text">Excel</span>
																	</a>
																</li>
																<li class="kt-nav__item">
																	<a href="#" class="kt-nav__link">
																		<i class="kt-nav__link-icon la la-file-text-o"></i>
																		<span class="kt-nav__link-text">CSV</span>
																	</a>
																</li>
																<li class="kt-nav__item">
																	<a href="#" class="kt-nav__link">
																		<i class="kt-nav__link-icon la la-file-pdf-o"></i>
																		<span class="kt-nav__link-text">PDF</span>
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
										<form class="kt-form kt-form--label-right" id="kt_profile_form">
											<div class="kt-portlet__body">
												<div class="kt-section kt-section--first">
													<div class="kt-section__body">
														<div class="row">
															<label class="col-xl-3"></label>
															<div class="col-lg-9 col-xl-6">
																<h3 class="kt-section__title kt-section__title-sm">Customer Info:</h3>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">Avatar</label>
															<div class="col-lg-9 col-xl-6">
																<div class="kt-avatar kt-avatar--outline kt-avatar--circle-" id="kt_profile_avatar">
																	<div class="kt-avatar__holder" style="background-image: url('assets/media/users/100_3.jpg');"></div>
																	<label class="kt-avatar__upload" data-toggle="kt-tooltip" title="" data-original-title="Change avatar">
																		<i class="fa fa-pen"></i>
																		<input type="file" name="profile_avatar" accept=".png, .jpg, .jpeg">
																	</label>
																	<span class="kt-avatar__cancel" data-toggle="kt-tooltip" title="" data-original-title="Cancel avatar">
																		<i class="fa fa-times"></i>
																	</span>
																</div>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">First Name</label>
															<div class="col-lg-9 col-xl-6">
																<input class="form-control" type="text" value="Nick">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">Last Name</label>
															<div class="col-lg-9 col-xl-6">
																<input class="form-control" type="text" value="Bold">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">Company Name</label>
															<div class="col-lg-9 col-xl-6">
																<input class="form-control" type="text" value="Loop Inc.">
																<span class="form-text text-muted">If you want your invoices addressed to a company. Leave blank to use your full name.</span>
															</div>
														</div>
														<div class="row">
															<label class="col-xl-3"></label>
															<div class="col-lg-9 col-xl-6">
																<h3 class="kt-section__title kt-section__title-sm">Contact Info:</h3>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">Contact Phone</label>
															<div class="col-lg-9 col-xl-6">
																<div class="input-group">
																	<div class="input-group-prepend"><span class="input-group-text"><i class="la la-phone"></i></span></div>
																	<input type="text" class="form-control" value="+35278953712" placeholder="Phone" aria-describedby="basic-addon1">
																</div>
																<span class="form-text text-muted">We'll never share your email with anyone else.</span>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">Email Address</label>
															<div class="col-lg-9 col-xl-6">
																<div class="input-group">
																	<div class="input-group-prepend"><span class="input-group-text"><i class="la la-at"></i></span></div>
																	<input type="text" class="form-control" value="nick.bold@loop.com" placeholder="Email" aria-describedby="basic-addon1">
																</div>
															</div>
														</div>
														<div class="form-group form-group-last row">
															<label class="col-xl-3 col-lg-3 col-form-label">Company Site</label>
															<div class="col-lg-9 col-xl-6">
																<div class="input-group">
																	<input type="text" class="form-control" placeholder="Username" value="loop">
																	<div class="input-group-append"><span class="input-group-text">.com</span></div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="kt-portlet__foot">
												<div class="kt-form__actions">
													<div class="row">
														<div class="col-lg-3 col-xl-3">
														</div>
														<div class="col-lg-9 col-xl-9">
															<button type="reset" class="btn btn-success">Submit</button>&nbsp;
															<button type="reset" class="btn btn-secondary">Cancel</button>
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>

								<!--End:: App Content-->
							</div>

							<!--End::App-->
						</div>

						<!-- end:: Content -->
					</div>

					<!-- begin:: Footer -->
					<div class="kt-footer kt-grid__item kt-grid kt-grid--desktop kt-grid--ver-desktop">
						<div class="kt-container  kt-container--fluid ">
							<div class="kt-footer__copyright">
								2018&nbsp;&copy;&nbsp;<a href="http://keenthemes.com/keen" target="_blank" class="kt-link">Keenthemes Inc</a>
							</div>
							<div class="kt-footer__menu">
								<a href="http://keenthemes.com/keen" target="_blank" class="kt-footer__menu-link kt-link">About</a>
								<a href="http://keenthemes.com/keen" target="_blank" class="kt-footer__menu-link kt-link">Team</a>
								<a href="http://keenthemes.com/keen" target="_blank" class="kt-footer__menu-link kt-link">Contact</a>
							</div>
						</div>
					</div>
					<!-- end:: Footer -->
				</div>
				<!-- end:: Wrapper -->


		<!--begin::Page Scripts(used by this page) -->
		<!-- <script src="assets/js/pages/custom/profile/overview-3.js" type="text/javascript"></script>
		<script src="assets/js/pages/custom/profile/profile.js" type="text/javascript"></script> -->

<c:import url="/WEB-INF/views/erp/include/footer.jsp">
	<c:param name="gv_actionJs" value="profile.js"></c:param>
</c:import>