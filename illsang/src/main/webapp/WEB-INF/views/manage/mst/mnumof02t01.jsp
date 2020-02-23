<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<div class="row">
	<div class="col-lg-8">
		<!--begin: Datatable -->
		<table class="table table-striped- table-bordered table-hover table-checkable" id="tbl-menu-lst">
			<thead>
				<tr>
					<th>No</th>
					<th>카테고리명</th>
					<th>상품명</th>
					<th>가격</th>
					<th></th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>No</th>
					<th>카테고리 명</th>
					<th>상품명</th>
					<th>가격</th>
					<th></th>
				</tr>
			</tfoot>
		</table>
	</div>
	
	<div class="col-lg-4">
		<table class="table table-striped- table-bordered table-hover table-checkable" id="tbl-menu-opt">
			<thead>
				<tr>
					<th>No</th>
					<th>옵션명</th>
					<th>가격</th>
					<th></th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>No</th>
					<th>옵션명</th>
					<th>가격</th>
					<th></th>
				</tr>
			</tfoot>
		</table>
	</div>
</div>