package illsang.manage.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import illsang.common.resolver.ParamCollector;
import illsang.manage.service.StoreService;

@RestController
@RequestMapping(value = "/manage/store/info")
public class StoreInfoController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private StoreService service;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("manage/mst/fndmst01m");
		Map<String, Object> inParams = new HashMap<String, Object>();
		// test data
		inParams.put("storeCode", 1);
		mav.addObject("dataset", findByStoreInfo(inParams));
		return mav;
	}
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public ModelAndView getStoreInfo(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		
		return mav;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView insertStoreInfo(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			// test data
			collector.getMap().put("lat", 0.0000000000);
			collector.getMap().put("lon", 0.0000000000);
			
			if (collector.getMap().get("storeCode") != null) {
				service.updateStoreInfo(collector.getMap());
			}
			else {
				service.insertStoreInfo(collector.getMap());
			}
			Map<String, Object> map = findByStoreInfo(collector.getMap());
			mav.addObject("data", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return mav;
		}
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.PUT)
	public ModelAndView updateStoreInfo(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			Map<String, Object> map = findByStoreInfo(collector.getMap());
			mav.addObject("data", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return mav;
		}
	}
	
	private Map<String, Object> findByStoreInfo(Map<String, Object> map) {
		Map<String, Object> resultMap = service.getStoreInfo(map);
		return resultMap;
	}
	
}
