/**
 * 관리자(게시판관리 > 공지사항)
 */
var g_notice = {
		dataSize : 5,
		pageSize : 5,
		startNum : 0
}
/**************************************************************************
 * Document ready view event
 * @returns
 **************************************************************************/
$(document).ready(function() {
	
	//paging
	var totalCount = $('#paging').data('total-count');
	var page_view = paging(totalCount, g_notice.dataSize, g_notice.pageSize, 1, 'notice');
	$('#paging').empty().html(page_view);
	
	//datepicker
	$('#start').datepicker({
		format: 'yyyy-mm-dd'
	});
	
	$('#end').datepicker({
		format: 'yyyy-mm-dd'
	});
	
	$('#btn-create').on('click', function() {
		$('#modal-board').modal();
	});
	
	$('#fileupload').on('change', function(e) {
		addFiles(e);
	});
	
	$('#btn-save-board').on('click', function() {
		fn_save();
	});
	
	$('#btn-search').on('click', function() {
		fn_search();
	});
	
	$('tbody tr').on('click', function(e) {
		fn_detail(e);
	});
	
});
/**************************************************************************
 * Local function event
 * @returns
 **************************************************************************/
function goPaging_notice(pageNo) {
	var obj = {
			pageNo : pageNo,
			dataSize : g_notice.dataSize
	};
	obj.ctgrCd = $('#ctgrCd').val();
	
	$.ajax({
		url : '/wellstone/m_notice/page',
		type : 'POST',
		data : obj,
		beforeSend : function() {
			console.log('beforeSend : 페이지이동');
		},
		success : function(data) {
			console.log(data);
			fn_draw.table(data.list);
			$('#paging').empty().html(paging(data.totalCount, g_notice.dataSize, g_notice.pageSize, pageNo, 'notice'));
		},
		error : function() {
			$('#modal-fail-text').text('실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 페이지이동');
		}
	});
}

//출처: https://ssunsband.tistory.com/entry/Jquery-Ajax를-이용한-파일-업로드FormData-사용 [ssunsband]
var filesTempArr = [];

//파일 추가
function addFiles(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	var filesArrLen = filesArr.length;
	var filesTempArrLen = filesTempArr.length;
	for( var i=0; i<filesArrLen; i++ ) {
		filesTempArr.push(filesArr[i]);
		$("#fileList").append("<div>" + filesArr[i].name + "<img src=\"/img/w_images/delete_icon_S.png\" onclick=\"deleteFile(event, " + (filesTempArrLen+i)+ ");\"></div>");
	}
	$(this).val('');
}

//파일 삭제
function deleteFile (eventParam, orderParam) {
	filesTempArr.splice(orderParam, 1);
	var innerHtmlTemp = "";
	var filesTempArrLen = filesTempArr.length;
	for(var i=0; i<filesTempArrLen; i++) {
		innerHtmlTemp += "<div>" + filesTempArr[i].name + "<img src=\"/img/w_images/delete_icon_S.png\" onclick=\"deleteFile(event, " + i + ");\"></div>"
	}
	$("#fileList").html(innerHtmlTemp);
}

function fn_save() {
	var chk = true;
//	var params = $('#frm-board').getFormData();
//	
//	//카테고리 코드
//	params.ctgrCd = $('#ctgrCd').val();
//	
//	//공지여부 확인
//	var noticeYn = $('#noticeYn').is(':checked');
//	params.noticeYn = (noticeYn == false) ? 'N' : 'Y';
//	
//	//공지시작일&공지종료일 확인
//	if(params.noticeYn == 'Y' && params.start == '') {
//		$('#modal-fail-text').text('공지시작일을 입력해주세요.');
//		$('#modal-fail').modal();
//		chk = false;
//	} else if(params.noticeYn == 'Y' && params.end == '') {
//		$('#modal-fail-text').text('공지종료일을 입력해주세요.');
//		$('#modal-fail').modal();
//		chk = false;
//	}
//	
//	//제목확인
//	if(params.title == '') {
//		$('#modal-fail-text').text('제목을 입력해주세요.');
//		$('#modal-fail').modal();
//		chk = false;
//	}
	
	// 파일 데이터
	var params = {};
	for(var i=0, filesTempArrLen = filesTempArr.length; i<filesTempArrLen; i++) {
//		formData.append("files", filesTempArr[i]);
		var key = "file" + i;
		params[key] = filesTempArr[i];
	}
	//params.ctgrCd = $('#ctgrCd').val();
	//params.files = $('#fileupload')[0].files[0];
	var params = new FormData();
	params.append('ctgrcd', $('#ctgrCd').val());
	params.append('uploadfile', $('#fileupload')[0].files[0]);
	if(chk) {
		$.ajax({
			url : '/wellstone/m_notice',
			//enctype: 'multipart/form-data',
			dataType : 'json',
			data : params,
			processData : false,
			contentType : false,
			type : 'POST',
			beforeSend : function() {
				console.log('beforeSend : 공지사항 등록');
			},
			success : function() {
//			fn_save_file();
				$('#modal-success-text').text('등록성공!');
				$('#modal-success').modal();
			},
			error : function() {
				$('#modal-fail-text').text('등록실패!');
				$('#modal-fail').modal();
			},
			complete : function() {
				console.log('complete : 공지사항 등록');
				fn_draw.reset();
			}
		});
	}
}

function fn_save_file() {
//	var formData = new FormData();
	
	// 파일 데이터
	for(var i=0, filesTempArrLen = filesTempArr.length; i<filesTempArrLen; i++) {
//		formData.append("files", filesTempArr[i]);
		var key = "file" + i;
		params[key] = filesTempArr[i];
	}
	
	$.ajax({
		url : '/wellstone/m_notice/file',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 공지사항 파일 등록');
		},
		success : function() {
			$('#modal-success-text').text('등록성공!');
			$('#modal-success').modal();
			console.log("파일 등록 성공!");
//			fn_draw.all(data.rslt);
		},
		error : function() {
			$('#modal-fail-text').text('등록실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 공지사항 등록');
			fn_draw.reset();
		}
	});
}

function fn_search() {
	var obj = {};
	obj.ctgrCd = $('#ctgrCd').val();
	var chk = $('#select-board option:selected').val();
	var val = $('#input-search').val().trim();
	obj[chk] = val;
	
	if(val.length > 0) {
		$.ajax({
			url : '/wellstone/notice',
			type : 'POST',
			data : obj,
			beforeSend : function() {
				console.log('beforeSend : 공지사항 검색');
			},
			success : function(data) {
				console.log(data);
				fn_draw.table(data.noticeList);
				$('#paging').empty().html(paging(data.totalCount, g_notice.dataSize, g_notice.pageSize, 1, 'notice'));
			},
			error : function() {
				$('#modal-fail-text').text('검색실패!');
				$('#modal-fail').modal();
			},
			complete : function() {
				console.log('complete : 공지사항 검색');
				$('#input-search').val('');
			}
		});
	} else {
		goPaging_notice(1);
	}
}

function fn_detail(e) {
	var tar = $(e.currentTarget);
	var obj = {
			postCd : tar.data('cd'),
			ctgrCd : $('#ctgrCd').val()
	}
	$.ajax({
		url : '/wellstone/notice/detail',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 공지사항 상세검색');
		},
		success : function(data) {
			console.log(data);
		},
		error : function() {
			$('#modal-fail-text').text('조회실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 공지사항 상세검색');
			fn_draw.reset();
		}
	});
}

var fn_draw = {
		table : function(data) {
			var tar = $('#tbl-notice');
			var html = [];
			data.forEach(function(item, idx, ary) {
				if(item.NOTICE_YN == 'Y') {
					html.push('<tr class="table-info">');
				} else {
					html.push('<tr>');
				}
				html.push('<td>');
				html.push(item.NO);
				html.push('</td>');
				html.push('<td>');
				html.push(item.TITLE);
				html.push('</td>');
				html.push('<td>');
				html.push(item.WRITER);
				html.push('</td>');
				html.push('<td>');
				html.push(item.REG_DT);
				html.push('</td>');
				html.push('<td>');
				html.push(item.HITS);
				html.push('</td>');
				html.push('<td>');
				html.push(item.G_HITS);
				html.push('</td>');
				html.push('</tr>');
			});
			tar.html(html.join(''));
		},
		reset : function(){
			$('#frm-board').clearForm();
		}
}


