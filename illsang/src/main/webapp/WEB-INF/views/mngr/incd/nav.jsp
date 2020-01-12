<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top <c:if test="${param.gv_sidebar eq 'off'}">text-white</c:if>">
	<div class="container<c:if test="${param.gv_sidebar eq 'on'}">-fluid</c:if>">
		<div class="navbar-wrapper">
			<c:if test="${param.gv_sidebar eq 'on'}">
				<div class="navbar-minimize">
					<button id="minimizeSidebar" class="btn btn-just-icon btn-white btn-fab btn-round">
	                	<i class="material-icons text_align-center visible-on-sidebar-regular">more_vert</i>
	                	<i class="material-icons design_bullet-list-67 visible-on-sidebar-mini">view_list</i>
	              	</button>
				</div>			
			</c:if>
			<a class="navbar-brand" href="#pablo">${param.gv_prgrNm}</a>
		</div>
		<button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
			<span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end">
		
			<c:if test="${param.gv_sidebar eq 'on'}">
				<form class="navbar-form">
					<div class="input-group no-border">
	                	<input type="text" value="" class="form-control" placeholder="Search...">
	                	<button type="submit" class="btn btn-white btn-round btn-just-icon">
	                  		<i class="material-icons">search</i>
	                  		<div class="ripple-container"></div>
	                	</button>
	              	</div>
				</form>				
			</c:if>

            <ul class="navbar-nav">
            
            	<c:choose>
            		<c:when test="${param.gv_sidebar eq 'on'}">
		              	<li class="nav-item">
		                	<a class="nav-link" href="#pablo">
		                  		<i class="material-icons">dashboard</i>
		                  		<p class="d-lg-none d-md-block">Stats</p>
		                	</a>
		              	</li>
		              	<li class="nav-item dropdown">
		                	<a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                  		<i class="material-icons">notifications</i>
		                  		<span class="notification">5</span>
		                  		<p class="d-lg-none d-md-block">Some Actions</p>
		                	</a>
		                	<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
		                  		<a class="dropdown-item" href="#">Mike John responded to your email</a>
		                  		<a class="dropdown-item" href="#">You have 5 new tasks</a>
		                  		<a class="dropdown-item" href="#">You're now friend with Andrew</a>
		                  		<a class="dropdown-item" href="#">Another Notification</a>
		                  		<a class="dropdown-item" href="#">Another One</a>
		                	</div>
		              	</li>
		              	<li class="nav-item dropdown">
		                	<a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                  		<i class="material-icons">person</i>
		                  			<p class="d-lg-none d-md-block">Account</p>
		                	</a>
		                	<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
		                  		<a class="dropdown-item" href="#">Profile</a>
		                  		<a class="dropdown-item" href="#">Settings</a>
		                  		<div class="dropdown-divider"></div>
		                  		<a class="dropdown-item" href="#">Log out</a>
		                	</div>
		              	</li>            		
            		</c:when>
            		<c:otherwise>
						<li class="nav-item">
						    <a href="/sr-admin" class="nav-link">
						        <i class="material-icons">dashboard</i> Dashboard
						    </a>
						</li>
						<li class="nav-item ">
						    <a href="/sr-admin/join" class="nav-link">
						        <i class="material-icons">person_add</i> 회원가입
						    </a>
						</li>
						<li class="nav-item  active ">
						    <a href="/sr-admin/login" class="nav-link">
						        <i class="material-icons">fingerprint</i> 로그인
						    </a>
						</li>
						<li class="nav-item ">
						    <a href="/sr-admin/lock" class="nav-link">
						        <i class="material-icons">lock_open</i> 잠자기
						    </a>
						</li>
            		</c:otherwise>
            	</c:choose>

			</ul>
		</div>
	</div>
</nav><!-- End Navbar -->