package illsang.site.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import illsang.comn.service.ComnService;
import illsang.site.service.MenuService;

@RestController
@RequestMapping(value = "/menu")
public class MenuController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private ComnService cmn;
	
	@Autowired
	private MenuService service;
	
	/**
	 * 메뉴 페이지를 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getMenuPage() throws Exception {
		ModelAndView mav = new ModelAndView("site/menu/menu");
		Map<String, Object> map = cmn.getCmnCd("MS", "MS007");		
		mav.addObject("ds_cmn", map);		
		return mav;
	}
	
	/**
	 * 메뉴 페이지 이미지 저장
	 * 관리자 페이지 기능 추가 예정
	 * @throws Exception
	 */
	@RequestMapping(value = "/menu/img_test", method = RequestMethod.POST)
	public void saveMenuImage() throws Exception {
		service.saveMenuImage();
	}
	
}
