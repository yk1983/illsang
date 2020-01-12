<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<!--
 =========================================================
 Cafe iLLSang
 =========================================================
 Program History
 Date           Name          Description
 ----------     ----------    ----------------------------
 2020.01.02                   최초작성
 =========================================================
-->
<c:import url="/WEB-INF/views/mngr/incd/header.jsp">
	<c:param name="gv_sidebar" value="off" />
	<c:param name="gv_prgr" value="lock" />
	<c:param name="gv_prgrNm" value="Lock" />
</c:import>

<div class="container">
    <div class="row">
        <div class="col-md-4 ml-auto mr-auto">
            <div class="card card-profile text-center card-hidden">
                <div class="card-header ">
                    <div class="card-avatar">
                        <a href="#pablo">
                            <img class="img" src="../../assets/img/faces/avatar.jpg">
                        </a>
                    </div>
                </div>
                <div class="card-body ">
                    <h4 class="card-title">Tania Andrew</h4>
                    <div class="form-group">
                        <label for="exampleInput1" class="bmd-label-floating">Enter Password</label>
                        <input type="password" class="form-control" id="exampleInput1">
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <a href="#pablo" class="btn btn-rose btn-round">Unlock</a>
                </div>
            </div>
        </div>
    </div>
</div>

<c:import url="/WEB-INF/views/mngr/incd/footer.jsp">
	<c:param name="gv_prgr" value="lock" />
</c:import>