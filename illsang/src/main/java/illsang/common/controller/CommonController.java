package illsang.common.controller;

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

@RestController
@RequestMapping("/common")
public class CommonController {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private CommonService service;

	@RequestMapping(value = "/code", method = RequestMethod.GET)
	public ModelAndView getCommonCode(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getCommonCode(collector.getMap());
		mav.addObject("gdsCommCd", list);
		return mav;
	}
	
}
