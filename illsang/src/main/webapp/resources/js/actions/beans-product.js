/**
 * ------------------------------------------------------------------------
 * Program ID	: beans-product.js
 * Program Name : 취급생두목록관리
 * Description	: 취급하는 생두 목록을 관리하여 재고 관리 및 로스팅 주문에 사용될 마스터
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

    $.fn.dataTable.Api.register('column().title()', function() {
        return $(this.header()).text().trim();
    });

    var initTable = function() {
    	var obj = {},
        	table = $('#tbl-product-lst');
        table.DataTable($.extend(obj, gDataTableDefs, {
            ajax: {
            	url: '/manage/beans/product/list'
            },
            rowGroup: {
                dataSrc: 'CountryName',
            },
            columns: [
                { data: 'RecordID' },
                { data: 'ProductCode'},
                { data: 'ProductName' },
                { data: 'CountryName' },
                { data: 'GradeCode' },
                { data: 'ProcessCode' },
                { data: 'TasteCode' },
                { data: 'Price' },
                { data: 'UseYn' },
                { data: 'LastDate' },
                { data: 'Actions' }
            ],
            
         // Order settings
			order: [[0, 'asc']],
			
            columnDefs: [
            	{/* No */
            		targets: 0,
            		width: '30px'
            	},
            	{/* 상품코드 */
            		targets: 1,
            		width: '50px'
            	},
            	{/* 상품명*/
            		targets: 2,
            		width: '250px'
            	},
            	{/* 국가 */
            		targets: 3
            	},
                {/* 등급 */
                	targets: 4,
                	render: function(data, type, full, meta) {
                		var status = {
                    		'C': { 'title': '커머셜', 'state': 'warning' },
                            'H': { 'title': '하이엔드', 'state': 'danger' },
                            'M': { 'title': '마이크로랏', 'state': 'info' },
                            'P': { 'title': '프리미엄', 'state': 'success' },
                            'S': { 'title': '스페셜티', 'state': 'primary' }
                    	};
                		if (typeof status[data] === 'undefined') {
                            return data;
                        }
                        return '<span class="kt-badge kt-badge--' + status[data].state + ' kt-badge--dot"></span>&nbsp;' +
                            '<span class="kt-font-bold kt-font-' + status[data].state + '">' + status[data].title + '</span>';
                	}
                },
                {/* 프로세스 */
                	targets: 5,
                	defaultContent: '',
                	render: function(data, type, full, meta) {
                		var status = {
                    		'01': { 'title': '워시드', 'state': 'warning' },
                            '02': { 'title': '내츄럴', 'state': 'danger' },
                            '03': { 'title': '펄프드 내츄럴', 'state': 'info' },
                            '04': { 'title': '허니 프로세스', 'state': 'success' },
                            '05': { 'title': '홀링', 'state': 'primary' }
                    	};
                		if (typeof status[data] === 'undefined') {
                            return data;
                        }
                        return '<span class="kt-font-bold kt-font-' + status[data].state + '">' + status[data].title + '</span>';
                	}
                },
                {/* 맛 */
                    targets: 6,
                    render: function(data, type, full, meta) {
                        var status = {
                            '01': { 'title': '바디', 'class': 'kt-badge--danger' },
                            '02': { 'title': '벨런스', 'class': ' kt-badge--warning' },
                            '03': { 'title': '단맛', 'class': ' kt-badge--primary' },
                            '04': { 'title': '신맛', 'class': ' kt-badge--success' },
                            '05': { 'title': '향미', 'class': ' kt-badge--info' }
                        };
                        if (typeof status[data] === 'undefined') {
                            return data;
                        }
                        return '<span class="kt-badge ' + status[data].class + ' kt-badge--inline kt-badge--pill">' + status[data].title + '</span>';
                    }
                },
                {/* 매입가 */
                	targets: 7,
                	render: $.fn.dataTable.render.number(','),
                	width: '80px'
                },
                {/* 사용여부 */
                    targets: 8,
                    render: function(data, type, full, meta) {
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
                    targets: -1,
                    responsivePriority: -1,
                    orderable: false,
                    render: function(data, type, rows, meta) {
                    	var cls = (rows.UseYn === 'Y')
                    			? 'kt-font-primary la la-check-circle'
                    			: 'kt-font-danger la la-circle',
                    		tpl = [
		                        '<a href="javascript:;" data-code="',
		                        	rows.ProductCode,
		                        	'" onclick="fn_gridRowEdit(this);" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="View">',
		                        	'<i class="la la-edit"></i>',
		                        '</a>',
		                        '<a href="javascript:;" ',
		                        	'data-code="', rows.ProductCode, '" ',
		                        	'data-name="', rows.ProductName, '" ',
		                        	'data-use="' , rows.UseYn,  '" ',
		                        	'onclick="fn_updateUseYn(this);" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="Status">',
		                        	'<i class="',cls,'"></i>',
		                        '</a>'
	                    	];
                        return tpl.join('');
                    },
                }
            ],
//            initComplete: function() {
//            	console.log(this.table());
//                var thisTable = this,
//                	rowFilter = $('<tr class="filter"></tr>').appendTo($(table.table().header()));
//
//                this.api().columns().every(function() {
//                    var column = this,
//                    	index = column.index(),
//                    	input;
//                    
//                    switch (index) {
//                        case '1':
//                            input = $('<input type="text" class="form-control form-control-sm form-filter kt-input" data-col-index="'
//                            		+ index
//                            		+ '"/>');
//                            break;
//                        case '2':
//                            input = $('<select class="form-control form-control-sm form-filter kt-input" title="Select" data-col-index="'
//                            		+ index
//                            		+ '"><option value="">Select</option></select>');
//                            column.data().unique().sort().each(function(d, j) {
//                                $(input).append('<option value="' + d + '">' + d + '</option>');
//                            });
//                            break;
//                        case '3':
//                        	var status = {
//                        		'C': { 'title': '커머셜', 'state': 'warning' },
//                                'H': { 'title': '하이엔드', 'state': 'danger' },
//                                'M': { 'title': '마이크로랏', 'state': 'info' },
//                                'P': { 'title': '프리미엄', 'state': 'success' },
//                                'S': { 'title': '스페셜티', 'state': 'primary' }
//                        	};
//                        	input = $('<select class="form-control form-control-sm form-filter kt-input" title="Select" data-col-index="'
//                        			+ column.index()
//                        			+ '"><option value="">Select</option></select>');
//			                column.data().unique().sort().each(function(d, j) {
//			                    $(input).append('<option value="' + d + '">' + status[d].title + '</option>');
//			                });
//                        	break;
//                        case '4':
//                        	var status = {
//                        		''  : { 'title': 'n/a'},
//                        		'01': { 'title': '워시드', 'state': 'warning' },
//                                '02': { 'title': '내츄럴', 'state': 'danger' },
//                                '03': { 'title': '펄프드 내츄럴', 'state': 'info' },
//                                '04': { 'title': '허니 프로세스', 'state': 'success' },
//                                '05': { 'title': '홀링', 'state': 'primary' }
//                        	};
//                        	input = $('<select class="form-control form-control-sm form-filter kt-input" title="Select" data-col-index="'
//                        			+ column.index()
//                        			+ '"><option value="">Select</option></select>');
//			                column.data().unique().sort().each(function(d, j) {
//			                    $(input).append('<option value="' + d + '">' + status[d].title + '</option>');
//			                });
//                        	break;
//                        case '5':
//                            var status = {
//                                '01': { 'title': '바디', 'class': 'kt-badge--danger' },
//                                '02': { 'title': '벨런스', 'class': ' kt-badge--warning' },
//                                '03': { 'title': '단맛', 'class': ' kt-badge--primary' },
//                                '04': { 'title': '신맛', 'class': ' kt-badge--success' },
//                                '05': { 'title': '향미', 'class': ' kt-badge--info' }
//                            };
//                            input = $('<select class="form-control form-control-sm form-filter kt-input" title="Select" data-col-index="'
//                            		+ column.index()
//                            		+ '"><option value="">Select</option></select>');
//                            column.data().unique().sort().each(function(d, j) {
//                                $(input).append('<option value="' + d + '">' + status[d].title + '</option>');
//                            });
//                            break;
//                        case '6':
//                            var status = {
//                                'N': { 'title': '미사용', 'state': 'danger' },
//                                'Y': { 'title': '사용', 'state': 'primary' }
//                            };
//                            input = $('<select class="form-control form-control-sm form-filter kt-input" title="Select" data-col-index="'
//                            		+ column.index()
//                            		+ '"><option value="">Select</option></select>');
//                            column.data().unique().sort().each(function(d, j) {
//                                $(input).append('<option value="' + d + '">' + status[d].title + '</option>');
//                            });
//                            break;
//                        case '7':
//                            input = $([
//                        		'<div class="input-group date">',
//	                    			'<input type="text" class="form-control form-control-sm kt-input" readonly placeholder="From" id="m_datepicker_1" data-col-index="',
//	                    				column.index(),
//	                    			'"/>',
//	                    			'<div class="input-group-append">',
//	                    				'<span class="input-group-text"><i class="la la-calendar-o glyphicon-th"></i></span>',
//	                    				'</div>',
//	                    			'</div>',
//	                    		'<div class="input-group date">',
//	                    			'<input type="text" class="form-control form-control-sm kt-input" readonly placeholder="To" id="m_datepicker_2" data-col-index="',
//	                    				column.index(),
//	                    			'"/>',
//	                    			'<div class="input-group-append">',
//	                    				'<span class="input-group-text"><i class="la la-calendar-o glyphicon-th"></i></span>',
//	                    			'</div>',
//	                    		'</div>'
//	                    	].join(''));
//                            break;
//                        case '8':
//                            var search = $([
//                        		'<button class="btn btn-brand kt-btn btn-sm kt-btn--icon">',
//	                    			'<span>',
//	                    				'<i class="la la-search"></i>',
//	                    				'<span>Search</span>',
//	                    			'</span>',
//	                    		'</button>'
//	                    	].join(''));
//                            var reset = $([
//                            	'<button class="btn btn-secondary kt-btn btn-sm kt-btn--icon">',
//                            		'<span>',
//                            			'<i class="la la-close"></i>',
//                            			'<span>Reset</span>',
//                            		'</span>',
//                            	'</button>'
//                            ].join(''));
//
//                            $('<th>').append(search).append(reset).appendTo(rowFilter);
//
//                            $(search).on('click', function(e) {
//                                e.preventDefault();
//                                var params = {};
//                                $(rowFilter).find('.kt-input').each(function() {
//                                    var i = $(this).data('col-index');
//                                    if (params[i]) {
//                                        params[i] += '|' + $(this).val();
//                                    } else {
//                                        params[i] = $(this).val();
//                                    }
//                                });
//                                $.each(params, function(i, val) {
//                                    // apply search params to datatable
//                                    table.column(i).search(val ? val : '', false, false);
//                                });
//                                table.table().draw();
//                            });
//
//                            $(reset).on('click', function(e) {
//                                e.preventDefault();
//                                $(rowFilter).find('.kt-input').each(function(i) {
//                                    $(this).val('');
//                                    table.column($(this).data('col-index')).search('', false, false);
//                                });
//                                table.table().draw();
//                            });
//                            break;
//                    }
//
//                    if (column.title() !== 'Actions') {
//                        $(input).appendTo($('<th>').appendTo(rowFilter));
//                    }
//                });
//
//                // hide search column for responsive table
//                var hideSearchColumnResponsive = function() {
//                    thisTable.api().columns().every(function() {
//                        var column = this
//                        if (column.responsiveHidden()) {
//                            $(rowFilter).find('th').eq(column.index()).show();
//                        } else {
//                            $(rowFilter).find('th').eq(column.index()).hide();
//                        }
//                    })
//                };
//
//                // init on datatable load
//                hideSearchColumnResponsive();
//                // recheck on window resize
//                window.onresize = hideSearchColumnResponsive;
//
//                $('#kt_datepicker_1,#kt_datepicker_2').datepicker();
//            }
        }));
    };

    return {
        //main function to initiate the module
        init: function() {
            initTable();
        }
    };
}();
/**************************************************************************
 * Document ready view event
 * @returns
 **************************************************************************/
$(document).ready(function() {
    grid.init();
    combo.init();
    fn_init();
    
    $('#grd-row-btn').on('click', function() {
    	console.log(this);
    });
    
    $('#btn-save').on('click', function() {
    	fn_save();
    });
});
/**************************************************************************
 * Common function event
 * @returns
 **************************************************************************/
function gfn_new	(obj) { fn_new(); }
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
function fn_init() {
	$('#frm-beans-product').setFormData({
		ProductCode: '',
		ProductName: '',
		Price: 0,
		UseYn: 'Y',
		CountryCode: '#',
		CompanyCode: '#',
		GradeCode: '#',
		ProcessCode: '#',
		TasteCode: '#'
	});
}
function fn_new() {
	fn_init();
	$('#pop-edit').modal();
}
function fn_save() {
	var params = $('#frm-beans-product').getFormData();
	$.fn.trans('/manage/beans/product',
		(gfn_isEmpty(params.ProductCode)) ? 'post' : 'put',
		params,
		{
			done: function(data) {
				if (data.rslt.code == '0') {
					swal.fire(
		                '등록완료!',
		                '신규 등록처리가 완료 되었습니다.',
		                'success'
		            );
					$('#tbl-product-lst').DataTable().ajax.reload();
				}
			},
			fail: function() {
				
			}
		}
	);
}
function fn_gridRowEdit(obj) {
	$.fn.trans('/manage/beans/product/find', null,
		{
			ProductCode: $(obj).data('code')
		},
		{
			done: function(data) {
				console.log(data.data);
				$('#frm-beans-product').setFormData(data.data);
				$('#pop-edit').modal();
			},
			fail: function(xhr, status, err) {
				console.log(status);
				console.log(err);
			}
		}
	);
}

function fn_updateUseYn(obj) {
	var obj = $(obj),
		use = (obj.data('use') === 'Y') ? '미사용' : '사용';
    swal.fire({
        title: '사용여부를 변경하시겠습니까?',
        text: '[' + obj.data('name') + ']는 [' + use + ']처리됩니다.',
        type: 'warning',
        showCancelButton: true,
        cancelButtonText: '취소',
        confirmButtonText: '수정하겠습니다!'
    }).then(function(result) {
    	if (result.value) {
    		$.fn.trans('/manage/beans/product', 'put',
		    	{
		    		ProductCode: obj.data('code'),
		    		UseYn: (obj.data('use') === 'Y') ? 'N' : 'Y'
		    	},
		    	{
		    		done: function(data) {
		    			if (data.rslt.code == '0') {
		    				swal.fire(
				                '수정완료!',
				                '수정처리가 완료 되었습니다.',
				                'success'
				            );
		    				$('#tbl-product-lst').DataTable().ajax.reload();
		    			}
		    		}
		    	}
		    );
    	}
    });
}