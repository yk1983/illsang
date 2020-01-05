package illsang.mngr.controller;

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
import illsang.mngr.service.CommService;

@RestController
@RequestMapping(value = "/sr-admin")
public class CommController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private CommService srvc;
	
	/**
	 * Dashboard 페이지를 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(value = "/common-code", method = RequestMethod.GET)
	public ModelAndView getCommonCode(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("mngr/syst/common-code");
		List<Map<String, Object>> list = srvc.getCommCtgCd(collector.getMap());
		return mav;
	}
	
}
