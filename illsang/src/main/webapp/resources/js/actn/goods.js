/**
 * 상품마스터 스크립트
 */

$(document).ready(function() {
    $('#tbl-gods').DataTable({
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
        	url: '/sr-admin/goods/list',
        	data : function() {
        		return $('#frm-srch-cond').serializeObject();
        	}
        },
        columnDefs : [
        	{width : '100px', targets : [2,3,4,5,6,7]},
        	{className : 'text-right', targets : [-1]}
        ],
        columns : [
        	{data : 'row_no'},
        	{data : 'goods_name'},
        	{data : 'grade_name'},
        	{
        		data : 'process_name',
        		defaultContent : ''
        	},
        	{data : 'taste_name'},
        	{
        		data : 'base_price',
        		render : $.fn.dataTable.render.number(',', '.', 0, '')
        	},
        	{data : 'use_name'},
        	{
        		data : 'use_yn',
        		render : function(data, type, row, meta) {
        			var tpl = '<a href="#" class="btn btn-link btn-warning btn-just-icon edit"><i class="material-icons">edit</i></a>'
        					+ '<a href="#" class="btn btn-link btn-danger btn-just-icon delete"><i class="material-icons">delete</i></a>';
        			return tpl; 
        	    }
        	}
        ]
    });

    var table = $('#tbl-gods').DataTable();

    // Edit record
    table.on('click', '.edit', function() {
        $tr = $(this).closest('tr');
    	var data = table.row($tr).data();
    	console.log('You press on Row ', data);
  	});

  	// Delete a record
    table.on('click', '.remove', function(e) {
        $tr = $(this).closest('tr');
    	table.row($tr).remove().draw();
    	e.preventDefault();
  	});
    
    // Search
    $('#btn-search').on('click', function(){
    	table.ajax.reload(function(json) {
    	    // $('#myInput').val( json.lastInput );
    		console.log(json);
    	});
//    	$.ajax({
//    		contentType: 'application/json; charset=utf-8',
//    		method : 'get',
//    		data : $('form').serializeObject(),
//    		type : 'json',
//	  		url: '/sr-admin/gds-mst/lst',
//	  		context: document.body
//		}).done(function(data){
//			table.ajax.reload();
//		}).fail(function(xhr, data, status){
//			alert('GetPermissions ' + xhr.statusText + ' ' + xhr.responseText + ' ' + xhr.status);
//		});
    });
});