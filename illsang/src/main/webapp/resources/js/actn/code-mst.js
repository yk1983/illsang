/**
 * 공통코드 스크립트
 */

$(document).ready(function() {
    $('#tbl-code-mst').DataTable({
    	pagingType : 'full_numbers',
    	lengthMenu : [
            [10, 25, 50, -1],
            [10, 25, 50, 'All']
        ],
        scrollY : '300px',
        scrollCollapse : true,
        scrollX : true,
        responsive : false,
        language : {
        	url : '//cdn.datatables.net/plug-ins/1.10.20/i18n/Korean.json'
        },
        ajax : {
        	type : 'get',
        	dataType : 'json',
        	dataSrc : 'ds_data',
        	url: '/sr-admin/code/lst',
        	data : function() {
        		return $('#frm-srch-cond').serializeObject();
        	}
        },
        columnDefs : [
        	{width : '50px', targets : [0,14]},
        	{width : '100px', targets : [1,3,4,5,6,7,8,9,10,11,12,13]},
        	{width : '200px', targets : 2},
        	{width : '150px', className : 'text-right', targets : [-1]},
        	{searchable : false, orderable : false, targets : [-1,-2], "visible": true }
        ],
        fixedColumns : {
        	leftColumns : 4,
        	rightColumns : 1
        },
        columns : [
        	{data : 'row_no'},
        	{data : 'code'},
        	{data : 'name'},
        	{data : 'remark' , defaultContent : ''},
        	{data : 'attr_1' , defaultContent : ''},
        	{data : 'attr_2' , defaultContent : ''},
        	{data : 'attr_3' , defaultContent : ''},
        	{data : 'attr_4' , defaultContent : ''},
        	{data : 'attr_5' , defaultContent : ''},
        	{data : 'attr_6' , defaultContent : ''},
        	{data : 'attr_7' , defaultContent : ''},
        	{data : 'attr_8' , defaultContent : ''},
        	{data : 'attr_9' , defaultContent : ''},
        	{data : 'attr_10', defaultContent : ''},
        	{data : 'use_yn'},
        	{
        		data : 'etc',
        		render : function(data, type, row, meta) {
        			var tpl = '<a href="#" class="btn btn-link btn-info btn-just-icon view"><i class="material-icons">dvr</i></a>'
        					+ '<a href="#" class="btn btn-link btn-warning btn-just-icon edit"><i class="material-icons">edit</i></a>'
        					+ '<a href="#" class="btn btn-link btn-danger btn-just-icon delete"><i class="material-icons">delete</i></a>';
        			return tpl; 
        	    }
        	}
        ]
    });
    
    $('#tbl-code-dtl').DataTable({
    	pagingType : 'full_numbers',
    	lengthMenu : [
            [10, 25, 50, -1],
            [10, 25, 50, 'All']
        ],
        responsive : true,
        language : {
        	url : '//cdn.datatables.net/plug-ins/1.10.20/i18n/Korean.json'
        },
        ajax : {
        	type : 'get',
        	dataType : 'json',
        	dataSrc : 'ds_data',
        	url: '/sr-admin/code/lst/dtl',
        	data : function() {
        		return $('#frm-srch-cond').serializeObject();
        	}
        },
        columnDefs : [
        	{width : '50px', targets : [0,14,15]},
        	{width : '100px', targets : [1,3,4,5,6,7,8,9,10,11,12,13]},
        	{width : '200px', targets : 2},
        	{width : '150px', className : 'text-right', targets : [-1]}
        ],
        fixedColumns : {
        	rightColumns : 1
        },
        columns : [
        	{data : 'row_no'},
        	{data : 'dtl_code'},
        	{data : 'dtl_name'},
        	{data : 'remark', defaultContent : ''},
        	{data : 'val_1' , defaultContent : ''},
        	{data : 'val_2' , defaultContent : ''},
        	{data : 'val_3' , defaultContent : ''},
        	{data : 'val_4' , defaultContent : ''},
        	{data : 'val_5' , defaultContent : ''},
        	{data : 'val_6' , defaultContent : ''},
        	{data : 'val_7' , defaultContent : ''},
        	{data : 'val_8' , defaultContent : ''},
        	{data : 'val_9' , defaultContent : ''},
        	{data : 'val_10', defaultContent : ''},
        	{data : 'use_yn'},
        	{data : 'sort_no'},
        	{
        		data : 'etc',
        		render : function(data, type, row, meta) {
        			var tpl = '<a href="#" class="btn btn-link btn-warning btn-just-icon edit"><i class="material-icons">edit</i></a>'
        					+ '<a href="#" class="btn btn-link btn-danger btn-just-icon delete"><i class="material-icons">delete</i></a>';
        			return tpl; 
        	    }
        	}
        ]
    });
    
    var mst = $('#tbl-code-mst').DataTable(),
    	dtl = $('#tbl-code-dtl').DataTable();
});