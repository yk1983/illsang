package illsang.manage.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import illsang.common.resolver.ParamCollector;
import illsang.manage.service.ProgramService;

@RestController
@RequestMapping(value = "/manage/program/category")
public class ProgramCtgrController {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private ProgramService service;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("manage/sys/syspgm01m");
		return mav;
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView getProgramCategryList(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getProgramCategryList(collector.getMap());
		mav.addObject("iTotalRecords", list.size());
		mav.addObject("iTotalDisplayRecords", list.size());
		mav.addObject("sEcho", 0);
		mav.addObject("sColumns", "");
		mav.addObject("aaData", list);
		return mav;
	}
	
	@RequestMapping(value = "/treeview", method = RequestMethod.GET)
	public ModelAndView getProgramCategryTreeView(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.getProgramCategoryTreeView(collector.getMap());
		Gson gson = new Gson();
		mav.addObject("data", gson.toJson(list));
		return mav;
	}
}
