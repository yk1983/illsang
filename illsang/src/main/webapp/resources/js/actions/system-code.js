/**
 * ------------------------------------------------------------------------
 * Program ID	: system-code.js
 * Program Name : 시스템코드관리
 * Description	: 시스템에서 사용되는 공통코드 관리
 * ------------------------------------------------------------------------
 * Program History
 * Date        Name      Description
 * ----------  --------  --------------------------------------------------
 * 2020.02.13  yong.kim  최초등록
 * ------------------------------------------------------------------------
 */

'use strict';

var combo = function() {
	var initCombo = function() {
		$('.kt_selectpicker').selectpicker();
	};
	return {
		init: function() {
			initCombo();
		}
	};
}();

var grid = function() {
	var initMstTable = function() {
		var obj = {},
			table = $('#tbl-master-code');
		table.DataTable($.extend(obj, gDataTableDefs, {
			responsive: false,
			scrollX: true,
			scrollY: '50vh',
            scrollCollapse: true,
            autoWidth: false,
			ajax: '/manage/system/code/master',
			rowGroup: {
				dataSrc: 'ModuleCode'
			},
			columns: [
//				{
//	                "className":      'details-control',
//	                "orderable":      false,
//	                "data":           null,
//	                "defaultContent": ''
//	            },
				{ data: 'RecordID' },
				{ data: 'ModuleCode' },
                { data: 'MasterCode' },
                { data: 'MasterName' },
                { data: 'UseYn' },
                { data: 'MngrUseYn' },
                { data: 'SortNo' },
                { data: 'Attr1' },
                { data: 'Attr2' },
                { data: 'Attr3' },
                { data: 'Attr4' },
                { data: 'Attr5' },
                { data: 'Attr6' },
                { data: 'Attr7' },
                { data: 'Attr8' },
                { data: 'Attr9' },
                { data: 'Attr10' },
                { data: 'Actions' }
			],
			columnDefs: [
				{/* No */
					targets: 0,
					width: '30px'
				},
				{/* 모듈코드,공통코드 */
					targets: [1,2],
					width: '80px'
				},
				{/* 공통코드명칭 */
					targets: 3,
					width: '200px'
				},
				{/* 사용여부,관리자사용여부 */
                    targets: [4,5],
                    width: '100px',
                    render: function(data, type, rows, meta) {
                    	var status = {
                            'N': { 'title': '미사용', 'state': 'danger' },
                            'Y': { 'title': '사용', 'state': 'primary' }
                        };
                        if (typeof status[data] === 'undefined') {
                            return data;
                        }
                        return '<span class="kt-badge kt-badge--' + status[data].state + ' kt-badge--dot"></span>&nbsp;' +
                            '<span class="kt-font-bold kt-font-' + status[data].state + '">' + status[data].title + '</span>';
                    }
                },
                {
                	targets: 6,
                	width: '100px'
                },
				{
					targets: [7,8,9,10,11,12,13,14,15,16],
					defaultContent: '',
					width: '150px'
				},
				{
					targets: -1,
					responsivePriority: -1,
					orderable: false,
					render: function(data, type, rows, meta) {
						var cls = (rows.UseYn === 'Y')
		            			? 'kt-font-primary la la-check-circle'
		            			: 'kt-font-danger la la-circle',
		            		tpl = [
		                        '<a href="javascript:;" data-code="',
		                        	rows.MasterCode,
		                        	'" onclick="fn_gridRowEdit(this);" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="View">',
		                        	'<i class="la la-edit"></i>',
		                        '</a>',
		                        '<a href="javascript:;" ',
		                        	'data-code="', rows.MasterCode, '" ',
		                        	'data-name="', rows.MasterName, '" ',
		                        	'data-use="' , rows.UseYn,  '" ',
		                        	'onclick="fn_updateUseYn(this);" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="Status">',
		                        	'<i class="',cls,'"></i>',
		                        '</a>'
		                	];
		                return tpl.join('');
					}
				}
			]
		}));
		
		// Add event listener for opening and closing details
//		table.find('tbody').on('click', 'td.details-control', function () {
//	        var tr = $(this).closest('tr');
//	        var row = table.DataTable().row( tr );
//	 
//	        if ( row.child.isShown() ) {
//	            // This row is already open - close it
//	            row.child.hide();
//	            tr.removeClass('shown');
//	        }
//	        else {
//	            // Open this row
//	            row.child(fn_child(row.data())).show();
//	            tr.addClass('shown');
//	        }
//	    });
		
		table.on('click', 'tbody>tr', function () {
			var data = table.DataTable().row(this).data(),
				form = $('#frm-master');
			form.setFormData(data);
			
			fn_disabled(true);
		});
		
		$('#export_print').on('click', function(e) {
			e.preventDefault();
			table.button(0).trigger();
		});

		$('#export_copy').on('click', function(e) {
			e.preventDefault();
			table.button(1).trigger();
		});

		$('#export_excel').on('click', function(e) {
			e.preventDefault();
			table.button(2).trigger();
		});

		$('#export_csv').on('click', function(e) {
			e.preventDefault();
			table.button(3).trigger();
		});

		$('#export_pdf').on('click', function(e) {
			e.preventDefault();
			table.button(4).trigger();
		});
	};
	
	var initDtlTable = function() {
		var obj = {},
			table = $('#tbl-details-code');
		table.DataTable($.extend(obj, gDataTableDefs, {
			responsive: false,
			scrollX: true,
			scrollY: '50vh',
            scrollCollapse: true,
            autoWidth: false,
            ajax: {
            	url: '/manage/system/code/detail',
            	data: function() {
            		return {
            			ModuleCode: $('#frm-master [name="ModuleCode"] option:selected').val(),
                		MasterCode: $('#frm-master [name="MasterCode"]').val()
            		};
            	}
            },
            columns: [
				{ data: 'RecordID' },
                { data: 'DetailCode' },
                { data: 'DetailName' },
                { data: 'UseYn' },
                { data: 'SortNo' },
                { data: 'Val1' },
                { data: 'Val2' },
                { data: 'Val3' },
                { data: 'Val4' },
                { data: 'Val5' },
                { data: 'Val6' },
                { data: 'Val7' },
                { data: 'Val8' },
                { data: 'Val9' },
                { data: 'Val10' },
                { data: 'Actions' }
			],
			columnDefs: [
				{/* No */
					targets: 0,
					width: '30px'
				},
				{/* 상세코드 */
					targets: 1
				},
				{/* 상세코드명칭 */
					targets: 2,
					width: '200px'
				},
				{/* 사용여부 */
                    targets: 3,
                    width: '60px',
                    render: function(data, type, rows, meta) {
                    	var status = {
                            'N': { 'title': '미사용', 'state': 'danger' },
                            'Y': { 'title': '사용', 'state': 'primary' }
                        };
                        if (typeof status[data] === 'undefined') {
                            return data;
                        }
                        return [
                        	'<span class="kt-badge kt-badge--', status[data].state, ' kt-badge--dot"></span>&nbsp;',
                        	'<span class="kt-font-bold kt-font-', status[data].state, '">', status[data].title, '</span>'
                        ].join('');
                    }
                },
                {/* 정렬순서 */
                	targets: 4
                },
				{
					targets: [5,6,7,8,9,10,11,12,13,14],
					defaultContent: ''
				},
				{
					targets: -1,
					responsivePriority: -1,
					orderable: false,
					render: function(data, type, rows, meta) {
						var cls = (rows.UseYn === 'Y')
		            			? 'kt-font-primary la la-check-circle'
		            			: 'kt-font-danger la la-circle',
		            		tpl = [
		                        '<a href="javascript:;" data-code="',
		                        	rows.DetailCode,
		                        	'" onclick="fn_gridRowEdit(this);" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="View">',
		                        	'<i class="la la-edit"></i>',
		                        '</a>',
		                        '<a href="javascript:;" ',
		                        	'data-code="', rows.DetailCode, '" ',
		                        	'data-name="', rows.DetailName, '" ',
		                        	'data-use="' , rows.UseYn,  '" ',
		                        	'onclick="fn_updateUseYn(this);" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="Status">',
		                        	'<i class="',cls,'"></i>',
		                        '</a>'
		                	];
		                return tpl.join('');
					}
				}
			]
		}));
		
		table.on('click', 'tbody>tr', function () {
			var data = table.DataTable().row(this).data();
			$('#frm-detail').setFormData(data);
		});
	};
	
	return {
		init: function() {
			initMstTable();
			initDtlTable();
		}
	};
}();
/**************************************************************************
 * Document ready view event
 * @returns
 **************************************************************************/
$(document).ready(function() {
	// Grid 초기화
    grid.init();
    // selectpicker 초기화
    combo.init();
    
	$('#tab-system-code a')
	.on('show.bs.tab', function(e) {
		var tabIndex = $(e.target).data('tabIndex');
		if (tabIndex === 1) {
			$('#frm-master').show();
			$('#frm-detail').hide();
		}
		else {
			$('#frm-master').hide();
			$('#frm-detail').show();
		}
	})
	.on('shown.bs.tab', function(e) {
		var tabIndex = $(e.target).data('tabIndex');
		if (tabIndex === 2) {
			var table = $('#tbl-details-code').DataTable();
			table.clear();
			table.ajax.reload(function (){
				table.columns.adjust();
			});
		}
	})
	.on('hide.bs.tab', function(e) {
		console.log('The previous tab is about to be hidden.');
	})
	.on('hidden.bs.tab', function(e) {
		console.log(e.target);
		console.log(e.relatedTarget);
		$('#tbl-details-code').DataTable().columns.adjust();
	});
	
	$('#btn-master-save').on('click', function() {
		fn_save();
	});
	
	$('#btn-master-reset').on('click', function() {
		fn_reset(this);
	});

	$('#btn-detail-save').on('click', function() {
		fn_save();
	});
	
	$('#btn-detail-reset').on('click', function() {
		fn_reset(this);
	});
});
/**************************************************************************
 * Common function event
 * 
 * @returns
 **************************************************************************/
function gfn_new	(obj) {
	fn_new();
}
function gfn_save	(obj) { return; }
function gfn_delete	(obj) { return; }
function gfn_print	(obj) { return; }
function gfn_xlsUp	(obj) { return; }
function gfn_xlsDn	(obj) { return; }
function gfn_ext01	(obj) { return; }
function gfn_ext02	(obj) { return; }
function gfn_ext03	(obj) { return; }
function gfn_ext04	(obj) { return; }
function gfn_ext05	(obj) { return; }
/**************************************************************************
 * Local function event
 * @returns
 **************************************************************************/
function fn_gridRowEdit(obj) {
	console.log(obj);
	$('#pop-edit').modal();
}
function fn_save() {
	var tabIndex = $('#tab-system-code li a.active').data('tabIndex'),
		params = {};
	if (tabIndex === 1) {
		params = $('#frm-master').serializeObject();
		$.fn.trans(
			'/manage/system/code/master/save',
			(gfn_isEmpty(params.MasterCode)) ? 'post' : 'put',
			params,
			{
				done: function() {
					
				},
				fail: function() {
					
				}
			}
		);
	}
	else {
		params = $('#frm-detail').serializeObject();
		$.fn.trans('/manage/system/code/detail/save',
			(gfn_isEmpty(params.DetailCode)) ? 'post' : 'put',
			params,
			{
				done: function() {
					
				},
				fail: function() {
					
				}
			}
		);
	}
}
function fn_reset(elem) {
	var form = $(elem).parents('form');
	if (form.length > 0) form[0].reset();
}
function fn_new() {
	var tabIndex = $('#tab-system-code li a.active').data('tabIndex');
	$((tabIndex === 1) ? '#frm-master' : '#frm-detail').clearForm();
	fn_disabled(false);
}
function fn_disabled(status) {
	var form = $('#frm-master');
	form.find('[name=ModuleCode]').attr('disabled', status);
	form.find('[name=MasterCode]').attr('disabled', status);
}