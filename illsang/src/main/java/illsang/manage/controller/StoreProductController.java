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

import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param;

import illsang.common.resolver.ParamCollector;
import illsang.manage.service.ProductService;

@RestController
@RequestMapping(value = "/manage/store/product")
public class StoreProductController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private ProductService service;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() throws Exception {
		ModelAndView mav = new ModelAndView("manage/mst/fndmst02m");
		return mav;
	}
	
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
