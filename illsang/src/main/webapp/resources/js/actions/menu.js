/**
 * 
 */

'use strict';

var grid = function() {
	var initTable = function() {
		var obj = {},
			table = $('#tbl-menu-lst');
		
		table.DataTable($.extend(obj, gDataTableDefs, {
			deferRender: true,
			scrollY: '60vh',
			scrollCollapse: true,
			scroller: true,
			select: {
	            style: 'single'
	        },
			ajax: {
				url: '/manage/store/product/report'
			},
			
			columns: [
				{ data: 'RecordID' },
                { data: 'CategoryName' },
                { data: 'ProductName' },
                { data: 'Price' },
                { data: 'Actions' }
			],
			columnDefs: [
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
		})).on('select.dt', function(e, dt, type, indexes) {
			var obj = {},
				selected = dt.data();
			$('#tbl-menu-opt').DataTable($.extend(obj, gDataTableDefs, {
				responsive: false,
				scrollY: '50vh',
				scrollX: true,
				scrollCollapse: true,
				destroy: true,
				ajax: {
					url: '/manage/common/code/details',
					data: {
						MenuIdx: selected.MasterCode
					}
				}
			}));
		});
	};
	
	return {
		init: function() {
			initTable();
		}
	}
}()

$(document).ready(function() {
	grid.init();
});
