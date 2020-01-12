<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
	  	<meta charset="utf-8" />
	  	<link rel="apple-touch-icon" sizes="76x76" href="/img/mngr/apple-icon.png">
	  	<link rel="icon" type="image/png" href="/img/mngr/favicon.png">
	  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	  	<title>Cafe iLLSang : ADMIN</title>
	  	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	  	<!-- Fonts and icons -->
	  	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	  	<!-- CSS Files -->
	  	<link href="/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
	  	<!-- <link href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet"> -->
	  	<!-- CSS Just for demo purpose, don't include it in your project -->
	  	<link href="/css/demo/demo.css" rel="stylesheet" />
	</head>

	<body class="<c:if test="${param.gv_sidebar eq 'off'}">off-canvas-sidebar</c:if>">
		<c:if test="${param.gv_sidebar eq 'on'}">
			<div class="wrapper">
				<c:import url="/WEB-INF/views/mngr/incd/sidebar.jsp" />
				<div class="main-panel">
		</c:if>
		
		<c:import url="/WEB-INF/views/mngr/incd/nav.jsp">
			<c:param name="gv_sidebar" value="${param.gv_sidebar}" />
			<c:param name="gv_prgrNm" value="${param.gv_prgrNm}" />
		</c:import>
		
		<c:if test="${param.gv_sidebar eq 'off'}">
			<div class="wrapper wrapper-full-page">
        		<div class="page-header login-page header-filter" filter-color="black"
        			style="background-image: url('/img/mngr/login.jpg'); background-size: cover; background-position: top center;">
          		<!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
		</c:if>