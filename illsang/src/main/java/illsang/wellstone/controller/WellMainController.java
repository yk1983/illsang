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

@RestController
@RequestMapping(value = "/wellstone")
public class WellMainController {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellMgmtMenuService service;
	
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
	@RequestMapping(value = "/m_menu", method = RequestMethod.GET)
	public ModelAndView getWellManageMenuPage() {
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
