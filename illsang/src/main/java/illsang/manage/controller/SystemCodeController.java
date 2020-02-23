package illsang.manage.controller;

import java.util.HashMap;
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
import illsang.common.service.CommonService;
import illsang.manage.service.CommonCodeService;

/**
 * 
 * @Description 시스템 공통코드
 * @package illsang.manage.controller
 * @Class   CommonCodeController.java
 * @author 	yongkim
 * @since	2020.01.18
 * @version 0.1
 * @see
 *
 * ***** Modification Information *****
 *
 * 수정일        수정자          수정내용
 * ----------- -------------- ------------------------
 * 2020.01.18  yongkim  최초생성
 * ------------- ---------------- ------------------------
 * Copyright (C) by KINCO All right reserved.
 */
@RestController
@RequestMapping(value = "/manage/system/code")
public class SystemCodeController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private CommonCodeService service;
	
	@Autowired
	private CommonService common;
	
	/**
	 * @description (관리자) 시스템코드(그룹코드) 페이지를 호출
	 * @params 
	 * @return ModelAndView
	 * @throws 
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("manage/sys/syscom01m");
		// 공통코드 조회
		String[] aryCode = {"SY001"};
		List<Map<String, Object>> gdsCommCode = common.getCommonCode("SY", aryCode);
		mav.addObject("gdsCommCd", gdsCommCode);
		return mav;
	}
	
	/**
	 * @description (관리자) 시스템코드(그룹코드) 신규등록
	 * @params ParamCollector
	 * @return ModelAndView
	 * @throws
	 */
	@SuppressWarnings("finally")
	@RequestMapping(value = "/master/save", method = RequestMethod.POST)
	public ModelAndView createMaster(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			service.createSystemCodeMaster(collector.getMap());
			res.put("code", 0);
			res.put("message", "success");
		} catch (Exception e) {
			res.put("code", -1);
			res.put("message", e.getMessage());
		} finally {
			mav.addObject("rslt", res);
			return mav;
		}
	}
	
	/**
	 * @description (관리자) 시스템코드(그룹코드) 수정
	 * @params ParamCollector
	 * @return ModelAndView
	 * @throws Exception
	 */
	@SuppressWarnings("finally")
	@RequestMapping(value = "/master/save", method = RequestMethod.PUT)
	public ModelAndView updateMaster(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			service.updateSystemCodeMaster(collector.getMap());
			res.put("code", 0);
			res.put("message", "success");
		} catch (Exception e) {
			res.put("code", -1);
			res.put("message", e.getMessage());
		} finally {
			mav.addObject("rslt", res);
			return mav;
		}
	}
	
	@SuppressWarnings("finally")
	@RequestMapping(value = "/detail/save", method = RequestMethod.POST)
	public ModelAndView createDetail(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			service.createSystemCodeDetail(collector.getMap());
			res.put("code", 0);
			res.put("message", "success");
		} catch (Exception e) {
			res.put("code", -1);
			res.put("message", e.getMessage());
		} finally {
			mav.addObject("rslt", res);
			return mav;
		}
	}
	
	@SuppressWarnings("finally")
	@RequestMapping(value = "/detail/save", method = RequestMethod.PUT)
	public ModelAndView updateDetail(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			service.updateSystemCodeDetail(collector.getMap());
			res.put("code", 0);
			res.put("message", "success");
		} catch (Exception e) {
			res.put("code", -1);
			res.put("message", e.getMessage());
		} finally {
			mav.addObject("rslt", res);
			return mav;
		}
	}
	
	/**
	 * @description (관리자) 시스템 공통코드 리스트 조회
	 * @params ParamCollector
	 * @return ModelAndView
	 * @throws 
	 */
	@RequestMapping(value = "/master", method = RequestMethod.GET)
	public ModelAndView selectCommonCodeList(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getCommonCodeList(collector.getMap());
		mav.addObject("iTotalRecords", list.size());
		mav.addObject("iTotalDisplayRecords", list.size());
		mav.addObject("sEcho", 0);
		mav.addObject("sColumns", "");
		mav.addObject("aaData", list);
		return mav;
	}
	
	/**
	 * @description (관리자) 시스템 공통코드 상세 리스트 조회
	 * @params ParamCollector
	 * @return ModelAndView
	 * @throws 
	 */
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView selectCommonCodeDetailList(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getCommonCodeDetailList(collector.getMap());
		mav.addObject("iTotalRecords", list.size());
		mav.addObject("iTotalDisplayRecords", list.size());
		mav.addObject("aaData", list);
		return mav;
	}
}
