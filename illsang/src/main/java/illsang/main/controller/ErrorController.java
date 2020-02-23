package illsang.main.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/error")
public class ErrorController {

	@RequestMapping(value = {"", "/{error-code}"}, method = RequestMethod.GET)
	public ModelAndView view(@PathVariable("error-code") String pErrCd) {
		ModelAndView mav = new ModelAndView("error");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cd" , (pErrCd.equals("server-error")) ? "500" : "404");
		map.put("msg", (pErrCd.equals("server-error")) ? "Internal Server Error" : "Page Not Found");
		
		mav.addObject("data", map);
		return mav;
	}
	
}
