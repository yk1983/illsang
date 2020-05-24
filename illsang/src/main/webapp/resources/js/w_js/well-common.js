/**
 * common js
 * JavaScript 메소드 확장
 */
var Exp = Exp || {};
(function(){
	'use strict';
	
	/**
     * DOMScript의 document.createElement와 setAttribute를 하나의 메소드로 구현
     * @param  {String}  tagName 	생성될 태그 문자열 
     * @param  {Object}  oAttr 		생성된 태그의 속성
     * @param  {Element} oTarget 	생성할 태그가 삽입될 element
     * @return {Element} aChild
     */
	Exp.createElement = function(tagName, attr, target) {
		var obj = document.createElement(tagName);
		if (!$.isEmptyObject(attr)) {
			for (var key in attr) {
				obj.setAttribute(key, attr[key]);
			}
		}
		if (target) {
			target.appendChild(obj);
		}
		return obj;
	};
}());

(function($) {
	var validations = {
		email: [
			/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/
		, 	'올바른 이메일 양식으로 작성하세요.'
		]
	};
	
	$.fn.isEmpty = function() {
		console.log(gfn_isEmpty);
	};
	
	$.fn.initForm = function() {
		this.each(function() {
			this.reset();
		});
	};
	
	$.fn.getFormData = function(field) {
		return this.serializeObject();
	};
	
	$.fn.setFormData = function(data) {
		for (var key in data) {
			var field = this.find('[name="' + key + '"]');
			if (!gfn_isEmpty(field) && field.length > 0) {
				var tag = field[0].tagName.toLowerCase();
				if (tag === 'input') {
					var type = field[0].type.toLowerCase();
					if (type === 'text' || type === 'number' || type === 'hidden') {
						field.val(data[key]);
					}
					else if (type === 'radio') {
						field.filter('[value="' + data[key] + '"]').prop('checked', 'checked');
					}
				}
				else if (tag === 'select') {
					field.val(data[key]).prop('selected', 'selected');
				}
			}
		}
		$('.kt_selectpicker').selectpicker('refresh');
	};
	/**
	 * FORM의 INPUT타입 'hidden', 'checkbox', 'radio'는 'reset'버튼으로 초기화 되지 않으므로 메소드를 제공한다.
	 */
	$.fn.clearForm = function() {
		return this.each(function() {
			var type = this.type,
				tag = this.tagName.toLowerCase(),
				elmt = gfn_nvl(type, tag),
				obj = {
					edit: [
						'color', 'date', 'datetime', 'datetime-local', 'email'
					,	'file', 'hidden', 'month', 'number', 'password'
					,	'range', 'search', 'tel', 'text', 'time'
					,	'url', 'week'
					,	'textarea'
					],
					choice: [
						'checkbox', 'radio'
					]
				};
			
			console.log('type', type);
			console.log('tag', tag);
			
			if 		(elmt === 'form') return $(':input', this).clearForm();
			if 		(obj.edit.indexOf(elmt) !== -1) this.value = '';
			else if (obj.choice.indexOf(elmt) !== -1) this.checked = false;
			else if (elmt === 'select') this.selectedIdx = -1;
			else if (elmt === 'select-one') this.selectedIdx = -1;
		});
	};
	
	HTMLFormElement.prototype.clearForm = function() {
		$(this).find(':input').not(':button, :submit, :reset, :checkbox, :radio').val('');
		$(this).find(':checkbox, :radio').prop('checked', false);
	}
	/**
	 * form data serialize (직렬화)
	 * $(form).serializeObject();
	 */
	$.fn.serializeObject = function() {
		'use strict';
		var result = {},
			extend = function(i, element) {
			var node = result[element.name];

			if ('undefined' !== typeof node && node !== null) {
				if ($.isArray(node)) {
					console.log(element.value);
					node.push(element.value);
				} else {
					result[element.name] = [node, element.value];
				}
			} else {
				result[element.name] = element.value;
			}
		};
		$.each(this.serializeArray(), extend);
		return result;
	};
	
	$.fn.trans = function(url, type, params, callback, async) {
		// console.log('$.fn.trans', this);
//		if (gfn_isEmpty(url)) return;
//		
//		var gfnCallback = {
//			done: function() {
//				if (data.code == '0') {
//					swal.fire('정상처리!', '요청된 데이터가 정상 처리되었습니다!', 'success');
//				}
//				else {
//					swal.fire("처리중 오류!", "요청된 데이터를 처리중 오류가 발생하였습니다!", "error");
//				}
//			},
//			fail: function() {
//				swal.fire("Ajax 오류!", "Ajax 오류 발생! 관리자에 문의하세요.", "error");
//			}
//		}
//		if (gfn_isEmpty(callback)) {
//			callback = gfnCallback;
//		}
//		else {
//			if (gfn_isEmpty(callback.done)) { callback.done = gfnCallback.done; }
//			if (gfn_isEmpty(callback.fail)) { callback.fail = gfnCallback.fail; }
//		}
//		
//		var type = type || 'get';
//		$.ajax({
//			url: url,
//			type: type,
//			data: (type === 'get') ? params : JSON.stringify(params) || {},
//			async: async || false,
//			dataType: 'json',
//			contentType: 'application/json; charset=UTF-8',
//			beforeSend: function(xhr, settings) {
//    			console.log('ajax beforeSend');
//    			/* show spindle */
//                xhr.setRequestHeader("Accept", "application/json; charset=UTF-8");
//                xhr.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
//                xhr.setRequestHeader("Access-Control-Allow-Origin", "*");
//                xhr.setRequestHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
//    		},
//    		complete: function(xhr, status) {
//    			console.log('ajax complete');
//    			/* hidden spindle */
//    		}
//		})
//		.done(callback.done)
//		.fail(callback.fail)
//		.always(function(xhr, status) {
//			console.log('요청이 완료되었습니다!');
//		});
	};
})(jQuery);

/**
 * 문자열이 빈 문자열인지 체크하여 결과값을 리턴한다.
 * @param str       : 체크할 문자열
 */
function gfn_isEmpty(str) {
    return (typeof str == 'undefined' || str == null || str == '') ? true : false;
}
 
/**
 * 문자열이 빈 문자열인지 체크하여 기본 문자열로 리턴한다.
 * @param str           : 체크할 문자열
 * @param defaultStr    : 문자열이 비어있을경우 리턴할 기본 문자열
 */
function gfn_nvl(str, defs) {
    return (gfn_isEmpty(str)) ? defs : str;
}