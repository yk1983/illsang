/**
 * 
 */

'use strict';

//datatables select function
var grid = function() {
	var initTable = function() {
		var obj = {},
			table = $('#tbl-product-lst');
		
		var dtable = table.DataTable($.extend(obj, gDataTableDefs, {
			deferRender: true,
			scrollY: '50vh',
			scrollCollapse: true,
			scroller: true,
			ajax: {
				url: '/manage/store/product/list'
			},
			columns: [
				{ data: 'RecordID' },
				{ data: 'Code' },
				{ data: 'Name' },
				{ data: 'Price' },
				{ data: 'UseYn' },
				{ data: 'SortNo' },
				{ data: 'Actions' }
			],
			
			// Order settings
			order: [[1, 'asc']],
			
			headerCallback: function(thead, data, start, end, display) {
				thead.getElementsByTagName('th')[0].innerHTML = [
					'<label class="kt-checkbox kt-checkbox--single kt-checkbox--solid">',
                        '<input type="checkbox" value="" class="kt-group-checkable">',
                        '<span></span>',
                    '</label>'
				].join('');
			},
			columnDefs: [
				{
					targets: 0,
					width: '30px',
					className: 'dt-right',
					orderable: false,
					render: function(data, type, full, meta) {
						var tpl = [
							'<label class="kt-checkbox kt-checkbox--single kt-checkbox--solid">',
								'<input type="checkbox" value="" class="kt-checkable">',
								'<span></span>',
							'</label>'
						];
						return tpl.join('');
					},
				},
				{ targets: [5], defaultContent: '' },
				{
                    targets: 4,
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
					render: function(data, type, full, meta) {
						var tpl = [
							'<span class="dropdown">',
	                            '<a href="#" class="btn btn-sm btn-clean btn-icon btn-icon-md" data-toggle="dropdown" aria-expanded="true">',
	                              	'<i class="la la-ellipsis-h"></i>',
	                            '</a>',
	                            '<div class="dropdown-menu dropdown-menu-right">',
	                                '<a class="dropdown-item" href="#" data-toggle="modal" data-target="#pop-edit">',
	                            		'<i class="la la-edit"></i> Edit Details</a>',
	                                '<a class="dropdown-item" href="#"><i class="la la-leaf"></i> Update Status</a>',
	                                '<a class="dropdown-item" href="#"><i class="la la-print"></i> Generate Report</a>',
	                            '</div>',
	                        '</span>',
	                        '<a href="#" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="View">',
	                          	'<i class="la la-edit"></i>',
	                        '</a>'
						];
						return tpl.join('');
					}
				}
			]
		}));
		table.on('change', '.kt-group-checkable', function() {
			var set = $(this).closest('table').find('td:first-child .kt-checkable');
			var checked = $(this).is(':checked');

			$(set).each(function() {
				if (checked) {
					$(this).prop('checked', true);
					$(this).closest('tr').addClass('active');
				}
				else {
					$(this).prop('checked', false);
					$(this).closest('tr').removeClass('active');
				}
			});
		});

		table.on('change', 'tbody tr .kt-checkbox', function() {
			$(this).parents('tr').toggleClass('active');
		});
		dtable.on('select', function(e, dt, type, indexs) {
			var rowData = table.DataTable().rows(indexs).data().toArray();
			console.log('select', rowData);
			
			var cd = rowData[0].Code; 		//상품코드
			var nm = rowData[0].Name; 		//상품명칭
			var price = rowData[0].Price; 	//상품가격
			var yn = rowData[0].UseYn;		//사용여부
			
			$('input[name="prdCd"]').val(cd);
			$('input[name="prdNm"]').val(nm);
			$('input[name="price"]').val(price);
			if(yn == 'Y') {
				$('input[name="useYn"][value="Y"]');
			} else {
				$('input[name="useYn"][value="N"]');
			}
			
			//button
			$('#btn-update').show();
//			$('#btn-delete').show();
			
		}).on('deselect', function(e, dt, type, indexs) {
			var rowData = table.DataTable().rows(indexs).data().toArray();
			console.log('deselect', rowData);
			
			//reset 
			$('input[name="prdCd"]').val('');
			$('input[name="prdNm"]').val('');
			$('input[name="price"]').val('');
			$('input[name="useYn"][value="Y"]');
			
			//button
			$('#btn-update').hide();
//			$('#btn-delete').hide();
		});
	}
	
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
	
	$('#btn-save').on('click', function() {
    	fn_save();
    });
	
	$('#btn-update').on('click', function() {
    	fn_update();
    });
	
//	$('#btn-delete').on('click', function() {
//    	fn_delete();
//    });
	
	var files
	
	$('#file_test1').on('change', function() {
		var fileInput = document.getElementById("file_test1");
//		files = fileInput.files;
//		var html = [];
//		for (var i = 0; i < files.length; i++) {
//			html.push('<div>');
//			html.push('<input type="checkbox" name="chk-file">');
//		    html.push(files[i].name);		    
//		    html.push('</div>');
//		}
//		console.log(html.join(''));
//		$('#file-list').html(html.join(''));
//		$('#btn-delete').show();
		$('#file_test1').append('<button>삭제</button>')
		readInputFile(this);
		$('#preview').find('img').width('100px');
	});
	
//    img.load( function() {
//   	   
////   	   img.css('visibility','visible');
//   	};
	
	$('#btn-delete').on('click', function() {
		var $input = $("file_test");
	    var $preview = $('#preview');
	    resetInputFile($input, $preview);
	});

	
});
/**************************************************************************
 * Local function event
 * @returns
 **************************************************************************/
//등록 이미지 등록 미리보기
//참고사이트 : https://mylife365.tistory.com/472
function readInputFile(input) {
    if(input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#preview').html('<img src=' + e.target.result + '>');
        }
        reader.readAsDataURL(input.files[0]);
        
        //동적으로 크기변경
        var img = $('img');
        if( img.width()  > img.height() ) {
        	img.width('100px');
  	   	}else{
  	   		img.height('100px');
  	   	}
    }
}


//등록 이미지 삭제 ( input file reset )
function resetInputFile($input, $preview) {
    var agent = navigator.userAgent.toLowerCase();
    if((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1)) {
        // ie 일때
        $input.replaceWith($input.clone(true));
        $preview.empty();
    } else {
        //other
        $input.val("");
        $preview.empty();
    }       
}

function fn_save() {
	var params = $('#frm-store-product').getFormData();
	$.fn.trans('/manage/store/product',
		'post',
//		(gfn_isEmpty(params.prdCd)) ? 'post' : 'put',
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
				
				} else {
					swal.fire(
			                '등록실패!',
			                '이미 존재하는 상품입니다.',
			                'fail'
		            );
				}
			},
			fail: function() {
				
			}
		}
	);
}

function fn_update() {
	var params = $('#frm-store-product').getFormData();
	$.fn.trans('/manage/store/product',
			'put',
//			(gfn_isEmpty(params.prdCd)) ? 'post' : 'put',
			params,
			{
				done: function(data) {
					if (data.rslt.code == '0') {
						swal.fire(
			                '수정완료!',
			                '수정처리가 완료 되었습니다.',
			                'success'
			            );
						
						//button
						$('#btn-update').hide();
//						$('#btn-delete').hide();
						
						$('#tbl-product-lst').DataTable().ajax.reload();
					
					} else {
						swal.fire(
				                '수정실패!',
				                '입력값 확인하세요.',
				                'fail'
			            );
					}
				},
				fail: function() {
					
				}
			}
		);
}

/**
 * 삭제 기능 사용안함
 * @returns
 */
function fn_delete() {
	var params = $('#frm-store-product').getFormData();
	$.fn.trans('/manage/store/product',
			'delete',
//			(gfn_isEmpty(params.prdCd)) ? 'post' : 'put',
			params,
			{
				done: function(data) {
					if (data.rslt.code == '0') {
						swal.fire(
			                '삭제완료!',
			                '삭제처리가 완료 되었습니다.',
			                'success'
			            );
						
						//button
						$('#btn-update').hide();
//						$('#btn-delete').hide();
						
						$('#tbl-product-lst').DataTable().ajax.reload();
					
					} else {
						swal.fire(
				                '삭제실패!',
				                //'입력값 확인하세요.',
				                'fail'
			            );
					}
				},
				fail: function() {
					
				}
			}
		);
}