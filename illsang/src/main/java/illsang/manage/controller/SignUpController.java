package illsang.manage.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/")
public class SignUpController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	public ModelAndView view() throws Exception {
		ModelAndView mav = new ModelAndView("manage/member");
		return mav;
	}
}
