package illsang.manage.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class ProgramDAO extends AbstractDAO {

	public List<Map<String, Object>> getProgramCategoryList(Map<String, Object> map) {
		return selectList("program.getProgramCategoryList", map);
	}

	public List<Map<String, Object>> getProgramCategoryTreeView(Map<String, Object> map) {
		return selectList("program.getProgramCategoryTreeView", map);
	}

	public List<Map<String, Object>> getProgramList(Map<String, Object> map) {
		return selectList("program.getProgramList", map);
	}

}
