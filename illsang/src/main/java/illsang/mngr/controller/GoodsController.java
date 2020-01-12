package illsang.mngr.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import illsang.comm.resolver.ParamCollector;
import illsang.comn.service.ComnService;
import illsang.mngr.service.GoodsService;

@RestController
@RequestMapping(value = "/sr-admin/goods")
public class GoodsController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	private static final String jsonView = "jsonView";
	
	@Autowired
	private ComnService comn;
	
	@Autowired
	private GoodsService srvc;
	
	/**
	 * 관리자 상품마스터 페이지를 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("mngr/mstr/goods");
		// 공통코드조회
		Map<String, Object> cmn = comn.getCmnCd("MS");
		mav.addObject("ds_cmn", cmn);
		return mav;
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView select(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView(jsonView);
		// 데이터조회
		List<Map<String, Object>> list = srvc.getGoodsList(collector.getMap());
		mav.addObject("ds_data", list);
		return mav;
	}
	
}
