/**
 * 페이징처리 
 */
String.prototype.format = function() {
	var a = this;
	for(k in arguments) {
		a = a.replace("(" + k + ")", arguments[k]);
	}
}

var paging = function(totalCnt, dataSize, pageSize, pageNo, token) {
	var totalCnt = parseInt(totalCnt);
	var dataSize = parseInt(dataSize);
	var pageSize = parseInt(pageSize);
	var pageNo = parseInt(pageNo);
	var html = [];
	
	if(totalCnt == 0) return '';
	
	//page count
	var pageCnt = (totalCnt % dataSize == 0) ? parseInt(totalCnt/dataSize) : parseInt(totalCnt/dataSize) + 1;
	
	//page group count
	var pGCnt = (pageNo % pageSize == 0) ? parseInt(pageNo/pageSize) - 1 : parseInt(pageNo/pageSize);
	
	//previous
	if(pageNo > pageSize) {
		var str = '<li class="page-item"><a class="page-link" href="javascript:goPaging_{0}(\'{1}\')">이전</a></li>';
		html.push(str.format(token, (pageNo % pageSize == 0) ? pageNo - pageSize : pageNo - pageNo % pageSize));
	}
	
	var startPaging = pGCnt * pageSize + 1;
	var lastNumber = (pGCnt + 1) * pageSize + 1;
	var lastPaging = lastNumber < pageCnt ? lastNumber : pageCnt + 1;
	
	//page info
	if(totalCnt > 0) {
		var info = '총 ' + totalCnt + '건 | ' +  pageNo + '/' +  pageCnt + '페이지';
		$('#page-info').text(info);
	}
	
	//paging bar
	for(var i = startPaging; i < lastPaging; i++) {
		html.push('<li class="page-item');
		html.push((i == pageNo) ? ' active' : '');
		html.push('"><a class="page-link" href=javascript:goPaging_' + token + '("')
		html.push(i);
		html.push('");>');
		html.push(i);
		html.push('</a></li>');
	}
	
	//next
	if(pageCnt > (pGCnt + 1) * pageSize) {
		html.push('<li class="page-item"><a class="page-link" href="javascript:goPaging_' + token + '("');
		html.push((pGCnt + 1) * pageSize + 1);
		html.push('");>');
		html.push('다음');
		html.push('</a></li>');
	}
	
	return html.join('');
}