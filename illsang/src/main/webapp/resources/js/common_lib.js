/**
 * =========================================================
 * Cafe iLLSang
 * =========================================================
 * Program History
 * Date           Name          Description
 * ----------     ----------    ----------------------------
 * 2020.01.02                   최초작성
 * =========================================================
 */
var gDataTableDefs = {
	// read more: https://datatables.net/examples/basic_init/dom.html
	// Pagination settings
	// dom: '<"row"<"col-sm-12"tr>><"row"<"col-sm-12 col-md-5"i><"col-sm-12 col-md-7 dataTables_pager"lp>>',
	dom: '<"row"<"col-sm-6 text-left"f><"col-sm-6 text-right"B>><"row"<"col-sm-12"tr>><"row"<"col-sm-12 col-md-5"i><"col-sm-12 col-md-7 dataTables_pager"lp>>',
	
	pageLength: 10,
	lengthMenu: [5, 10, 25, 50],
	
	language: {
		decimal : ',',
		emptyTable : '데이터가 없습니다.',
		info : '_START_ - _END_ (총 _TOTAL_ 건)',
		infoEmpty : '0 건',
		infoFiltered : '(전체 _MAX_ 건 중 검색결과)',
		infoPostFix : '',
		thousands : ',',
		lengthMenu : '_MENU_ 건씩 보기',
		loadingRecords : '로딩중...',
		processing : '처리중...',
		search : '검색 : ',
		zeroRecords : '검색된 데이터가 없습니다.',
		paginate : {
			first : '처음',
			last : '마지막',
			next : '다음',
			previous : '이전'
	    },
	    aria : {
	    	sortAscending : ' :  오름차순 정렬',
	    	sortDescending : ' :  내림차순 정렬'
	    }
	},
	
	responsive: true,
	
	searchDelay: 500,
    processing: true,
    serverSide: false,
    
    select: {
        style: 'single'
    },
    
    buttons: [
		'print',
		'copyHtml5',
		'excelHtml5',
		'csvHtml5',
		'pdfHtml5'
	],
};

/**
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
		if (gfn_isEmpty(url)) return;
		
		var gfnCallback = {
			done: function() {
				if (data.code == '0') {
					swal.fire('정상처리!', '요청된 데이터가 정상 처리되었습니다!', 'success');
				}
				else {
					swal.fire("처리중 오류!", "요청된 데이터를 처리중 오류가 발생하였습니다!", "error");
				}
			},
			fail: function() {
				swal.fire("Ajax 오류!", "Ajax 오류 발생! 관리자에 문의하세요.", "error");
			}
		}
		if (gfn_isEmpty(callback)) {
			callback = gfnCallback;
		}
		else {
			if (gfn_isEmpty(callback.done)) { callback.done = gfnCallback.done; }
			if (gfn_isEmpty(callback.fail)) { callback.fail = gfnCallback.fail; }
		}
		
		var type = type || 'get';
		$.ajax({
			url: url,
			type: type,
			data: (type === 'get') ? params : JSON.stringify(params) || {},
			async: async || false,
			dataType: 'json',
			contentType: 'application/json; charset=UTF-8',
			beforeSend: function(xhr, settings) {
    			console.log('ajax beforeSend');
    			/* show spindle */
                xhr.setRequestHeader("Accept", "application/json; charset=UTF-8");
                xhr.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
                xhr.setRequestHeader("Access-Control-Allow-Origin", "*");
                xhr.setRequestHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
    		},
    		complete: function(xhr, status) {
    			console.log('ajax complete');
    			/* hidden spindle */
    		}
		})
		.done(callback.done)
		.fail(callback.fail)
		.always(function(xhr, status) {
			console.log('요청이 완료되었습니다!');
		});
	};
})(jQuery);

$(document).ready(function() {
	
	// 네비게이션 메뉴 생성
	gfn_create_navigation(); 
	
    $().ready(function() {
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
            if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                $('.fixed-plugin .dropdown').addClass('open');
            }

        }

        $('.fixed-plugin a').click(function(event) {
            // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
            if ($(this).hasClass('switch-trigger')) {
                if (event.stopPropagation) {
                    event.stopPropagation();
                } else if (window.event) {
                    window.event.cancelBubble = true;
                }
            }
        });

        $('.fixed-plugin .active-color span').click(function() {
            $full_page_background = $('.full-page-background');

            $(this).siblings().removeClass('active');
            $(this).addClass('active');

            var new_color = $(this).data('color');

            if ($sidebar.length != 0) {
                $sidebar.attr('data-color', new_color);
            }

            if ($full_page.length != 0) {
                $full_page.attr('filter-color', new_color);
            }

            if ($sidebar_responsive.length != 0) {
                $sidebar_responsive.attr('data-color', new_color);
            }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
            $(this).siblings().removeClass('active');
            $(this).addClass('active');

            var new_color = $(this).data('background-color');

            if ($sidebar.length != 0) {
                $sidebar.attr('data-background-color', new_color);
            }
        });

        $('.fixed-plugin .img-holder').click(function() {
            $full_page_background = $('.full-page-background');

            $(this).parent('li').siblings().removeClass('active');
            $(this).parent('li').addClass('active');


            var new_image = $(this).find('img').attr('src');

            if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                $sidebar_img_container.fadeOut('fast', function() {
                    $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                    $sidebar_img_container.fadeIn('fast');
                });
            }

            if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                $full_page_background.fadeOut('fast', function() {
                    $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                    $full_page_background.fadeIn('fast');
                });
            }

            if ($('.switch-sidebar-image input:checked').length == 0) {
                var new_image = $('.fixed-plugin li.active .img-holder').find('img').attr('src');
                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
            }

            if ($sidebar_responsive.length != 0) {
                $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
            }
        });

        $('.switch-sidebar-image input').change(function() {
            $full_page_background = $('.full-page-background');

            $input = $(this);

            if ($input.is(':checked')) {
                if ($sidebar_img_container.length != 0) {
                    $sidebar_img_container.fadeIn('fast');
                    $sidebar.attr('data-image', '#');
                }

                if ($full_page_background.length != 0) {
                    $full_page_background.fadeIn('fast');
                    $full_page.attr('data-image', '#');
                }

                background_image = true;
            } else {
                if ($sidebar_img_container.length != 0) {
                    $sidebar.removeAttr('data-image');
                    $sidebar_img_container.fadeOut('fast');
                }

                if ($full_page_background.length != 0) {
                    $full_page.removeAttr('data-image', '#');
                    $full_page_background.fadeOut('fast');
                }

                background_image = false;
            }
        });

        $('.switch-sidebar-mini input').change(function() {
            $body = $('body');

            $input = $(this);

            if (md.misc.sidebar_mini_active == true) {
                $('body').removeClass('sidebar-mini');
                md.misc.sidebar_mini_active = false;

                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

            } else {

                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                setTimeout(function() {
                    $('body').addClass('sidebar-mini');

                    md.misc.sidebar_mini_active = true;
                }, 300);
            }

            // we simulate the window Resize so the charts will get updated in realtime.
            var simulateWindowResize = setInterval(function() {
                window.dispatchEvent(new Event('resize'));
            }, 180);

            // we stop the simulation of Window Resize after the animations are completed
            setTimeout(function() {
                clearInterval(simulateWindowResize);
            }, 1000);

        });
    });
});

function gfn_create_navigation() {
	var store = localStorage.getItem('gdsNavigation'),
		data = JSON.parse(store),
		target = $('#kt_aside_menu_wrapper > #kt_aside_menu > ul');
	target.empty();
	
	// section
	var tag = {};
	tag.li = Exp.createElement('li', {'class' : 'kt-menu__section'}, target[0]);
	Exp.createElement('h4', {'class' : 'kt-menu__section-text'}, tag.li).innerText = data.first_node_name;
	Exp.createElement('i', {'class' : 'kt-menu__section-icon flaticon-more-v2'}, tag.li);
	
	data.items.forEach(function(data, i, arr) {
		var li = Exp.createElement('li', {
			'class' : 'kt-menu__item  kt-menu__item--submenu',
			'aria-haspopup' : 'true',
			'data-ktmenu-submenu-toggle' : 'hover'
		}, this.target);
		
		var a = Exp.createElement('a', {
			'class' : 'kt-menu__link kt-menu__toggle',
			'href' : 'javacript:;'
		}, li);
		Exp.createElement('i', {'class' : 'kt-menu__link-icon ' + data.second_node_icon}, a);
		Exp.createElement('span', {'class' : 'kt-menu__link-text'}, a).innerText = data.second_node_name;
		Exp.createElement('i', {'class' : 'kt-menu__ver-arrow la la-angle-right'}, a);
		
		var div = Exp.createElement('div', {'class' : 'kt-menu__submenu'}, li);
		Exp.createElement('span', {'class' : 'kt-menu__arrow'}, div);
		var ul = Exp.createElement('ul', {'class' : 'kt-menu__subnav'}, div);
		li = Exp.createElement('li', {
			'class' : 'kt-menu__item kt-menu__item--parent',
			'aria-haspopup' : 'true'
		}, ul);
		var span = Exp.createElement('span', {'class' : 'kt-menu__link'}, li);
		Exp.createElement('span', {'class' : 'kt-menu__link-text'}, span).innerText = data.second_node_name;
		
		data.items.forEach(function(data, i, arr) {
			var li = Exp.createElement('li', {
				'class' : 'kt-menu__item kt-menu__item--submenu',
				'aria-haspopup' : 'true',
				'data-ktmenu-submenu-toggle' : 'hover'
			}, this.target);
			
			var a = Exp.createElement('a', {
				'class' : 'kt-menu__link kt-menu__toggle',
				'href' : 'javascript:;'
			}, li);
			
			var i = Exp.createElement('i', {'class' : 'kt-menu__link-bullet kt-menu__link-bullet--line'}, a);
			Exp.createElement('span', {}, i);
			Exp.createElement('span', {'class' : 'kt-menu__link-text'}, a).innerText = data.third_node_name;
			Exp.createElement('i', {'class' : 'kt-menu__ver-arrow la la-angle-right'}, a);
			
			var div = Exp.createElement('div', {'class' : 'kt-menu__submenu'}, li);
			Exp.createElement('span', {'class' : 'kt-menu__arrow'}, div);
			var ul = Exp.createElement('ul', {'class' : 'kt-menu__subnav'}, div);
			li = Exp.createElement('li', {
				'class' : 'kt-menu__item  kt-menu__item--parent',
				'aria-haspopup' : 'true'
			}, ul);
			
			var span = Exp.createElement('span', {'class' : 'kt-menu__link'}, li);
			Exp.createElement('span', {'class' : 'kt-menu__link-text'}, span).innerText = data.third_node_name;
			
			data.items.forEach(function(data, i, arr) {
				var li = Exp.createElement('li', {
					'class' : 'kt-menu__item',
					'aria-haspopup' : 'true'
				}, ul);
				
				var a = Exp.createElement('a', {
					'class' : 'kt-menu__link',
					'href' : data.pgm_url
				}, li);
				var i = Exp.createElement('i', {'class' : 'kt-menu__link-bullet kt-menu__link-bullet--dot'}, a);
				Exp.createElement('span', {}, i);
				Exp.createElement('span', {'class' : 'kt-menu__link-text'}, a).innerText = data.pgm_nm;
			});
		}, {
			target : ul
		});
	}, {
		target : target[0]
	});
}

function gfn_setCommCd(modul, code, dtlCoed) {
	console.log(JSON.parse(localStorage.getItem('gdsCommCd')));
}

function gfn_getCommCd(params) {
	$.fn.trans('/common/code', null, params,
		{
			done: function(data) {
				localStorage.removeItem('gdsCommCd');
				localStorage.setItem('gdsCommCd', JSON.stringify(data));
			}
		}
	);
}

function gfn_consoleLog() {
	if (true) console.log(arguments);
}

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
