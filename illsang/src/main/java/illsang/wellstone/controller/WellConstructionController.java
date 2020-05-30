package illsang.wellstone.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import illsang.wellstone.service.WellMgmtMenuService;

@RestController
@RequestMapping(value = "/wellstone")
public class WellConstructionController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellMgmtMenuService service;
	
	@RequestMapping(value = "/manager/construction", method = RequestMethod.GET)
	public ModelAndView getWellManagerConstructionPage() {
		ModelAndView mav = new ModelAndView("wellstone/well_m_board");
		try {
			mav.addObject("category", "m_construction");
			mav.addObject("menuNm", "시공현황관리");
			mav.addObject("code", "04"); //갤러리
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
}
