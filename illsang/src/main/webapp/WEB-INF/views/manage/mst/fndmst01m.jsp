<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/manage/include/header.jsp">
	<c:param name="gv_viewType" value="pages" />
</c:import>

<!-- begin:: Content -->
<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
	<c:if test="${gvPgmInfo.note ne null }">
		<div class="alert alert-light alert-elevate" role="alert">
			<div class="alert-icon">
				<i class="flaticon-warning kt-font-brand"></i>
			</div>
			<div class="alert-text">${gvPgmInfo.note }</div>
		</div>
	</c:if>
	<div class="row">
		<div class="col-lg-12">
			<!--begin::Portlet-->
			<div class="kt-portlet" id="kt_page_portlet">
				<div class="kt-portlet__head kt-portlet__head--lg">
					<div class="kt-portlet__head-label">
						<h3 class="kt-portlet__head-title">기본정보</h3>
					</div>
					<div class="kt-portlet__head-toolbar">
						<button type="button" id="btn-reset" class="btn btn-secondary kt-margin-r-10">
							<i class="la la-reply"></i>
							<span class="kt-hidden-mobile">초기화</span>
						</button>
						<button type="button" id="btn-save" class="btn btn-primary">
							<i class="la la-save"></i>
							<span class="kt-hidden-mobile">저장</span>
						</button>
					</div>
				</div>
				<!--begin::Form-->
				<form id="frm-stor-info" class="kt-form kt-form--label-right">
					<input type="hidden" name="storeCode" value="${dataset.storeCode }" />
					<input type="hidden" name="lat" value="${dataset.lat }" />
					<input type="hidden" name="lon" value="${dataset.lon }" />
					<div class="kt-portlet__body">
						<div class="form-group row">
							<div class="col-lg-3">
								<label>매장 이름:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="text" name="storeName" value="${data.storeName }" class="form-control" placeholder="매장 이름을 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-flag-o"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">Cafe 이름을 입력해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label>대표자 이름:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="text" name="ownerName" value="${dataset.ownerName }" class="form-control" placeholder="대표자 이름을 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-user"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">대표자 이름을 입력해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label class="">사업자등록번호:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="number" name="bsnsLicenseNo" value="${dataset.bsnsLicenseNo }" class="form-control" placeholder="사업자등록번호를 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-info-circle"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">사업자등록번호를 입력해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label>대표자 핸드폰번호:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="number" name="phoneNo" value="${dataset.phoneNo }" class="form-control" placeholder="대표자 핸드폰번호를 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-phone"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">대표자 핸드폰번호를 입력해주세요.</span>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-lg-3">
								<label class="">Email:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="email" name="email" value="${dataset.email }" class="form-control" placeholder="대표자 이메일을 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-envelope"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">대표자 이메일을 입력해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label class="">매장 전화번호:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="number" name="telNo" value="${dataset.telNo }" class="form-control" placeholder="매장 전화번호를 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-tty"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">매장 전화번호를 입력해주세요.</span>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-lg-3">
								<label class="">우편번호:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="number" name="postNo" value="${dataset.postNo }" class="form-control" placeholder="우편번호를 검색해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-map-marker"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">우편번호를 검색해주세요.</span>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-lg-3">
								<label class="">주소(지번):</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="text" name="jbAddress" value="${dataset.jbAddress }" class="form-control" placeholder="주소를 검색해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right"><span><i class="la la-map-marker"></i></span></span>
								</div>
								<span class="form-text text-muted">주소를 검색해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label class="">상세주소(지번):</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="text" name="jbAddressDtl" value="${dataset.jbAddressDtl }" class="form-control" placeholder="상세주소를 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right"><span><i class="la la-map-marker"></i></span></span>
								</div>
								<span class="form-text text-muted">상세주소를 입력해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label class="">주소(도로명):</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="text" name="ldAddress" value="${dataset.ldAddress }" class="form-control" placeholder="주소를 검색해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right"><span><i class="la la-map-marker"></i></span></span>
								</div>
								<span class="form-text text-muted">주소를 검색해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label class="">상세주소(도로명):</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="text" name="ldAddressDtl" value="${dataset.ldAddressDtl }" class="form-control" placeholder="상세주소를 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right"><span><i class="la la-map-marker"></i></span></span>
								</div>
								<span class="form-text text-muted">상세주소를 입력해주세요.</span>
							</div>
						</div>
						<div class="kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit"></div>
						<div class="form-group row">
							<div class="col-lg-3">
								<label>홈페이지 주소:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="url" name="hompageUrl" value="${dataset.hompageUrl }" class="form-control" placeholder="홈페이지 주소를 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-link"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">홈페이지 주소를 입력해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label>통신판매업신고번호:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="text" name="mlBsnsLicenseNo" value="${dataset.mlBsnsLicenseNo }" class="form-control" placeholder="통신판매업신고번호를 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-info-circle"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">통신판매업신고번호를 입력해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label class="">개인정보보호책임자:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="text" name="managerName" value="${dataset.managerName }" class="form-control" placeholder="개인정보보호책임자 이름를 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-user"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">개인정보보호책임자 이름를 입력해주세요.</span>
							</div>
							<div class="col-lg-3">
								<label class="">개인정보보호책임자이메일:</label>
								<div class="kt-input-icon kt-input-icon--right">
									<input type="email" name="managerEmail" value="${dataset.managerEmail }" class="form-control" placeholder="개인정보보호책임자 이메일을 입력해주세요.">
									<span class="kt-input-icon__icon kt-input-icon__icon--right">
										<span>
											<i class="la la-envelope"></i>
										</span>
									</span>
								</div>
								<span class="form-text text-muted">개인정보보호책임자 이메일을 입력해주세요.</span>
							</div>
						</div>
					</div>
				</form>
				<!--end::Form-->
			</div>
			<!--end::Portlet-->
		</div>
	</div>
</div>
<!-- end:: Content -->

<c:import url="/WEB-INF/views/manage/include/footer.jsp">
	<c:param name="gv_actionJs" value="store.js" />
	<c:param name="gv_timestamp" value="${timestamp }"/>
</c:import>