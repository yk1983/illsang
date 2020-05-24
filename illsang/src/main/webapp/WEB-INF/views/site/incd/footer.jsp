<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
</div>
<!-- ##### Main Content Wrapper End ##### -->

<!-- ##### Newsletter Area Start ##### -->
<section class="newsletter-area section-padding-100-0">
	<div class="container">
		<div class="row align-items-center">
			<!-- Newsletter Text -->
			<div class="col-12 col-lg-6 col-xl-7">
				<div class="newsletter-text mb-100">
					<h2>
						Subscribe for a <span>25% Discount</span>
					</h2>
					<p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero
						sit amet mi vulputate consectetur. Donec auctor interdum purus, ac
						finibus massa bibendum nec.</p>
				</div>
			</div>
			<!-- Newsletter Form -->
			<div class="col-12 col-lg-6 col-xl-5">
				<div class="newsletter-form mb-100">
					<form action="#" method="post">
						<input type="email" name="email" class="nl-email"
							placeholder="Your E-mail"> <input type="submit"
							value="Subscribe">
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- ##### Newsletter Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<footer class="footer_area clearfix">
	<div class="container" style="width: 100%">
		<div class="row align-items-center">
			<!-- Single Widget Area -->
			<div class="col-12 col-lg-4">
				<div class="single_widget_area">
					<!-- Logo -->
					<div class="footer-logo mr-50">
						<a href="/"><img src="/img/core-img/logo2.png"
							alt="cafeillsang logo"></a>
					</div>
					<!-- Copywrite Text -->
					<p class="copywrite">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a> &
						Re-distributed by <a href="https://themewagon.com/"
							target="_blank">Themewagon</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
			<!-- Single Widget Area -->
			<div class="col-12 col-lg-8">
				<div class="single_widget_area">
					<!-- Footer Menu -->
					<div class="footer_menu">
						<nav class="navbar navbar-expand-lg justify-content-end">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#footerNavContent"
								aria-controls="footerNavContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<i class="fa fa-bars"></i>
							</button>
							<div class="collapse navbar-collapse" id="footerNavContent">
								<ul class="navbar-nav ml-auto">
									<li class="nav-item <c:out value="${param.home }" />">
										<a class="nav-link" href="/roastery">ABOUT US</a>
									</li>
									<li class="nav-item <c:out value="${param.agreement }" />">
										<a class="nav-link" href="/agreement">이용약관</a>
									</li>
									<li class="nav-item <c:out value="${param.privacy }" />">
										<a class="nav-link" href="/privacy">개인정보처리방침</a>
									</li>
<%-- 									<li class="nav-item <c:out value="${param.dlvr }" />"> --%>
<!-- 										<a class="nav-link" href="/bean-delivery">원두납품</a> -->
<!-- 									</li> -->
<%-- 									<li class="nav-item <c:out value="${param.magazine }" />"> --%>
<!-- 										<a class="nav-link" href="/magazine">매거진</a> -->
<!-- 									</li> -->
<%-- 									<li class="nav-item <c:out value="${param.shop }" />"> --%>
<!-- 										<a class="nav-link" href="/shop">SHOP</a> -->
<!-- 									</li> -->
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- ##### Footer Area End ##### -->

<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
<script src="/js/core/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="/js/core/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="/js/core/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="/js/plugins.js"></script>
<!-- Active js -->
<script src="/js/active.js"></script>

</body>

</html>