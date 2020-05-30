package illsang.wellstone.controller;

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
import illsang.wellstone.service.WellMgmtMenuService;
import illsang.wellstone.service.WellProductService;

@RestController
@RequestMapping(value = "/wellstone")
public class WellMainController {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellMgmtMenuService service;
	
	@Autowired
	private WellProductService pservice;
	
	@RequestMapping(value = "/juso", method = RequestMethod.GET)
	public ModelAndView getWellJusoPage() {
		ModelAndView mav = new ModelAndView("wellstone/jusoPopup");
		return mav;
	}
	
	@RequestMapping(value = "/juso", method = RequestMethod.POST)
	public ModelAndView getWellJusoInfo() {
		ModelAndView mav = new ModelAndView("wellstone/jusoPopup");
		return mav;
	}
	
	/**
	 * 웰스톤 메인페이지 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getWellStoneMainPage() {
		ModelAndView mav = new ModelAndView("wellstone/well_main");
		try {
			
			String buildingCd = "004";
			String wallCd = "005";
			String exteriorCd = "006";
			String interiorCd = "007";
			String areaCd = "008";
			
			//메뉴정보 가져오기
			List<Map<String, Object>> list = service.getMenuList();
			
			//건물유형 정보 가져오기(공통코드)
			List<Map<String, Object>> buildingList = service.getCommonList(buildingCd);
			
			//벽정보 가져오기(공통코드)
			List<Map<String, Object>> wallList = service.getCommonList(wallCd);
			
			//외장정보 가져오기(공통코드)
			List<Map<String, Object>> exteriorList = service.getCommonList(exteriorCd);
			
			//내장정보 가져오기(공통코드)
			List<Map<String, Object>> interiorList = service.getCommonList(interiorCd);
			
			//지역정보 가져오기(공통코드)
			List<Map<String, Object>> areaList = service.getCommonList(areaCd);
			
			//제품정보 가져오기
			List<Map<String, Object>> productList = pservice.getProductList();
			
			mav.addObject("category", "main");
			mav.addObject("menuList", list);
			mav.addObject("buildingList", buildingList);
			mav.addObject("wallList", wallList);
			mav.addObject("productList", productList);
			mav.addObject("exteriorList", exteriorList);
			mav.addObject("interiorList", interiorList);
			mav.addObject("areaList", areaList);
			
			log.debug("******getWellStoneMainPage*****");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	/**
	 * 웰스톤 회사소개(인사말)페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/greetings", method = RequestMethod.GET)
	public ModelAndView getWellGreetingsPage() {
		ModelAndView mav = new ModelAndView("wellstone/well_greetings");
		try {
			//메뉴정보 가져오기
			List<Map<String, Object>> list = service.getMenuList();
			mav.addObject("menuList", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	/**
	 * 웰스톤 회사소개(인사말)페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/way", method = RequestMethod.GET)
	public ModelAndView getWellWayPage() {
		ModelAndView mav = new ModelAndView("wellstone/well_way");
		try {
			//메뉴정보 가져오기
			List<Map<String, Object>> list = service.getMenuList();
			mav.addObject("menuList", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	/**
	 * 웰스톤 관리자(메뉴관리)페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/manager/menu", method = RequestMethod.GET)
	public ModelAndView getWellManagerMenuPage() {
		ModelAndView mav = new ModelAndView("wellstone/well_m_menu");
		try {
			//상위메뉴 정보 가져오기
			List<Map<String, Object>> topList = service.getTopMenuList();
			
			//메뉴유형 정보 가져오기
			List<Map<String, Object>> typeList = service.getMenuTypeList();
			
			//메뉴정보 가져오기
			List<Map<String, Object>> list = service.getMenuList();

			mav.addObject("category", "m_menu");
			mav.addObject("menuType", typeList);
			mav.addObject("topMenu", topList);
			mav.addObject("menuList", list);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 웰스톤 관리자(메뉴관리) 메뉴정보 등록 및 저장
	 * @return
	 */
	@RequestMapping(value = "/m_menu", method = RequestMethod.POST)
	public ModelAndView createWellManageMenu(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			//메뉴정보 등록
			service.createMenuInfo(collector.getMap());
			
			//상위메뉴 정보 가져오기
			List<Map<String, Object>> topList = service.getTopMenuList();
			
			//메뉴유형 정보 가져오기
			List<Map<String, Object>> typeList = service.getMenuTypeList();
			
			//메뉴정보 가져오기
			List<Map<String, Object>> list = service.getMenuList();
			
			res.put("menuType", typeList);
			res.put("topMenu", topList);
			res.put("menuList", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("rslt", res);
		}
		return mav;
	}
	
	@RequestMapping(value = "/m_menu/update", method = RequestMethod.POST)
	public ModelAndView updateWellManageMenu(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			//메뉴정보 수정
			service.updateMenu(collector.getMap());
			
			//상위메뉴 정보 가져오기
			List<Map<String, Object>> topList = service.getTopMenuList();
			
			//메뉴유형 정보 가져오기
			List<Map<String, Object>> typeList = service.getMenuTypeList();
			
			//메뉴정보 가져오기
			List<Map<String, Object>> list = service.getMenuList();
			
			res.put("menuType", typeList);
			res.put("topMenu", topList);
			res.put("menuList", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("rslt", res);
		}
		return mav;
	}
	
	@RequestMapping(value = "/m_menu/delete", method = RequestMethod.POST)
	public ModelAndView deleteWellManageMenu(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			//메뉴정보 삭제
			service.deleteMenu(collector.getMap());
			
			//상위메뉴 정보 가져오기
			List<Map<String, Object>> topList = service.getTopMenuList();
			
			//메뉴유형 정보 가져오기
			List<Map<String, Object>> typeList = service.getMenuTypeList();
			
			//메뉴정보 가져오기
			List<Map<String, Object>> list = service.getMenuList();
			
			res.put("menuType", typeList);
			res.put("topMenu", topList);
			res.put("menuList", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("rslt", res);
		}
		return mav;
	}

}
