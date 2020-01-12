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
import illsang.mngr.service.CodeService;

@RestController
@RequestMapping(value = "/sr-admin/code")
public class CodeController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	private static final String jsonView = "jsonView";
	
	@Autowired
	private ComnService comn;
	
	@Autowired
	private CodeService srvc;
	
	/**
	 * 관리자 공통코드 페이지를 호출
	 * @param 
	 * @return ModelAndView 
	 * @throws
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView("mngr/syst/code-mst");
		// 공통코드조회
		// Map<String, Object> cmn = comn.getCmnCd("MS", "MS001");
		// mav.addObject("ds_cmn", cmn);
		return mav;
	}
	
	@RequestMapping(value = "/lst", method = RequestMethod.GET)
	public ModelAndView selectHeader(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView(jsonView);
		List<Map<String, Object>> list = srvc.getCommonCodeHeaderList(collector.getMap());
		mav.addObject("ds_data", list);
		return mav;
	}
	
	@RequestMapping(value = "/lst/dtl")
	public ModelAndView selectDetails(ParamCollector collector) throws Exception {
		ModelAndView mav = new ModelAndView(jsonView);
		List<Map<String, Object>> list = srvc.getCommonCodeDetailList(collector.getMap());
		mav.addObject("ds_data", list);
		return mav;
	}
	
}
