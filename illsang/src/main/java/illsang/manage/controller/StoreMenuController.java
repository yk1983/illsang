package illsang.manage.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/manage/store-menu")
public class StoreMenuController {

//	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	public ModelAndView view() throws Exception {
		ModelAndView mav = new ModelAndView("/manage/store/menu");
		return mav;
	}
}
