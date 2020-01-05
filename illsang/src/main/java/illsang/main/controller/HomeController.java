package illsang.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());

	/**
	 * index 페이지를 호출
	 * @param
	 * @return ModelAndView
	 * @throws
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getIndex() {
		ModelAndView mav = new ModelAndView("site/index");
		return mav;
	}

}
