/**
 * 관리자(메뉴관리)
 */

/**************************************************************************
 * Document ready view event
 * @returns
 **************************************************************************/
$(document).ready(function() {
	$('#btn-save-menu').on('click', function() {
		fn_save();
	});
	
//	$('button[name="btn-menu"]').on('click', function(e) {
//		fn_draw.upd(e);
//	});
	
//	$('a.list-group-item').on('click', function(e) {
//		fn_draw.upd(e);
//	});
	
	$('#btn-update-menu').on('click', function() {
		fn_update();
	});
	
	$('#btn-delete-menu').on('click', function() {
		fn_delete();
	});
	
	$('#btn-reset').on('click', function() {
		fn_draw.reset();
	});
	
});
/**************************************************************************
 * Local function event
 * @returns
 **************************************************************************/
function fn_save() {
	var params = $('#frm-mgmt-menu').getFormData();
	var chk = $('#useYn').is(':checked'); 
	params.useYn = (chk == false) ? 'N' : 'Y';  
	if(params.menuNm == '') {
		$('#modal-fail-text').text('메뉴명을 입력해주세요.');
		$('#modal-fail').modal();
	}
	$.ajax({
		url : '/wellstone/m_menu',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 메뉴정보 등록');
		},
		success : function(data) {
			$('#modal-success-text').text('등록성공!');
			$('#modal-success').modal();
			console.log(data);
			fn_draw.all(data.rslt);
		},
		error : function() {
			$('#modal-fail-text').text('등록실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 메뉴정보 등록');
			fn_draw.reset();
		}
	});
};

function fn_update() {
	var params = $('#frm-mgmt-menu').getFormData();
	var chk = $('#useYn').is(':checked'); 
	params.useYn = (chk == false) ? 'N' : 'Y'; //사용여부
	params.menuCd = $('input[name="menuCd"]').val(); //메뉴코드
	if(params.menuNm == '') {
		$('#modal-fail-text').text('메뉴명을 입력해주세요.');
		$('#modal-fail').modal();
	}
	console.log(params);
	$.ajax({
		url : '/wellstone/m_menu/update',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 메뉴정보 수정');
		},
		success : function(data) {
			$('#modal-success-text').text('수정성공!');
			$('#modal-success').modal();
			console.log(data);
			fn_draw.all(data.rslt);
		},
		error : function() {
			$('#modal-fail-text').text('수정실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 메뉴정보 수정');
			fn_draw.reset();
		}
	});
};

function fn_delete() {
	var params = $('#frm-mgmt-menu').getFormData();
	params.menuCd = $('input[name="menuCd"]').val(); //메뉴코드
	if(params.menuNm == '') {
		$('#modal-fail-text').text('메뉴명을 입력해주세요.');
		$('#modal-fail').modal();
	}
	console.log(params);
	$.ajax({
		url : '/wellstone/m_menu/delete',
		type : 'POST',
		data : params,
		beforeSend : function() {
			console.log('beforeSend : 메뉴정보 삭제');
		},
		success : function(data) {
			$('#modal-success-text').text('삭제성공!');
			$('#modal-success').modal();
			console.log(data);
			fn_draw.all(data.rslt);
		},
		error : function() {
			$('#modal-fail-text').text('삭제실패!');
			$('#modal-fail').modal();
		},
		complete : function() {
			console.log('complete : 메뉴정보 삭제');
			fn_draw.reset();
		}
	});
};

var fn_draw = {
		all : function(data) {
			this.topMenu(data.topMenu);
			this.menuType(data.menuType);
			this.menuList(data.menuList);
		},
		topMenu : function(data) {
			var tar = $('select[name="topMenu"]');
			var html = [];
			html.push('<option value="0">없음</option>');
			data.forEach(function(item, idx, ary) {
				html.push('<option value="');
				html.push(item.MENU_CD);
				html.push('">');
				html.push(item.MENU_NM);
				html.push('</option>');				
			});
			tar.html(html.join(''));
		},
		menuType : function(data) {
			var tar = $('select[name="menuTp"]');
			var html = [];
			data.forEach(function(item, idx, ary) {
				html.push('<option value="');
				html.push(item.MENU_TP);
				html.push('">');
				html.push(item.MENU_NM);
				html.push('</option>');				
			});
			tar.html(html.join(''));
		},
		menuList : function(data) {
			var tar = $('#accordion');
			var html = [];
			for(var i = 0; i < data.length; i++) {
				html.push('<div class="card">');
				html.push('<div class="card-header" id="heading');
				html.push(data[i].menuCd);
				html.push('">');
				html.push('<h5 class="mb-0">');
				html.push('<button class="btn btn-link" name="btn-menu" data-toggle="collapse" data-target="#collapse');
				html.push(data[i].menuCd);
				html.push('" aria-expanded="true" onclick="fn_draw.upd(this);" aria-controls="collapse');
				html.push(data[i].menuCd);
				html.push('" data-cd="');
				html.push(data[i].menuCd);
				html.push('" data-pcd="');
				html.push(data[i].pMenuCd);
				html.push('" data-tp="');
				html.push(data[i].menuTp);
				html.push('" data-url="');
				html.push(data[i].menuUrl);
				html.push('" data-use="');
				html.push(data[i].useYn);
				html.push('" data-sort="');
				html.push(data[i].sortNo);
				html.push('">');
				html.push(data[i].menuNm);
				html.push('</button>');
				html.push('</h5>');
				html.push('</div>');
				html.push('<div id="collapse');
				html.push(data[i].menuCd);
				html.push('" class="collapse" aria-labelledby="heading');
				html.push(data[i].menuCd);
				html.push('" data-parent="#accordion">');
				html.push('<div class="card-body" style="padding: 0;">');
				html.push('<div class="list-group" id="list-tab" role="tablist">');
				for(var j = 0; j < data[i].list.length; j++) {
					html.push('<a class="list-group-item list-group-item-action" data-toggle="list" href="javascript:void(0);" onclick="fn_draw.upd(this);" role="tab"');
					html.push(' data-cd="');
					html.push(data[i].list[j].menuCd);
					html.push('" data-pcd="');
					html.push(data[i].list[j].pMenuCd);
					html.push('" data-tp="');
					html.push(data[i].list[j].menuTp);
					html.push('" data-url="');
					html.push(data[i].list[j].menuUrl);
					html.push('" data-use="');
					html.push(data[i].list[j].useYn);
					html.push('" data-sort="');
					html.push(data[i].list[j].sortNo);
					html.push('">');
					html.push(data[i].list[j].menuNm);
					html.push('</a>');
				}
				html.push('</div>');
				html.push('</div>');
				html.push('</div>');
				html.push('</div>');
			}
			tar.html(html.join(''));
		},
		reset : function() {
			$('select[name="topMenu"] option:eq(0)').prop('selected', true);
			$('select[name="menuTp"] option:eq(0)').prop('selected', true);
			$('#btn-save-menu').show();
			$('#btn-update-menu').hide();
			$('#btn-delete-menu').hide();
			$('#frm-mgmt-menu').clearForm();
		},
		upd : function(e) {
//			var tar = $(e.currentTarget);
			var tar = $(e);
			
			//form
			var cd = tar.data('cd');
			var pcd = String(tar.data('pcd'));
			var tp = tar.data('tp');
			var nm = tar.text().trim();
			var url = tar.data('url'); 
			var sort = tar.data('sort');
			var use = tar.data('use');
			
			$('input[name="menuCd"]').val(cd);
//			$('select[name="topMenu"] option').eq(pcd).prop('selected', true);
			$('select[name="topMenu"] option[value=' + pcd + ']').prop('selected', true)
			$('select[name="menuTp"] option').eq(tp).prop('selected', true);
			$('input[name="menuNm"]').val(nm);
			$('input[name="menuUrl"]').val(url);
			$('input[name="sortNo"]').val(sort);
			
			var chk = $('input[name="useYn"]').is(':checked');
			if(use == 'Y' && chk == false) {
				$('input[name="useYn"]').prop('checked', true);
			} else if(use == 'N' && chk == true) { 
				$('input[name="useYn"]').prop('checked', false);
			}
			
			//button
			$('#btn-save-menu').hide();
			$('#btn-update-menu').show();
			$('#btn-delete-menu').show();
		}
};