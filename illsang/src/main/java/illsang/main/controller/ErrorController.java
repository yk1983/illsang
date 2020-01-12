package illsang.main.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/error")
public class ErrorController {

	@RequestMapping(value = {"", "/no-resource", "/server-error"}, method = RequestMethod.GET)
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("error");
		return mav;
	}
	
}
