package illsang.common.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class CommonDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getCommonCode(Map<String, Object> map) {
		return selectList("common.getGdsCommCode", map);
	}

}
