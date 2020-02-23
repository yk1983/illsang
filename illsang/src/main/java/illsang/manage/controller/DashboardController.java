package illsang.manage.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import illsang.common.service.NavigationService;

@RestController
@RequestMapping(value = "/manage")
public class DashboardController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private NavigationService navi;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() throws Exception {
		ModelAndView mav = new ModelAndView("manage/dashboard");
		// 현재시각
		long time = System.currentTimeMillis();
		mav.addObject("timestamp", time);
		// navigation
		Map<String, Object> map = navi.getNavigationList("2");
		Gson gson = new Gson();
		mav.addObject("gdsNavigation", gson.toJson(map));
		return mav;
	}
	
}
