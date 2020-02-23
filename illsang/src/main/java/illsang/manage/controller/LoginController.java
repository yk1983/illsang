package illsang.manage.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import illsang.common.resolver.ParamCollector;
import illsang.manage.service.LoginService;

@RestController
@RequestMapping(value = "/manage/auth")
public class LoginController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private LoginService service;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("manage/auth/login");
		return mav;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, ParamCollector collector) {
		ModelAndView mav = new ModelAndView();
		
		HttpSession hs = request.getSession();
		String url = request.getRequestURI();
		if (hs.getAttribute("gvLoginInfo") != null) {
			hs.removeAttribute("gvLoginInfo");
		}
		
		Map<String, Object> gvLoginInfo = service.login(collector.getMap());
		if (gvLoginInfo.isEmpty()) {
			mav.setViewName("jsonView");
		}
		else {
			hs.setAttribute("gvLoginInfo", gvLoginInfo);
			mav.setView(new RedirectView("/manage"));
		}
		return mav;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession hs = request.getSession();
		hs.invalidate();
		// hs.removeAttribute("gvLoginInfo");
		mav.setView(new RedirectView("/manage/auth"));
		return mav;
	}
}
