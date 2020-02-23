package illsang.manage.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import illsang.common.resolver.ParamCollector;
import illsang.manage.service.CalendarService;

/**
 * @Description 로스팅일정 관리
 * @package illsang.manage.controller
 * @Class   CalendarController.java
 * @author 	yongkim
 * @since	2020.01.22
 * @version 0.1
 * @see
 *
 * ***** Modification Information *****
 *
 * 수정일        수정자          수정내용
 * ----------- -------------- ------------------------
 * 2020.01.22  yongkim  최초생성
 * ------------- ---------------- ------------------------
 * Copyright (C) by KINCO All right reserved.
 */
@RestController
@RequestMapping(value = "/manage/magazine/rosting")
public class CalendarController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private CalendarService service;
	
	/**
	 * @description 로스팅일정 관리 페이지 호출
	 * @params 
	 * @return ModelAndView
	 * @throws Exception
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() throws Exception {
		ModelAndView mav = new ModelAndView("manage/mgz/mgzcal01m");
		// 현재시각
		long time = System.currentTimeMillis();
		mav.addObject("timestamp", time);
		return mav;
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView selectRoastingScheduleList(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getRoastingScheduleList(collector.getMap());
		
		mav.addObject("events", list);
		return mav;
	}
}
