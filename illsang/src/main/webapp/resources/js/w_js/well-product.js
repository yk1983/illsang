/**
 * 관리자(제품관리)
 */
var g_product = {
		dataSize : 5,
		pageSize : 5,
		startNum : 0,
		chk : false
}
/**************************************************************************
 * Document ready view event
 * @returns
 **************************************************************************/
$(document).ready(function() {
	
	//paging
	var totalCount = $('#paging').data('total-count');
	var page_view = paging(totalCount, g_product.dataSize, g_product.pageSize, 1, 'product');
	$('#paging').empty().html(page_view);
	
	//제품등록 modal
	$('#btn-create').on('click', function() {
		$('#modal-product').modal();
	});
	
	//중복확인
	$('#btn-chk-duplication').on('click', function() {
		fn_check_product();
	});
	
	//제품등록
	$('#btn-save-product').on('click', function() {
		fn_save();
	});
	
	//제품상세 테이블 row 추가
	$('#btn-add-prd-detail').on('click', function() {
		fn_drawRow();
	});
	
	//썸네일 이미지 추가
	$('#thumbnail-fileupload').on('change', function(e) {
		addThumbnailFiles(e);
	});
	
	//제품상세 이미지 추가
	$('#fileupload').on('change', function(e) {
		addFiles(e);
	});
	
	//modal
	$('#btn-estimate-modal').on('click', function() {
		$('#modal-estimate').modal();
	});
	
});
/**************************************************************************
 * Local function event
 * @returns
 **************************************************************************/
var filesTempArr = []; //제품상세이미지
var thumbnailFilesTempArr = []; //썸네일이미지

//파일 추가 (제품상세)
function addFiles(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	var filesArrLen = filesArr.length;
	var filesTempArrLen = filesTempArr.length;
	for( var i=0; i<filesArrLen; i++ ) {
		filesTempArr.push(filesArr[i]);
		$('#frm-product div.fileList').append('<div>' + filesArr[i].name + '<img src=\'/img/w_images/delete_icon_S.png\' onclick=\'deleteFile(event, ' + (filesTempArrLen+i)+ ');\'></div>');
	}
	$(this).val('');
	$('#fileupload').val('');
}

//파일 삭제 (제품상세)
function deleteFile (eventParam, orderParam) {
	filesTempArr.splice(orderParam, 1);
	var innerHtmlTemp = '';
	var filesTempArrLen = filesTempArr.length;
	for(var i=0; i<filesTempArrLen; i++) {
		innerHtmlTemp += '<div>' + filesTempArr[i].name + '<img src=\'/img/w_images/delete_icon_S.png\' onclick=\'deleteFile(event, ' + i + ');\'></div>';
	}
	$('#frm-product div.fileList').html(innerHtmlTemp);
}

//파일 추가 (썸네일)
function addThumbnailFiles(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	var filesArrLen = filesArr.length;
	var filesTempArrLen = thumbnailFilesTempArr.length;
	for( var i=0; i<filesArrLen; i++ ) {
		thumbnailFilesTempArr.push(filesArr[i]);
		$('#frm-product div.thumbnail-fileList').append('<div>' + filesArr[i].name + '<img src=\'/img/w_images/delete_icon_S.png\' onclick=\'deleteThumbnailFile(event, ' + (filesTempArrLen+i)+ ');\'></div>');
	}
	$(this).val('');
	$('#thumbnail-fileupload').val('');
}

//파일 삭제 (썸네일)
function deleteThumbnailFile (eventParam, orderParam) {
	thumbnailFilesTempArr.splice(orderParam, 1);
	var innerHtmlTemp = '';
	var filesTempArrLen = thumbnailFilesTempArr.length;
	for(var i=0; i<filesTempArrLen; i++) {
		innerHtmlTemp += '<div>' + thumbnailFilesTempArr[i].name + '<img src=\'/img/w_images/delete_icon_S.png\' onclick=\'deleteThumbnailFile(event, ' + i + ');\'></div>';
	}
	$('#frm-product div.thumbnail-fileList').html(innerHtmlTemp);
}

//제품 중복 체크
function fn_check_product() {
	var obj = {}
	obj.ctgrCd = $('#ctgrCd').val(); //제품카테고리
	obj.prdNm = $('#prdNm').val(); //제품명
		
	$.ajax({
		url : '/wellstone/manager/product/check',
		type : 'POST',
		data: obj,
        dataType:'json',
		beforeSend : function() {
			console.log('beforeSend : 제품 중복 체크');
		},
		success : function(data) {
			if(data.rslt == 0) {
				$('#span-chk-product').text('사용가능한 이름입니다.');
				g_product.chk = true;
			} else {
				$('#span-chk-product').text('이미 사용하고 있는 이름입니다.');
			}
		},
		error : function() {
			$('#modal-fail-text').text('중복확인실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 제품 중복 체크');
		}
	});
}

//제품상세 테이블 row 추가
function fn_drawRow() {
	var tar = $('#tbody-product-detail');
	var cnt = $('#tbody-product-detail1 tr').length;
	var html = [];
	var hrz = $('#hrz').val(); //가로
	var vrt = $('#vrt').val(); //세로
	var thk = $('#thk').val(); //두께
	var boxSize = $('#boxSize').val(); //박스 사이즈
	var boxCnt = $('#boxCnt').val(); //박스당 수량
	var areaKg = $('#areaKg').val(); //㎡당 중량
	var tonBox = $('#tonBox').val(); //파렛트 톤당 박스
	var ton = $('#ton').val(); //파렛트 톤
	var lineYn = $('input[name="lineYn"]:checked').val(); //줄눈
	var corner = $('#corner').val(); //코너
	
	html.push('<tr>');
	html.push('<td>');
	if(hrz != '') {
		html.push(hrz);
	}
	html.push('</td>');
	html.push('<td>');
	if(vrt != '') {
		html.push(vrt);
	}
	html.push('</td>');
	html.push('<td>');
	if(thk != '') {
		html.push(thk);
		html.push('T');
	}
	html.push('</td>');
	html.push('<td>');
	if(boxSize != '') {
		html.push(boxSize);
		html.push('㎡');
	}
	html.push('</td>');
	html.push('<td>');
	if(boxCnt != '') {
		html.push(boxCnt);
		html.push('장');
	}
	html.push('</td>');
	html.push('<td>');
	if(areaKg != '') {
		html.push(areaKg);
		html.push('kg');
	}
	html.push('</td>');
	html.push('<td>');
	if(tonBox != '') {
		html.push(tonBox);
		html.push('BOX');
	}
	if(ton != '') {
		html.push(' (');
		html.push(ton);
		html.push('T');
		html.push(')');
	}
	html.push('</td>');
	html.push('<td>');
	if(lineYn != '') {
		html.push(lineYn);
	} else {
		'N';
	}
	html.push('</td>');
	html.push('<td>');
	if(corner != '') {
		html.push(corner);
	}
	html.push('</td>');
	html.push('<td><img src="/img/w_images/delete_icon_S.png" onclick="fn_deleteRow(this);"></td>');
	html.push('</tr>')
	tar.append(html.join(''));
}

//table row 삭제
function fn_deleteRow(e) {
	var tar = $(e);
	tar.closest('tr').remove();
}

function fn_save() {
	var chk = true;
	var nm = $('input[name="prdNm"]').val();
	if(nm == '') {
		chk = false;
		$('#modal-fail-text').text('제품명칭을 입력해주세요!');
		$('#modal-fail').modal();
		return;
	}
	
//	if(g_product.chk == false) {
//		$('#modal-fail-text').text('중복확인해주세요!');
//		$('#modal-fail').modal();
//	}
	
	$('input[name="fileupload"]').val('');
	$('input[name="thumbnail-fileupload"]').val('');
	
//	if ($.browser.msie) { 
//		// ie 일때 input[type=file] init.
//		$('input[name="fileupload"]').replaceWith( $('input[name="fileupload"]').clone(true) ); 
//	} else { 
//		// other browser 일때 input[type=file] init. 
//		$('input[name="fileupload"]').val('');
//	}
	
	var form = $('#frm-product')[0];
	
	var formData = new FormData(form);
	
	var len = filesTempArr.length;
	for(var i = 0; i < len; i++) {
		formData.append('file'+i, filesTempArr[i]);
	}
	
	var th_len = thumbnailFilesTempArr.length;
	for(var j = 0; j < th_len; j++) {
		formData.append('thumbnail'+j, thumbnailFilesTempArr[j]);
	}
	
	if(chk) {
		$.ajax({
			url : '/wellstone/manager/product',
			type : 'POST',
			data : formData,
			enctype: 'multipart/form-data',
			processData : false,
			contentType : false,
			beforeSend : function() {
				console.log('beforeSend : 제품등록');
			},
			success : function(data) {
				console.log('success : 제품등록');
				if(data.rslt.code == '1') {
					fn_save_detail(data.rslt.prdCd);
				} else {
					$('#modal-fail-text').text('등록실패!');
					$('#modal-fail').modal();
				}
			},
			error : function() {
				$('#modal-fail-text').text('등록실패!');
				$('#modal-fail').modal();
			},
			complete : function() {
				console.log('complete : 제품등록');
			}
		});
	}
}

//제품상세정보 등록
function fn_save_detail(prdCd) {
	var len = $('#tbody-product-detail tr').length;
	var param = [];
	var row, obj;
	
	if(len > 0) {
		for(var i = 0; i < len; i++) {
			row = $('#tbody-product-detail tr').eq(i);
			obj = {};
			obj.ctgrCd = $('select[name="prdCtgr"] option:selected').val();
			obj.prdCd = String(prdCd);
			obj.detailCd =String(i+1);
			obj.hrz = row.find('td')[0].innerText;
			obj.vrt = row.find('td')[1].innerText;
			obj.thk = row.find('td')[2].innerText;
			obj.areaBox = row.find('td')[3].innerText;
			obj.nmbrBox = row.find('td')[4].innerText;
			obj.wghtArea = row.find('td')[5].innerText;
			obj.boxcnTon = row.find('td')[6].innerText;
			obj.lineYn = row.find('td')[7].innerText;
			obj.corner = row.find('td')[8].innerText;
			param.push(obj);
		}
		
		var jsonData = JSON.stringify(param);
		
		$.ajax({
			url : '/wellstone/manager/productDetail',
			type : 'POST',
			data: {"jsonData" : jsonData},
	        dataType:'json',
			beforeSend : function() {
				console.log('beforeSend : 제품상세등록');
			},
			success : function(data) {
				if(data.rslt.code == '1') {
					$('#modal-success-text').text('등록성공!');
					$('#modal-success').modal();
				} else {
					$('#modal-fail-text').text('등록실패!');
					$('#modal-fail').modal();
				}
			},
			error : function() {
				$('#modal-fail-text').text('등록실패!');
				$('#modal-fail').modal();
			},
			complete : function() {
				console.log('complete : 제품등록');
			}
		});
	}
}

function fn_detail(e) {
	var tar = e;
	var ctgrCd = tar.dataset.ctgr;
	var prdCd = tar.dataset.cd;
	var prdNm = $(tar).find('td').eq('2').text();
	location.href = '/wellstone/manager/product/detail?ctgrCd=' + ctgrCd + '&prdCd=' + prdCd + '&prdNm=' + prdNm;  
}

//제품상세 그리기
function fn_draw_detail(obj, data) {
	var tar = $('#tbody-prd-info');
	var prdNm = obj.prdNm;
	var html = [];
	
	$('#li-prd-nm').val(prdNm);
	
	data.forEach(function(item, idx, ary) {
		html.push('<tr>');
		html.push('<td>');
		html.push(item.PRD_HRZ + 'x' + item.PRD_VRT + 'x' + item.PRD_THK);
		html.push('</td>');
		html.push('<td>');
		html.push(item.AREA_BOX);
		html.push('</td>');
		html.push('<td>');
		html.push(item.NMBR_BOX);
		html.push('</td>');
		html.push('<td>');
		html.push(item.WGHT_AREA);
		html.push('</td>');
		html.push('<td>');
		html.push(item.BOXCN_TON);
		html.push('</td>');
		html.push('<td>');
		if(item.LINE_YN == 'Y') {
			html.push('포함');
		} else {
			html.push('');
		}
		html.push('</td>');
		html.push('<td>');
		html.push(item.PRD_CORNER);
		html.push('</td>');
		html.push('</tr>');
	});
	tar.html(html.join(''));
}
