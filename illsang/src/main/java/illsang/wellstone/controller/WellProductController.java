package illsang.wellstone.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import illsang.common.resolver.ParamCollector;
import illsang.wellstone.service.WellBoardService;
import illsang.wellstone.service.WellMgmtMenuService;
import illsang.wellstone.service.WellProductService;
import illsang.wellstone.vo.WellProductDetail;
import illsang.wellstone.vo.WellProductDetailList;

@RestController
@RequestMapping(value = "/wellstone")
public class WellProductController {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	private ObjectMapper mapper = new ObjectMapper().configure(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES, true);
	
	@Autowired
	private WellMgmtMenuService service;
	
	@Autowired
	private WellProductService pservice;
	
	/**
	 * 웰스톤 관리자(제품관리) 페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/manager/product", method = RequestMethod.GET)
	public ModelAndView getWellManagerProductPage() {
		ModelAndView mav = new ModelAndView("wellstone/well_m_board");
		try {
			//제품카테고리 정보 조회
			List<Map<String, Object>> productCtgrList = pservice.getProductCtgrList();
			
			//제품정보 조회
			List<Map<String, Object>> productList = pservice.getProductList();
			
			//전체 글 개수 조회
			int totalCount = pservice.getProductTotalCnt();
			
			mav.addObject("category", "m_product");
			mav.addObject("menuNm", "제품관리");
			mav.addObject("code", "03");
			mav.addObject("list", productList);
			mav.addObject("totalCount", totalCount);
			mav.addObject("productCtgrList", productCtgrList);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 웰스톤 관리자(제품관리) 페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/manager/product/detail", method = RequestMethod.GET)
	public ModelAndView getWellManagerProductDetailPage(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("wellstone/well_m_board");
		try {
			//제품카테고리 정보 조회
			List<Map<String, Object>> productCtgrList = pservice.getProductCtgrList();
			
			//제품상세정보 조회
			List<Map<String, Object>> list = pservice.getProductDetailList(collector.getMap());
			
			mav.addObject("category", "m_product_detail");
			mav.addObject("menuNm", "제품관리");
			mav.addObject("code", "03");
			mav.addObject("list", list);
			mav.addObject("productCtgrList", productCtgrList);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 웰스톤 관리자(제품관리) 제품중복확인
	 * @param collector
	 * @return
	 */
	@RequestMapping(value = "/manager/product/check", method = RequestMethod.POST)
	public ModelAndView getWellProductName(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			log.debug("collector ::::: " + collector.getMap());
			int rslt = pservice.getProductNm(collector.getMap());
			mav.addObject("rslt", rslt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	/**
	 * 웰스톤 관리자(제품관리) 제품등록
	 * @return
	 */
	@RequestMapping(value = "/manager/product", method = RequestMethod.POST)
	public ModelAndView createWellProduct(ParamCollector collector, MultipartHttpServletRequest request) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		String code = "0";
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map = collector.getMap();
			
			//제품등록번호 가져오기
			int prdCd = pservice.getProductCd(map);
			map.put("prdCd", prdCd+1);
			
			//제품이미지등록
//			pservice.createFile(map, request);
			
			//제품등록
			pservice.createProduct(map);
			
			code = "1";
			res.put("code", code);
			res.put("prdCd", prdCd+1); //제품코드
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("rslt", res);
		}
		return mav;
	}
	
	/**
	 * 웰스톤 관리자(제품관리) 제품상세등록
	 * @return
	 */
	@RequestMapping(value = "/manager/productDetail", method = RequestMethod.POST)
	public ModelAndView createWellProductDetail(ParamCollector collector, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		String code = "0";
		try {
			
			Gson gson = new Gson();
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			list = gson.fromJson(collector.getMap().get("jsonData").toString(), list.getClass());
			
			pservice.createProductDetail(list);
			
			code = "1";
			res.put("code", code);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("rslt", res);
		}
		return mav;
	} 

}
