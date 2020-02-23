package illsang.manage.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.manage.dao.CalendarDAO;
import illsang.manage.service.CalendarService;

@Service
public class CalendarServiceImpl implements CalendarService {
	
	@Autowired
	private CalendarDAO dao;

	@Override
	public List<Map<String, Object>> getRoastingScheduleList(Map<String, Object> map) {
		return dao.getRoastingScheduleList(map);
	}

}
