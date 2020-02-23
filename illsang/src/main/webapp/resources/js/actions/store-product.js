/**
 * 
 */

'use strict';

var grid = function() {
	var initTable = function() {
		var obj = {},
			table = $('#tbl-product-lst');
		
		table.DataTable($.extend(obj, gDataTableDefs, {
			deferRender: true,
			scrollY: '60vh',
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
	}
	
	return {
		//main function to initiate the module
		init: function() {
			initTable();
		}
	};
}();

$(document).ready(function() {
	grid.init();
});
