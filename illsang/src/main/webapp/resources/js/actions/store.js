/**
 * 
 */

'use strict';

$(document).ready(function() {
	$('#btn-reset').on('click', function() {
		$('#frm-stor-info').initForm();
	});
	
	$('#btn-save').on('click', function() {
		fnSave();
	});
});

var fnSearch = function() {
	$.ajax({
		url : '/manage/store/info/get',
		type : 'get',
		dataType : 'json'
	}).done(function(data) {
		console.log('success', data);
	}).fail(function(data) {
		console.log('fail');
	});
}

var fnSave = function() {
	$.ajax({
		url : '/manage/store/info/save',
		type : 'post',
		dataType : 'json',
		data : $('#frm-stor-info').serialize()
	}).done(function(data) {
		console.log('success', data);
	}).fail(function(data) {
		console.log('fail');
	});
}

var fnDelete = function() {
	
}