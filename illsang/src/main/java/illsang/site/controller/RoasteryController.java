package illsang.site.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/roastery")
public class RoasteryController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	/**
	 * 로스터리 페이지를 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getRoastery() {
		ModelAndView mav = new ModelAndView("site/menu/roastery");
		return mav;
	}
	
}
