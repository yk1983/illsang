package illsang.manage.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import illsang.common.resolver.ParamCollector;
import illsang.common.service.CommonService;
import illsang.manage.service.MenuCategoryService;

/**
 * @Description 
 * @package illsang.manage.controller
 * @Class   MenuCategoryController.java
 * @author 	yongkim
 * @since	2020.01.21
 * @version 0.1
 * @see
 *
 * ***** Modification Information *****
 *
 * 수정일        수정자          수정내용
 * ----------- -------------- ------------------------
 * 2020.01.21  yongkim  최초생성
 * ------------- ---------------- ------------------------
 * Copyright (C) by KINCO All right reserved.
 */
@RestController
@RequestMapping(value = "/manage/category")
public class MenuCtgrController {

//	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private CommonService common;
	@Autowired
	private MenuCategoryService service;
	
	/**
	 * @description 메뉴 카테고리 관리 페이지 호출
	 * @params 
	 * @return ModelAndView
	 * @throws Exception
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() throws Exception {
		ModelAndView mav = new ModelAndView("manage/menu/category");
		
		// 현재시각
		long time = System.currentTimeMillis();
		
		mav.addObject("timestamp", time);
		return mav;
	}
	
	/**
	 * @description 메뉴 카테고리 공통코드 조회
	 * @params ParamCollector
	 * @return ModelAndView
	 * @throws Exception
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView selectMenuCategoryList(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getMenuCategoryList(collector.getMap());
		mav.addObject("iTotalRecords", list.size());
		mav.addObject("iTotalDisplayRecords", list.size());
		mav.addObject("sEcho", 0);
		mav.addObject("sColumns", "");
		mav.addObject("aaData", list);
		return mav;
	}
}
