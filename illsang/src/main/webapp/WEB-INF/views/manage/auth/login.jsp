<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

<c:import url="/WEB-INF/views/erp/include/header.jsp">
	<c:param name="gv_viewType" value="login" />
</c:import>

		<!-- begin:: Page -->
		<div class="kt-grid kt-grid--ver kt-grid--root">
			<div class="kt-grid__item   kt-grid__item--fluid kt-grid  kt-grid kt-grid--hor kt-login-v2" id="kt_login_v2">

				<!--begin::Item-->
				<div class="kt-grid__item  kt-grid--hor">

					<!--begin::Heade-->
					<div class="kt-login-v2__head">
						<div class="kt-login-v2__logo">
							<a href="#">
								<img src="/media/logos/logo-5.png" alt="" />
							</a>
						</div>
						<div class="kt-login-v2__signup">
							<span>가입된 계정이 없습니까?</span>
							<a href="#" class="kt-link kt-font-brand">가입하기</a>
						</div>
					</div>

					<!--begin::Head-->
				</div>

				<!--end::Item-->

				<!--begin::Item-->
				<div class="kt-grid__item  kt-grid  kt-grid--ver  kt-grid__item--fluid">

					<!--begin::Body-->
					<div class="kt-login-v2__body">

						<!--begin::Wrapper-->
						<div class="kt-login-v2__wrapper">
							<div class="kt-login-v2__container">
								<div class="kt-login-v2__title">
									<h3>관리자 로그인</h3>
								</div>

								<!--begin::Form-->
								<form class="kt-login-v2__form kt-form" action="/manage/auth/login" autocomplete="off" id="kt_login_form" method="post">
									<div class="form-group">
										<input class="form-control" type="text" placeholder="아이디(이메일)" name="loginId" autocomplete="off">
									</div>
									<div class="form-group">
										<input class="form-control" type="password" placeholder="비밀번호" name="loginPwd" autocomplete="off">
									</div>

									<!--begin::Action-->
									<div class="kt-login-v2__actions">
										<a href="#" class="kt-link kt-link--brand">
											비밀번호를 잊으셨나요?
										</a>
										<button type="submit" class="btn btn-brand btn-elevate btn-pill" id="kt_login_submit">로그인</button>
									</div>

									<!--end::Action-->
								</form>

								<!--end::Form-->

								<!--begin::Separator-->
								<div class="kt-separator kt-separator--space-lg  kt-separator--border-solid"></div>

								<!--end::Separator-->

								<!--begin::Options-->
								<h3 class="kt-login-v2__desc">또는 소셜 계정으로 로그인</h3>
								<div class="kt-login-v2__options">
									<a href="#" class="btn btn-facebook btn-pill">
										<i class="fab fa-facebook-f"></i>
										Facebook
									</a>
									<a href="#" class="btn btn-twitter btn-pill">
										<i class="fab fa-twitter"></i>
										Twitter
									</a>
									<a href="#" class="btn btn-google btn-pill">
										<i class="fab fa-google"></i>
										Google
									</a>
								</div>

								<!--end::Options-->
							</div>
						</div>

						<!--end::Wrapper-->

						<!--begin::Image-->
						<div class="kt-login-v2__image">
							<img src="/media/misc/bg_icon.svg" alt="">
						</div>

						<!--begin::Image-->
					</div>

					<!--begin::Body-->
				</div>

				<!--end::Item-->

				<!--begin::Item-->
				<div class="kt-grid__item">
					<div class="kt-login-v2__footer">
						<div class="kt-login-v2__link">
							<a href="#" class="kt-link kt-font-brand">개인정보보호</a>
							<a href="#" class="kt-link kt-font-brand">Legal</a>
							<a href="#" class="kt-link kt-font-brand">Contact</a>
						</div>
						<div class="kt-login-v2__info">
							Copyright 2020. <a href="/" target="_blank" class="kt-link">Cafe iLLSang</a>. All rights reserved.
						</div>
					</div>
				</div>

				<!--end::Item-->
			</div>
		</div>
		<!-- end:: Page -->

<c:import url="/WEB-INF/views/erp/include/footer.jsp">
	<c:param name="gv_viewType" value="login" />
	<c:param name="action_js" value="login" />
</c:import>