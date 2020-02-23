<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
	<c:if test="${param.gv_viewType ne 'error' && param.gv_viewType ne 'login'}">
			</div>
			<!-- end:: Page -->
		</div>
		<!-- end:: Root -->

		<!-- begin:: Topbar Offcanvas Panels -->

		<!-- begin::Offcanvas Toolbar Quick Actions -->
		<div id="kt_offcanvas_toolbar_quick_actions" class="kt-offcanvas-panel">
			<div class="kt-offcanvas-panel__head">
				<h3 class="kt-offcanvas-panel__title">
					Quick Actions
				</h3>
				<a href="#" class="kt-offcanvas-panel__close" id="kt_offcanvas_toolbar_quick_actions_close"><i class="flaticon2-delete"></i></a>
			</div>
			<div class="kt-offcanvas-panel__body">
				<div class="kt-grid-nav-v2">
					<a href="#" class="kt-grid-nav-v2__item">
						<div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-box"></i></div>
						<div class="kt-grid-nav-v2__item-title">Orders</div>
					</a>
					<a href="#" class="kt-grid-nav-v2__item">
						<div class="kt-grid-nav-v2__item-icon"><i class="flaticon-download-1"></i></div>
						<div class="kt-grid-nav-v2__item-title">Uploades</div>
					</a>
					<a href="#" class="kt-grid-nav-v2__item">
						<div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-supermarket"></i></div>
						<div class="kt-grid-nav-v2__item-title">Products</div>
					</a>
					<a href="#" class="kt-grid-nav-v2__item">
						<div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-avatar"></i></div>
						<div class="kt-grid-nav-v2__item-title">Customers</div>
					</a>
					<a href="#" class="kt-grid-nav-v2__item">
						<div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-list"></i></div>
						<div class="kt-grid-nav-v2__item-title">Blog Posts</div>
					</a>
					<a href="#" class="kt-grid-nav-v2__item">
						<div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-settings"></i></div>
						<div class="kt-grid-nav-v2__item-title">Settings</div>
					</a>
				</div>
			</div>
		</div>

		<!-- end::Offcanvas Toolbar Quick Actions -->

		<!-- end:: Topbar Offcanvas Panels -->

		<!-- begin:: Quick Panel -->
		<div id="kt_quick_panel" class="kt-offcanvas-panel">
			<div class="kt-offcanvas-panel__nav">
				<ul class="nav nav-pills" role="tablist">
					<li class="nav-item active">
						<a class="nav-link active" data-toggle="tab" href="#kt_quick_panel_tab_notifications" role="tab">Notifications</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#kt_quick_panel_tab_actions" role="tab">Actions</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#kt_quick_panel_tab_settings" role="tab">Settings</a>
					</li>
				</ul>
				<button class="kt-offcanvas-panel__close" id="kt_quick_panel_close_btn"><i class="flaticon2-delete"></i></button>
			</div>
			<div class="kt-offcanvas-panel__body">
				<div class="tab-content">
					<div class="tab-pane fade show kt-offcanvas-panel__content kt-scroll active" id="kt_quick_panel_tab_notifications" role="tabpanel">

						<!--Begin::Timeline -->
						<div class="kt-timeline">

							<!--Begin::Item -->
							<div class="kt-timeline__item kt-timeline__item--success">
								<div class="kt-timeline__item-section">
									<div class="kt-timeline__item-section-border">
										<div class="kt-timeline__item-section-icon">
											<i class="flaticon-feed kt-font-success"></i>
										</div>
									</div>
									<span class="kt-timeline__item-datetime">02:30 PM</span>
								</div>
								<a href="" class="kt-timeline__item-text">
									KeenThemes created new layout whith tens of new options for Keen Admin panel
								</a>
								<div class="kt-timeline__item-info">
									HTML,CSS,VueJS
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="kt-timeline__item kt-timeline__item--danger">
								<div class="kt-timeline__item-section">
									<div class="kt-timeline__item-section-border">
										<div class="kt-timeline__item-section-icon">
											<i class="flaticon-safe-shield-protection kt-font-danger"></i>
										</div>
									</div>
									<span class="kt-timeline__item-datetime">01:20 AM</span>
								</div>
								<a href="" class="kt-timeline__item-text">
									New secyrity alert by Firewall & order to take aktion on User Preferences
								</a>
								<div class="kt-timeline__item-info">
									Security, Fieewall
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="kt-timeline__item kt-timeline__item--brand">
								<div class="kt-timeline__item-section">
									<div class="kt-timeline__item-section-border">
										<div class="kt-timeline__item-section-icon">
											<i class="flaticon2-box kt-font-brand"></i>
										</div>
									</div>
									<span class="kt-timeline__item-datetime">Yestardey</span>
								</div>
								<a href="" class="kt-timeline__item-text">
									FlyMore design mock-ups been uploadet by designers Bob, Naomi, Richard
								</a>
								<div class="kt-timeline__item-info">
									PSD, Sketch, AJ
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="kt-timeline__item kt-timeline__item--warning">
								<div class="kt-timeline__item-section">
									<div class="kt-timeline__item-section-border">
										<div class="kt-timeline__item-section-icon">
											<i class="flaticon-pie-chart-1 kt-font-warning"></i>
										</div>
									</div>
									<span class="kt-timeline__item-datetime">Aug 13,2018</span>
								</div>
								<a href="" class="kt-timeline__item-text">
									Meeting with Ken Digital Corp ot Unit14, 3 Edigor Buildings, George Street, Loondon<br> England, BA12FJ
								</a>
								<div class="kt-timeline__item-info">
									Meeting, Customer
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="kt-timeline__item kt-timeline__item--info">
								<div class="kt-timeline__item-section">
									<div class="kt-timeline__item-section-border">
										<div class="kt-timeline__item-section-icon">
											<i class="flaticon-notepad kt-font-info"></i>
										</div>
									</div>
									<span class="kt-timeline__item-datetime">May 09, 2018</span>
								</div>
								<a href="" class="kt-timeline__item-text">
									KeenThemes created new layout whith tens of new options for Keen Admin panel
								</a>
								<div class="kt-timeline__item-info">
									HTML,CSS,VueJS
								</div>
							</div>

							<!--End::Item -->

							<!--Begin::Item -->
							<div class="kt-timeline__item kt-timeline__item--accent">
								<div class="kt-timeline__item-section">
									<div class="kt-timeline__item-section-border">
										<div class="kt-timeline__item-section-icon">
											<i class="flaticon-bell kt-font-success"></i>
										</div>
									</div>
									<span class="kt-timeline__item-datetime">01:20 AM</span>
								</div>
								<a href="" class="kt-timeline__item-text">
									New secyrity alert by Firewall & order to take aktion on User Preferences
								</a>
								<div class="kt-timeline__item-info">
									Security, Fieewall
								</div>
							</div>

							<!--End::Item -->
						</div>

						<!--End::Timeline -->
					</div>
					<div class="tab-pane fade kt-offcanvas-panel__content kt-scroll" id="kt_quick_panel_tab_actions" role="tabpanel">

						<!--begin::Portlet-->
						<div class="kt-portlet kt-portlet--solid-success">
							<div class="kt-portlet__head">
								<div class="kt-portlet__head-label">
									<span class="kt-portlet__head-icon kt-hide"><i class="flaticon-stopwatch"></i></span>
									<h3 class="kt-portlet__head-title">Recent Bills</h3>
								</div>
								<div class="kt-portlet__head-toolbar">
									<div class="kt-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="kt-portlet__body">
								<div class="kt-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->

						<!--begin::Portlet-->
						<div class="kt-portlet kt-portlet--solid-focus">
							<div class="kt-portlet__head">
								<div class="kt-portlet__head-label">
									<span class="kt-portlet__head-icon kt-hide"><i class="flaticon-stopwatch"></i></span>
									<h3 class="kt-portlet__head-title">Latest Orders</h3>
								</div>
								<div class="kt-portlet__head-toolbar">
									<div class="kt-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="kt-portlet__body">
								<div class="kt-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->

						<!--begin::Portlet-->
						<div class="kt-portlet kt-portlet--solid-info">
							<div class="kt-portlet__head">
								<div class="kt-portlet__head-label">
									<h3 class="kt-portlet__head-title">Latest Invoices</h3>
								</div>
								<div class="kt-portlet__head-toolbar">
									<div class="kt-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="kt-portlet__body">
								<div class="kt-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->

						<!--begin::Portlet-->
						<div class="kt-portlet kt-portlet--solid-warning">
							<div class="kt-portlet__head">
								<div class="kt-portlet__head-label">
									<h3 class="kt-portlet__head-title">New Comments</h3>
								</div>
								<div class="kt-portlet__head-toolbar">
									<div class="kt-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="kt-portlet__body">
								<div class="kt-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->

						<!--begin::Portlet-->
						<div class="kt-portlet kt-portlet--solid-brand">
							<div class="kt-portlet__head">
								<div class="kt-portlet__head-label">
									<h3 class="kt-portlet__head-title">Recent Posts</h3>
								</div>
								<div class="kt-portlet__head-toolbar">
									<div class="kt-portlet__head-group">
										<div class="dropdown dropdown-inline">
											<button type="button" class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												<i class="flaticon-more"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="kt-portlet__body">
								<div class="kt-portlet__content">
									Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of the printing industry.
								</div>
							</div>
							<div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
								<a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
							</div>
						</div>

						<!--end::Portlet-->
					</div>
					<div class="tab-pane fade kt-offcanvas-panel__content kt-scroll" id="kt_quick_panel_tab_settings" role="tabpanel">
						<form class="kt-form">
							<div class="kt-heading kt-heading--space-sm">Notifications</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable notifications:</label>
								<div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_1">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable audit log:</label>
								<div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm">
										<label>
											<input type="checkbox" name="quick_panel_notifications_2">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-last form-group-xs row">
								<label class="col-8 col-form-label">Notify on new orders:</label>
								<div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_2">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="kt-separator kt-separator--space-md kt-separator--border-dashed"></div>
							<div class="kt-heading kt-heading--space-sm">Orders</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable order tracking:</label>
								<div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--danger">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_3">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable orders reports:</label>
								<div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--danger">
										<label>
											<input type="checkbox" name="quick_panel_notifications_3">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-last form-group-xs row">
								<label class="col-8 col-form-label">Allow order status auto update:</label>
								<div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--danger">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_4">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="kt-separator kt-separator--space-md kt-separator--border-dashed"></div>
							<div class="kt-heading kt-heading--space-sm">Customers</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable customer singup:</label>
								<div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--success">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_5">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-xs row">
								<label class="col-8 col-form-label">Enable customers reporting:</label>
								<div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--success">
										<label>
											<input type="checkbox" name="quick_panel_notifications_5">
											<span></span>
										</label>
									</span>
								</div>
							</div>
							<div class="form-group form-group-last form-group-xs row">
								<label class="col-8 col-form-label">Notifiy on new customer registration:</label>
								<div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--success">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_6">
											<span></span>
										</label>
									</span>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- end:: Quick Panel -->

		<!-- begin:: Scrolltop -->
		<div id="kt_scrolltop" class="kt-scrolltop">
			<i class="la la-arrow-up"></i>
		</div>
		<!-- end:: Scrolltop -->

	</c:if>
		<!-- begin::Global Config(global config for global JS sciprts) -->
		<script>
			var KTAppOptions = {
				"colors": {
					"state": {
						"brand": "#5d78ff",
						"metal": "#c4c5d6",
						"light": "#ffffff",
						"accent": "#00c5dc",
						"primary": "#5867dd",
						"success": "#34bfa3",
						"info": "#36a3f7",
						"warning": "#ffb822",
						"danger": "#fd3995",
						"focus": "#9816f4"
					},
					"base": {
						"label": [
							"#c5cbe3",
							"#a1a8c3",
							"#3d4465",
							"#3e4466"
						],
						"shape": [
							"#f0f3ff",
							"#d9dffa",
							"#afb4d4",
							"#646c9a"
						]
					}
				}
			};
		</script>

		<!-- end::Global Config -->

		<!-- begin::Global Theme Bundle(used by all pages) -->

		<!-- begin:: Vendor Plugins -->
		<script src="/plugins/general/jquery/dist/jquery.js" type="text/javascript"></script>
		<script src="/plugins/general/popper.js/dist/umd/popper.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="/plugins/general/js-cookie/src/js.cookie.js" type="text/javascript"></script>
		<script src="/plugins/general/moment/min/moment.min.js" type="text/javascript"></script>
		<script src="/plugins/general/moment/locale/fr.js" type="text/javascript"></script>
		<script src="/plugins/general/tooltip.js/dist/umd/tooltip.min.js" type="text/javascript"></script>
		<script src="/plugins/general/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
		<script src="/plugins/general/sticky-js/dist/sticky.min.js" type="text/javascript"></script>
		<script src="/plugins/general/wnumb/wNumb.js" type="text/javascript"></script>
		<script src="/plugins/general/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
		<script src="/plugins/general/block-ui/jquery.blockUI.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-datepicker/js/locales/bootstrap-datepicker.fr.js" type="text/javascript"></script>
		<script src="/plugins/general/js/global/integration/plugins/bootstrap-datepicker.init.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-datetime-picker/js/locales/bootstrap-datetimepicker.fr.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
		<script src="/plugins/general/js/global/integration/plugins/bootstrap-timepicker.init.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
		<script src="/plugins/general/plugins/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
		<script src="/plugins/general/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
		<script src="/plugins/general/handlebars/dist/handlebars.js" type="text/javascript"></script>
		<script src="/plugins/general/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
		<script src="/plugins/general/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
		<script src="/plugins/general/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
		<script src="/plugins/general/select2/dist/js/select2.full.js" type="text/javascript"></script>
		<script src="/plugins/general/nouislider/distribute/nouislider.js" type="text/javascript"></script>
		<script src="/plugins/general/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
		<script src="/plugins/general/autosize/dist/autosize.js" type="text/javascript"></script>
		<script src="/plugins/general/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
		<script src="/plugins/general/dropzone/dist/dropzone.js" type="text/javascript"></script>
		<script src="/plugins/general/js/global/integration/plugins/dropzone.init.js" type="text/javascript"></script>
		<script src="/plugins/general/@yaireo/tagify/dist/tagify.polyfills.min.js" type="text/javascript"></script>
		<script src="/plugins/general/@yaireo/tagify/dist/tagify.min.js" type="text/javascript"></script>
		<script src="/plugins/general/quill/dist/quill.js" type="text/javascript"></script>
		<script src="/plugins/general/summernote/dist/summernote.js" type="text/javascript"></script>
		<script src="/plugins/general/markdown/lib/markdown.js" type="text/javascript"></script>
		<script src="/plugins/general/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
		<script src="/plugins/general/js/global/integration/plugins/bootstrap-markdown.init.js" type="text/javascript"></script>
		<script src="/plugins/general/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
		<script src="/plugins/general/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
		<script src="/plugins/general/js/global/integration/plugins/jquery-validation.init.js" type="text/javascript"></script>
		<script src="/plugins/general/toastr/build/toastr.min.js" type="text/javascript"></script>
		<script src="/plugins/general/dual-listbox/dist/dual-listbox.js" type="text/javascript"></script>
		<script src="/plugins/general/raphael/raphael.js" type="text/javascript"></script>
		<script src="/plugins/general/morris.js/morris.js" type="text/javascript"></script>
		<script src="/plugins/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
		<script src="/plugins/general/plugins/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
		<script src="/plugins/general/plugins/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
		<script src="/plugins/general/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
		<script src="/plugins/general/counterup/jquery.counterup.js" type="text/javascript"></script>
		<script src="/plugins/general/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
		<script src="/plugins/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
		<script src="/plugins/general/js/global/integration/plugins/sweetalert2.init.js" type="text/javascript"></script>
		<script src="/plugins/general/jquery.repeater/src/lib.js" type="text/javascript"></script>
		<script src="/plugins/general/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
		<script src="/plugins/general/jquery.repeater/src/repeater.js" type="text/javascript"></script>
		<script src="/plugins/general/dompurify/dist/purify.js" type="text/javascript"></script>

		<!--end:: Vendor Plugins -->
		<script src="/js/scripts.bundle.js" type="text/javascript"></script>

		<!--begin:: Vendor Plugins for custom pages -->
		<script src="/plugins/custom/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/@fullcalendar/core/main.js" type="text/javascript"></script>
		<script src="/plugins/custom/@fullcalendar/daygrid/main.js" type="text/javascript"></script>
		<script src="/plugins/custom/@fullcalendar/google-calendar/main.js" type="text/javascript"></script>
		<script src="/plugins/custom/@fullcalendar/interaction/main.js" type="text/javascript"></script>
		<script src="/plugins/custom/@fullcalendar/list/main.js" type="text/javascript"></script>
		<script src="/plugins/custom/@fullcalendar/timegrid/main.js" type="text/javascript"></script>
		<script src="/plugins/custom/gmaps/gmaps.js" type="text/javascript"></script>
		<script src="/plugins/custom/jquery-flot/jquery.flot.js" type="text/javascript"></script>
		<script src="/plugins/custom/jquery-flot/jquery.flot.resize.js" type="text/javascript"></script>
		<script src="/plugins/custom/jquery-flot/jquery.flot.categories.js" type="text/javascript"></script>
		<script src="/plugins/custom/jquery-flot/jquery.flot.pie.js" type="text/javascript"></script>
		<script src="/plugins/custom/jquery-flot/jquery.flot.stack.js" type="text/javascript"></script>
		<script src="/plugins/custom/jquery-flot/jquery.flot.crosshair.js" type="text/javascript"></script>
		<script src="/plugins/custom/jquery-flot/jquery.flot.axislabels.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net/js/jquery.dataTables.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-bs4/js/dataTables.bootstrap4.js" type="text/javascript"></script>
		<script src="/plugins/custom/js/global/integration/plugins/datatables.init.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-autofill/js/dataTables.autoFill.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-autofill-bs4/js/autoFill.bootstrap4.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/jszip/dist/jszip.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/pdfmake/build/pdfmake.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/pdfmake/build/vfs_fonts.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-buttons/js/dataTables.buttons.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-buttons/js/buttons.colVis.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-buttons/js/buttons.flash.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-buttons/js/buttons.html5.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-buttons/js/buttons.print.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-colreorder/js/dataTables.colReorder.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-fixedcolumns/js/dataTables.fixedColumns.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-keytable/js/dataTables.keyTable.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-responsive/js/dataTables.responsive.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-rowgroup/js/dataTables.rowGroup.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-rowreorder/js/dataTables.rowReorder.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-scroller/js/dataTables.scroller.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/datatables.net-select/js/dataTables.select.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/jstree/dist/jstree.js" type="text/javascript"></script>
		<script src="/plugins/custom/uppy/dist/uppy.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/tinymce/tinymce.min.js" type="text/javascript"></script>
		<script src="/plugins/custom/tinymce/themes/silver/theme.js" type="text/javascript"></script>
		<script src="/plugins/custom/tinymce/themes/mobile/theme.js" type="text/javascript"></script>

		<!--end:: Vendor Plugins for custom pages -->

		<!--end::Global Theme Bundle -->

		<!--begin::Page Vendors(used by this page) -->

		<!--end::Page Vendors -->

		<!--begin::Page Scripts(used by this page) -->
		<script src="/js/actions/${param.gv_actionJs}?ver=1.0" type="text/javascript"></script>

		<!--end::Page Scripts -->
	</body>
	<!-- end::Body -->
</html>