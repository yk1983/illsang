/**
 * 카달로그신청
 */
var g_catalog = {
		dataSize : 5,
		pageSize : 5,
		startNum : 0,
		reqNo : null,
		privacy : false	
}
/**************************************************************************
 * Document ready view event
 * @returns
 **************************************************************************/
$(document).ready(function() {
	
	//개인정보 취급방침 동의
	$('#btn-privacy-catalog').on('click', function () {
        $('#modal-privacy').modal();
    });
	
	//카달로그신청 등록
	$('button[name="btn-agree"]').on('click', function() {
		var chk = $('#chk-agree').is(':checked');
		if(chk) {
			fn_catalog_save();
		} else {
			alert('개인정보취급방침 동의 체크해주세요.');
		}
	});
	
	//주소검색 popup 가져오기
    $('#btn-catalog-address').on('click', function() {
    	goPopup();
    });
});
/**************************************************************************
 * Local function event
 * @returns
 **************************************************************************/
function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("/wellstone/juso","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadFullAddr){
	console.log(arguments);
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.	
// 		document.form.userAddr.value = roadFullAddr;
	
//		$('#address').val(roadFullAddr);
		
		//우편번호
		$('input[name="catalogZipNo"]').val(zipNo);
		
		//주소
		$('input[name="cataloRroadFullAddr"]').val(roadFullAddr);
		
		//상세주소
		$('input[name="catalogAddrDetail"]').val(addrDetail);
}

//카달로그신청 전화번호(앞자리) 선택
function catalog_prev_num(e) {
	var value = e.text;
	$('button[name="catalogPrevNum"]').text('');
	$('button[name="catalogPrevNum"]').text(value);
	console.log(value);
}

//카달로그신청 등록
function fn_catalog_save() {
	var params = $('#frm-catalog').getFormData();
	params.catalogPhone = $('button[name="catalogPrevNum"]').text() + params.catalogPhone; 
	console.log(params);
	$.ajax({
		url : '/wellstone/catalog',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 카달로그신청 등록');
		},
		success : function(data) {
			$('#modal-success-text').text('등록성공!');
			$('#modal-success').modal();
			console.log(data);
		},
		error : function() {
			$('#modal-fail-text').text('등록실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 카달로그신청 등록');
		}
	});
}
