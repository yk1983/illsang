package illsang.mngr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/sr-admin/stock")
public class StockController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	/**
	 * Stock 페이지를 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getStockLst() {
		ModelAndView mav = new ModelAndView("mngr/stck/stock");
		return mav;
	}
	
}
