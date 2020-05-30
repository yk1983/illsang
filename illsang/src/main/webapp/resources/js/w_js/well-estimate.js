/**
 * 견적문의 
 */
var g_estimate = {
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
	
	//paging
	var totalCount = $('#paging').data('total-count');
	var page_view = paging(totalCount, g_estimate.dataSize, g_estimate.pageSize, 1, 'estimate');
	$('#paging').empty().html(page_view);
	
	//화면전환(관리자페이지)
	$('input[name="chk-estimate"]').on('click', function (e) {
		fn_change($(e.currentTarget));
    });
	
	//개인정보 취급방침 동의
	$('#btn-privacy-estimate').on('click', function() {
		$('#modal-privacy').modal();
	});
	
	//시공견적문의 등록
	$('button[name="btn-agree"]').on('click', function() {
		var chk = $('#chk-agree').is(':checked');
		if(chk) {
			fn_estimate_save();
		} else {
			alert('개인정보취급방침 동의 체크해주세요.');
		}
	});
	
	//비밀번호 확인
	$('#btn-chk-psw').on('click', function() {
		fn_psw_estimate();
	});
	
	//시공견적문의 수정
	$('#btn-update-estimate').on('click', function() {
		fn_estimate_update();
	});
	
});
/**************************************************************************
 * Local function event
 * @returns
 **************************************************************************/
//시공견적문의 전화번호(앞자리) 선택
function estimate_prev_num(e) {
	var value = e.text;
	$('button[name="esimatePrevNum"]').text('');
	$('button[name="esimatePrevNum"]').text(value);
//	console.log(value);
}

//화면전환(관리자페이지)
function fn_change(e) {
	var value = e.val();
	console.log(value);
	$('#li-breadcrumb').text(value);
}

//시공견적문의 등록
function fn_estimate_save() {
	var params = $('#frm-estimate').getFormData();
	params.estimatePhone = $('button[name="esimatePrevNum"]').text() + params.estimatePhone; 
	console.log(params);
	$.ajax({
		url : '/wellstone/estimate',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 시공견적문의 등록');
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
			console.log('complete : 시공견적문의 등록');
		}
	});
}

//비밀번호 확인 modal
function fn_modal_estimate(e) {
	var tar = e;
	console.log(e);
	g_estimate.reqNo = $(e).find('td').eq('0').text();
	$('#modal-password').modal();
}

//비밀번호 확인
function fn_psw_estimate() {
	var params = $('#frm-password').getFormData();
	params.reqNo = g_estimate.reqNo;
	$.ajax({
		url : '/wellstone/estimate/psw',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 비밀번호 확인');
		},
		success : function(data) {
			console.log(data);
			if(data.code == '1') {
				fn_estimate_detail(params);
			} else {
				$('#modal-fail-text').text('실패!');
				$('#modal-fail').modal();
			}
		},
		error : function() {
			$('#modal-fail-text').text('실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 비밀번호 확인');
		}
	});
}

//시공견적문의 상세정보 조회
function fn_estimate_detail(params) {
	$.ajax({
		url : '/wellstone/estimate/detail',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 시공견적문의 상세 조회');
		},
		success : function(data) {
			console.log(data);
			if(data.code == '1') {
				fn_estimate.show_update(data.rslt);
			} else {
				$('#modal-fail-text').text('조회실패!');
				$('#modal-fail').modal();
			}
		},
		error : function() {
			$('#modal-fail-text').text('조회실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 시공견적문의 상세 조회');
		}
	});
}

//시공견적문의 수정
function fn_estimate_update() {
	var params = $('#frm-estimate').getFormData();
	params.reqNo = g_estimate.reqNo;
	params.estimatePhone = $('button[name="esimatePrevNum"]').text() + params.estimatePhone;
	params.stat = '01';
	console.log(params);
	$.ajax({
		url : '/wellstone/estimate/update',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 시공견적문의 수정');
		},
		success : function(data) {
			$('#modal-success-text').text('수정성공!');
			$('#modal-success').modal();
			console.log(data);
		},
		error : function() {
			$('#modal-fail-text').text('수정실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 시공견적문의 수정');
		}
	});
}

//draw & reset
var fn_estimate = {
		show_update : function(data) {
			var reqNm = data.REQ_NM
			var phone = data.PHONE_NO;
			var areaCd = data.AREA_CD;
			var buildTp = data.BULD_TP;
			var wallTp = data.WALL_TP;
			var prdCd = data.PRD_CD;
			var area = data.AREA;
			var lineYn = data.LINE_YN;
			var exterior = data.EXTERIOR;
			var interior = data.INTERIOR; 
			var psw = data.PSWD;
			var res = data.RES_TXT;
			
			$('input[name="estimateNm"]').val(reqNm);
			$('button[name="esimatePrevNum"]').text(phone.substring(0, 3));
			$('input[name="estimatePhone"]').val(phone.substring(3, 11));
			$('select[name="areaCd"]').val(areaCd).prop('selected', true);
			$('select[name="buildingType"]').val(buildTp).prop('selected', true);
			$('select[name="wallType"]').val(wallTp).prop('selected', true);
			$('select[name="estimateProduct"]').val(prdCd).prop('selected', true);
			$('input[name="area"]').val(area);
			
			$("input[name=a_day][value="+lineYn+"]").prop("checked",true);
//			$('input[name="tileJoint"]').val(lineYn).prop('checked', true);
			
			$('select[name="exterior"]').val(exterior).prop('selected', true);
			$('select[name="interior"]').val(interior).prop('selected', true);
			$('input[name="estimatePsw"]').val(psw);
			if(res != null && res != undefined) {
				$('#div-estimate-response').val(res);
			}
			
			$('#div-estimate-privacy').hide();
			$('#div-estimate-privacy-check').hide();
			$('#btn-create-estimate').hide();
			$('#div-estimate-response').show();
			$('#modal-estimate').modal();
		},
		show_update_m : function() {
			
		},
		reset : function() {
			
		}
} 
