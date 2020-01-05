package illsang.smpl.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import illsang.comm.resolver.ParamCollector;
import illsang.smpl.service.SamplePageService;

@RestController
public class SamplePageController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	SamplePageService service;
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView smplAboutPage() {
		ModelAndView mav = new ModelAndView("smpl/about");
		return mav;
	}
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView smplProductsPage() {
		ModelAndView mav = new ModelAndView("smpl/products");
		return mav;
	}
	
	@RequestMapping(value = "/store", method = RequestMethod.GET)
	public ModelAndView smplStorePage() {
		ModelAndView mav = new ModelAndView("smpl/store");
		return mav;
	}
	
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public ModelAndView smplSamplePage() {
		ModelAndView mav = new ModelAndView("smpl/sample");
		return mav;
	}
	
	@RequestMapping(value = "/sample/list", method = RequestMethod.GET)
	public ModelAndView getSampleList(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		log.debug("params : " + collector.getMap());
		List<Map<String, Object>> list = service.getSampleList(collector.getMap());
		mav.addObject("data", list);
		return mav;
	}
	
	@RequestMapping(value = "/sample/register", method = RequestMethod.POST)
	public ModelAndView insertSampleData(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("jsonView");
		service.insertSampleData(collector.getMap());
		mav.addObject("erorCds", "0");
		mav.addObject("erorMsg", "정상적으로 저장되었습니다.");
		return mav;
	}
	
	@RequestMapping(value = "/sample/modify", method = RequestMethod.PUT)
	public ModelAndView updateSampleData(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("jsonView");
		service.updateSampleData(collector.getMap());
		mav.addObject("erorCds", "0");
		mav.addObject("erorMsg", "정상적으로 저장되었습니다.");
		return mav;
	}

	@RequestMapping(value = "/sample/delete", method = RequestMethod.DELETE)
	public ModelAndView deleteSampleData(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		service.deleteSampleData(collector.getMap());
		mav.addObject("erorCds", "0");
		mav.addObject("erorMsg", "정상적으로 저장되었습니다.");
		return mav;
	}
}
