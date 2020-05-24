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

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param;

import illsang.common.resolver.ParamCollector;
import illsang.manage.service.ProductService;

@RestController
@RequestMapping(value = "/manage/store/product")
public class StoreProductController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	private ObjectMapper mapper = new ObjectMapper();
	
	@Autowired
	private ProductService service;
	
	/**
	 * @description 상품정보관리 페이지 호출
	 * @return ModelAndView
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("manage/mst/fndmst02m");
		return mav;
	}
	
	/**
	 * @description 상품정보관리 목록 조회
	 * @param ParamCollector
	 * @return ModelAndView
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView getStoreProductList(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getStoreProductList(collector.getMap());
		mav.addObject("iTotalRecords", list.size());
		mav.addObject("iTotalDisplayRecords", list.size());
		mav.addObject("sEcho", 0);
		mav.addObject("sColumns", "");
		mav.addObject("aaData", list);
		return mav;
	}
	
	/**
	 * @description 상품정보관리 품목정보 생성
	 * @param ParamCollector
	 * @return ModelAndView
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView create(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			collector.getMap().put("id", "ILS202001"); // test usr
			service.createStoreProductInfo(collector.getMap());
//			//기존 등록 정보 확인
//			Map<String, Object> obj = null;			
//			obj = service.getStoreProduct(collector.getMap());
//			
//			if(obj.get("PRD_NM").equals(collector.getMap().get("prdNm"))) {
//				res.put("code", 1);
//				res.put("message", "Already exists");
//			} else {
//				
//			}			
//
		} catch (Exception e) {
			res.put("code", -1);
			res.put("message", e.getMessage());
		} finally {
			mav.addObject("rslt", res);
		}
		return mav;
	}
	
	/**
	 * @description 상품정보관리 품목정보 수정
	 * @param ParamCollector
	 * @return ModelAndView
	 */
	@RequestMapping(method = RequestMethod.PUT)
	public ModelAndView update(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			collector.getMap().put("id", "ILS202001"); // test usr
			service.updateStoreProductInfo(collector.getMap());
			res.put("code", 0);
		} catch (Exception e) {
			res.put("code", -1);
			res.put("message", e.getMessage());
		} finally {
			mav.addObject("rslt", res);
		}
		return mav;
	}
	
	/**
	 * @description 상품정보관리 품목정보 실패
	 * @param ParamCollector
	 * @return ModelAndView
	 */
	@RequestMapping(method = RequestMethod.DELETE)
	public ModelAndView delete(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		try {
			collector.getMap().put("id", "ILS202001"); // test usr
			service.deleteStoreProductInfo(collector.getMap());
			res.put("code", 0);
		} catch (Exception e) {
			res.put("code", -1);
			res.put("message", e.getMessage());
		} finally {
			mav.addObject("rslt", res);
		}
		return mav;
	}
	
	@RequestMapping(value = "/report", method = RequestMethod.GET)
	public ModelAndView getStoreProductReportList(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getStoreProductReportList(collector.getMap());
		mav.addObject("iTotalRecords", list.size());
		mav.addObject("iTotalDisplayRecords", list.size());
		mav.addObject("sEcho", 0);
		mav.addObject("sColumns", "");
		mav.addObject("aaData", list);
		return mav;
	}
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public ModelAndView getStoreProductCategoryList(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getStoreProductCategoryList(collector.getMap());
		mav.addObject("iTotalRecords", list.size());
		mav.addObject("iTotalDisplayRecords", list.size());
		mav.addObject("sEcho", 0);
		mav.addObject("sColumns", "");
		mav.addObject("aaData", list);
		return mav;
	}
	
	@RequestMapping(value = "/options", method = RequestMethod.GET)
	public ModelAndView getStoreProductOptionsList(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getStoreProductOptionsList(collector.getMap());
		mav.addObject("iTotalRecords", list.size());
		mav.addObject("iTotalDisplayRecords", list.size());
		mav.addObject("sEcho", 0);
		mav.addObject("sColumns", "");
		mav.addObject("aaData", list);
		return mav;
	}
	
}
