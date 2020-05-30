<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<!-- Footer -->
<footer class="py-5 bottom">
    <div class="bottomCI">
    	<img src="/img/w_images/footer_logo.png" alt="(주)웰석재">
   	</div>
 	<div class="bottomText">
	    <p class="companyInfo1">
	    	주식회사 웰석재&nbsp;&nbsp;&nbsp;&nbsp;
	    	주소 : 경기도 화성시 효행로 1051 메인프라자 506-2호&nbsp;&nbsp;&nbsp;&nbsp;
	    	대표 : 조인배
	    	<br>
	    	사업자등록번호 : 000-00-00000&nbsp;&nbsp;&nbsp;&nbsp;
	    	통신판매업신고번호 : 제000-0000-000호&nbsp;&nbsp;&nbsp;&nbsp;
	    	대표번호 : 031-237-3744&nbsp;&nbsp;&nbsp;&nbsp;
	    	팩스번호 : 031-237-2435&nbsp;&nbsp;&nbsp;&nbsp;
	    	이메일 : sookki5@naver.com
	   	</p>
 	</div>
 	<div class="bottomText">
		<p class="copyright">
    		Copyright ⓒ 2020 WELLSTONE All Rights Reserved.
   		</p>    
 	</div>
</footer>
<!-- /Footer -->

<c:import url="/WEB-INF/views/wellstone/well_modal.jsp" />

</body>
	<script src="/js/w_js/well-common.js" type="text/javascript"></script>
	<script src="/js/w_js/well-paging.js" type="text/javascript"></script>
	<c:choose>
		<c:when test="${param.category eq 'menu'|| param.category eq 'm_menu'}">
			<script src="/js/w_js/well-mgmt-menu.js" type="text/javascript"></script>
		</c:when>
		<c:when test="${param.category eq 'product'|| param.category eq 'm_product' ||
						param.category eq 'm_product_detail'}">
			<script src="/js/w_js/well-product.js" type="text/javascript"></script>
		</c:when>
		<c:when test="${param.category eq 'construction'|| param.category eq 'm_construction'}">
			<script src="/js/w_js/well-construction.js" type="text/javascript"></script>
		</c:when>
		<c:when test="${param.category eq 'main'|| param.category eq 'estimate'|| 
						param.category eq 'm_estimate'}">
			<script src="/js/w_js/well-estimate.js" type="text/javascript"></script>
		</c:when>
		<c:when test="${param.category eq 'notice'|| param.category eq 'm_notice' 
						|| param.category eq 'notice_detail'}">
			<script src="/js/w_js/well-notice.js" type="text/javascript"></script>
		</c:when>	
		<c:otherwise></c:otherwise>
	</c:choose>
</html>