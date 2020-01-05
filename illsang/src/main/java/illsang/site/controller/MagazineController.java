package illsang.site.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/magazine")
public class MagazineController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	/**
	 * 매거진 페이지를 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getMagazinePage() {
		ModelAndView mav = new ModelAndView("site/mgzn/magazine");
		return mav;
	}
}
