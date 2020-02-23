package illsang.common.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class NavigationDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public Map<String, Object> getNavigationList(String gv_tp) {
		return (Map<String, Object>) selectOne("navi.getNavigationList", gv_tp);
	}

	public Map<String, Object> getProgramInfo(String gv_uri) {
		return (Map<String, Object>) selectOne("navi.getProgramInfo", gv_uri);
	}

}
