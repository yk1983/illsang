package illsang.manage.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class MenuCategoryDAO extends AbstractDAO {

	public List<Map<String, Object>> getMenuCategoryList(Map<String, Object> map) {
		return selectList("menu.getMenuCategoryCommonCode", map);
	}

}
