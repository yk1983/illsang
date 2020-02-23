package illsang.manage.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class CalendarDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getRoastingScheduleList(Map<String, Object> map) {
		return selectList("schedule.getRoastingScheduleList", map);
	}

}
