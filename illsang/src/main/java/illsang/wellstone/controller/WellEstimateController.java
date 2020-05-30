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
import illsang.wellstone.service.WellBoardService;
import illsang.wellstone.service.WellEstimateService;
import illsang.wellstone.service.WellMgmtMenuService;
import illsang.wellstone.service.WellProductService;

@RestController
@RequestMapping(value = "/wellstone")
public class WellEstimateController {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellMgmtMenuService service;
	
	@Autowired
	private WellProductService pservice;
	
	@Autowired
	private WellEstimateService eservice;
	
	/**
	 * 시공견적문의 페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/estimate", method = RequestMethod.GET)
	public ModelAndView getWellEstimatePage() {
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
			
			//제품정보 가져오기
			List<Map<String, Object>> productList = pservice.getProductList();
			
			//시공견적문의 목록 조회
			List<Map<String, Object>> list = eservice.getEstimateList(map);

			//시공견적문의 글 개수 조회
			int totalCount = eservice.getEstimateTotalCnt(map);
			
			mav.addObject("menuList", menuList);
			mav.addObject("buildingList", buildingList);
			mav.addObject("wallList", wallList);
			mav.addObject("productList", productList);
			mav.addObject("exteriorList", exteriorList);
			mav.addObject("interiorList", interiorList);
			mav.addObject("areaList", areaList);
			
			mav.addObject("category", "estimate");
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
	 * 시공견적문의(관리자) 페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/manager/estimate", method = RequestMethod.GET)
	public ModelAndView getWellManagerEstimatePage() {
		ModelAndView mav = new ModelAndView("wellstone/well_m_board");
		try {
			
			mav.addObject("category", "m_estimate");
			mav.addObject("menuNm", "견적문의");
			mav.addObject("code", "06"); //견적게시판
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 시공견적문의 등록
	 * @return
	 */
	@RequestMapping(value = "/estimate", method = RequestMethod.POST)
	public ModelAndView createWellEstimate(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		String code = "0";
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map = collector.getMap();
			map.put("ctgrCd", "06");
			
			//문의번호 조회
			int reqNo = eservice.getEstimateNo(map);
			map.put("reqNo", reqNo+1);
			
			//시공견적문의 등록
			eservice.createWellEstimate(map);
			
			//시공견적문의 목록 조회
			List<Map<String, Object>> list = eservice.getEstimateList(map);
			
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
	 * 시공견적문의 비밀번호 확인 
	 * @return
	 */
	@RequestMapping(value = "/estimate/psw", method = RequestMethod.POST)
	public ModelAndView checkWellEstimatePassword(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		String code = "0";
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map = collector.getMap();
			
			String psw = eservice.getPassword(map);
			
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
	 * 시공견적문의 상세정보 조회  
	 * @return
	 */
	@RequestMapping(value = "/estimate/detail", method = RequestMethod.POST)
	public ModelAndView getWellEstimateDetail(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		String code = "0";
		try {
			//시공견적문의 상세정보 조회
			Map<String, Object> rslt = new HashMap<String, Object>();
			rslt = eservice.getEstimateDetail(collector.getMap());
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
	 * 시공견적문의 검색  /estimate/search
	 * @return
	 */

	
	/**
	 * 시공견적문의 답변등록 /estimate/response
	 * @return
	 */
	
	/**
	 * 시공견적문의 수정
	 * @return
	 */
	@RequestMapping(value = "/estimate/update", method = RequestMethod.POST)
	public ModelAndView updateWellEstimate(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		String code = "0";
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map = collector.getMap();
			map.put("ctgrCd", "06");
			
			//시공견적문의 수정
			eservice.updateWellEstimate(map);
			
			//시공견적문의 목록 조회
			List<Map<String, Object>> list = eservice.getEstimateList(map);
			
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
	 * 시공견적문의 삭제 /estimate/delete
	 * @return
	 */

}
