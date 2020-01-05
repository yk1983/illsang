package illsang.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/sr-admin")
public class LoginController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	/**
	 * 관리자 로그인 페이지를 호출
	 * @param
	 * @return ModelAndView
	 * @throws
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView getAdminLogin() {
		ModelAndView mav = new ModelAndView("mngr/login");
		return mav;
	}
}
