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
import illsang.wellstone.service.WellCatalogService;
import illsang.wellstone.service.WellMgmtMenuService;
import illsang.wellstone.service.WellProductService;

@RestController
@RequestMapping(value = "/wellstone")
public class WellCatalogController {
	
private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellMgmtMenuService service;
	
	@Autowired
	private WellProductService pservice;
	
	@Autowired
	private WellCatalogService cservice;
	
	/**
	 * 카달로그신청 페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/catalog", method = RequestMethod.GET)
	public ModelAndView getWellCatalogPage() {
		ModelAndView mav = new ModelAndView("wellstone/well_board");
		try {
			String buildingCd = "004";
			String wallCd = "005";
			String exteriorCd = "006";
			String interiorCd = "007";
			String areaCd = "008";
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("startNum", 0);
			map.put("endNum", 5);
			
			//메뉴정보 가져오기
			List<Map<String, Object>> menuList = service.getMenuList();
			
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
			
			//카달로그신청 목록 조회
			List<Map<String, Object>> list = cservice.getCatalogList(map);

			//카달로그신청 글 개수 조회
			int totalCount = cservice.getCatalogTotalCnt(map);
			
			mav.addObject("menuList", menuList);
			mav.addObject("category", "catalog");
			mav.addObject("menuNm", "고객센터");
			mav.addObject("ctgrCd", "06");
			mav.addObject("list", list);
			mav.addObject("totalCount", totalCount);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 카달로그신청(관리자) 페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/manager/catalog", method = RequestMethod.GET)
	public ModelAndView getWellManagerCatalogPage() {
		ModelAndView mav = new ModelAndView("wellstone/well_m_board");
		try {
			
			mav.addObject("category", "m_catalog");
			mav.addObject("menuNm", "견적문의");
			mav.addObject("code", "06"); //견적게시판
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 카달로그신청 등록
	 * @return
	 */
	@RequestMapping(value = "/catalog", method = RequestMethod.POST)
	public ModelAndView createWellCatalog(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		String code = "0";
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map = collector.getMap();
			map.put("ctgrCd", "06");
			
			//문의번호 조회
			int reqNo = cservice.getCatalogNo(map);
			map.put("reqNo", reqNo+1);
			
			//카달로그신청 등록
			cservice.createWellCatalog(map);
			
			//카달로그신청 목록 조회
			List<Map<String, Object>> list = cservice.getCatalogList(map);
			
			code = "1";
			mav.addObject("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("code", code);
		}
		return mav;
	}
	
	/**
	 * 카달로그신청 비밀번호 확인 
	 * @return
	 */
	@RequestMapping(value = "/catalog/psw", method = RequestMethod.POST)
	public ModelAndView checkWellCatalogPassword(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		String code = "0";
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map = collector.getMap();
			
			String psw = cservice.getPassword(map);
			
			if(map.get("password").equals(psw)) {
				code = "1";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("code", code);
		}
		return mav;
	}
	
	/**
	 * 카달로그신청 상세정보 조회  
	 * @return
	 */
	@RequestMapping(value = "/catalog/detail", method = RequestMethod.POST)
	public ModelAndView getWellCatalogDetail(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		String code = "0";
		try {
			//카달로그신청 상세정보 조회
			Map<String, Object> rslt = new HashMap<String, Object>();
			rslt = cservice.getCatalogDetail(collector.getMap());
			code = "1";
			mav.addObject("rslt", rslt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("code", code);
		}
		return mav;
	}
	
	
	/**
	 * 카달로그신청 검색  /catalog/search
	 * @return
	 */

	
	/**
	 * 카달로그신청 답변등록 /catalog/response
	 * @return
	 */
	
	/**
	 * 카달로그신청 수정
	 * @return
	 */
	@RequestMapping(value = "/catalog/update", method = RequestMethod.POST)
	public ModelAndView updateWellCatalog(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		String code = "0";
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map = collector.getMap();
			map.put("ctgrCd", "06");
			
			//카달로그신청 수정
			cservice.updateWellCatalog(map);
			
			//카달로그신청 목록 조회
			List<Map<String, Object>> list = cservice.getCatalogList(map);
			
			code = "1";
			mav.addObject("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("code", code);
		}
		return mav;
	}
	
	/**
	 * 카달로그신청 삭제 /catalog/delete
	 * @return
	 */

}
