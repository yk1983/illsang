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
import illsang.manage.em.Code;
import illsang.manage.service.ProductService;

/**
 * @Description 취급상품(생두)관리
 * @package illsang.manage.controller
 * @Class   GreenBeansProductController.java
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
@RequestMapping(value = "/manage/beans/product")
public class BeansProductController {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	
	@Autowired
	private ProductService service;
	@Autowired
	private CommonService common;
	
	/**
	 * @description 취급상품관리 페이지 호출
	 * @params 
	 * @return ModelAndView
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("manage/sys/syscom02m");
		// 공통코드 조회
		String[] aryCode = {"MS001", "MS002", "MS003", "MS004", "MS005"};
		List<Map<String, Object>> gdsCommCode = common.getCommonCode("MS", aryCode);
		mav.addObject("gdsCommCd", gdsCommCode);
		return mav;
	}
	
	/**
	 * @description 취급상품관리 품목정보 생성
	 * @params ParamCollector
	 * @return ModelAndView
	 * @throws
	 */
	@SuppressWarnings("finally")
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView create(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			collector.getMap().put("gvUsrId", "ILS2002001"); // test usr
			service.createBeansProductInfo(collector.getMap());
			
			res.put("code", Code.SUCCESS.getCode());
			res.put("message", Code.SUCCESS.getDesc());
		} catch (Exception e) {
			res.put("code", Code.FAIL.getCode());
			res.put("message", e.getMessage());
		} finally {
			mav.addObject("rslt", res);
			return mav;
		}
	}

	/**
	 * @description 취급상품관리 품목정보 수정
	 * @params ParamCollector
	 * @return ModelAndView
	 * @throws
	 */
	@SuppressWarnings("finally")
	@RequestMapping(method = RequestMethod.PUT)
	public ModelAndView update(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			collector.getMap().put("gvUsrId", "ILS2002001"); // test usr
			service.updateBeansProductInfo(collector.getMap());
			
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
	 * @description 취급상품관리 목록 조회
	 * @params ParamCollector
	 * @return ModelAndView
	 * @throws 
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView select(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getBeansProductList(collector.getMap());
		mav.addObject("iTotalRecords", list.size());
		mav.addObject("iTotalDisplayRecords", list.size());
		mav.addObject("sEcho", 0);
		mav.addObject("sColumns", "");
		mav.addObject("aaData", list);
		return mav;
	}
	
	/**
	 * @description 취급상품관리 상세정보 조회
	 * @params ParamCollector
	 * @return ModelAndView
	 * @throws
	 */
	@RequestMapping(value = "/find", method = RequestMethod.GET)
	public ModelAndView find(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> map = service.findByBeansProduct(collector.getMap());
		mav.addObject("data", map);
		return mav;
	}

}