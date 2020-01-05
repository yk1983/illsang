package illsang.mngr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/sr-admin")
public class DashboardController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	/**
	 * Dashboard 페이지를 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getDashboard() {
		ModelAndView mav = new ModelAndView("mngr/dashboard");
		return mav;
	}
	
}
