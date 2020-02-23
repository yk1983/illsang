/**
 * 
 */

'use strict';

var grid = function() {
	var initTable = function() {
		var obj = {},
			table = $('#tbl-program-lst');
		
		table.DataTable($.extend(obj, gDataTableDefs, {
			deferRender: true,
			scrollY: '85vh',
			scrollCollapse: true,
			scroller: true,
			ajax: {
				url: '/manage/program/manager/list'
			},
			columns: [
                { data: 'RecordID' },
                { data: 'Code' },
                { data: 'Name' },
                { data: 'Url' },
                { data: 'Crs' },
                { data: 'Icon' },
                { data: 'UseYn' },
                { data: 'ManagerYn' },
                { data: 'NewBtnUseYn' },
                { data: 'SavBtnUseYn' },
                { data: 'DelBtnUseYn' },
                { data: 'PrtBtnUseYn' },
                { data: 'XlsUpldBtnUseYn' },
                { data: 'XlsDnldBtnUseYn' },
                { data: 'Etc1BtnUseYn' },
                { data: 'Etc2BtnUseYn' },
                { data: 'Etc3BtnUseYn' },
                { data: 'Etc4BtnUseYn' },
                { data: 'Etc5BtnUseYn' },
                { data: 'Etc1BtnName' },
                { data: 'Etc2BtnName' },
                { data: 'Etc3BtnName' },
                { data: 'Etc4BtnName' },
                { data: 'Etc5BtnName' },
                { data: 'Actions' }
            ],
            columnDefs: [
            	{ targets: [0,1], width: '70px' },
            	{
            		targets: [6,7,8,9,10,11,12,13,14,15,16,17,18],
            		width: '80px',
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
            		targets: [5,19,20,21,22,23],
            		defaultContent: ''
            	},
            	{
					targets: -1,
					responsivePriority: -1,
					title: 'Actions',
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
	};
	
	return {
		init: function() {
			initTable();
		}
	};
}();

$(document).ready(function() {
	grid.init();
});