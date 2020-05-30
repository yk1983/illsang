package illsang.wellstone.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import illsang.common.resolver.ParamCollector;

@RestController
@RequestMapping(value = "/wellstone")
public class WellSampleController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value = "/manager/sample", method = RequestMethod.GET)
	public ModelAndView getWellSample() {
		ModelAndView mav = new ModelAndView("wellstone/sample");
		log.debug("::::: Sample Controller ::::: ");
		return mav;
	}
	
	@RequestMapping(value = "/manager/save", method = RequestMethod.POST)
	public ModelAndView getWellSampleSave(ParamCollector collator) {
		ModelAndView mav = new ModelAndView("jsonView");
		log.debug("::::: Sample Params Controller ::::: ");
		return mav;
	}
	
	@RequestMapping(value = "/manager/files", method = RequestMethod.POST)
	public ModelAndView getWellSampleUpload(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		log.debug("::::: Sample FormData Controller ::::: ");
		return mav;
	}
}