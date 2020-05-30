<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/js/w_js/well-common.js"></script>
<body>
	<form method="post" id="frm-sample">
		<input type="text" class="form-control" id="user_name" name="user_name" value="테스터1"/>
		<button type="button" class="btn btn-primary" id="btn-save" data-dismiss="modal">등록</button>
	</form>
	
	<form method="post" enctype="multipart/form-data" id="frm-upload">
		<input type="text" class="form-control" id="user_name" name="user_name" value="테스터2"/>
		<input type="file" class="form-control-file" id="fileupload" name="fileupload" multiple="multiple">
		<button type="button" class="btn btn-primary" id="btn-upload" data-dismiss="modal">등록</button>
	</form>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$('#btn-save').on('click', function(){
		$.ajax({
			url : '/wellstone/manager/save',
			type : 'POST',
			data : $('#frm-sample').getFormData(),
			beforeSend : function() {
			},
			success : function(data) {
				alert("SUCCESS !!");
			},
			error : function() {
				alert("ERROR !!");
			},
			complete : function() {
			}
		});
	});
	
	$('#btn-upload').on('click', function(){
		$.ajax({
			url : '/wellstone/manager/upload',
			data : new FormData($('#frm-upload')[0]),
			enctype: 'multipart/form-data',
			processData : false,
			contentType : false,
			type : 'POST',
			beforeSend : function() {
			},
			success : function(data) {
				alert("SUCCESS !!");
			},
			error : function() {
				alert("ERROR !!");
			},
			complete : function() {
			}
		});
	});
});
</script>
</html>