package illsang.mngr.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.comm.dao.AbstractDAO;

@Repository
public class CommDAO extends AbstractDAO {

	public List<Map<String, Object>> getCommCtgCd(Map<String, Object> map) {
		return selectList("comm.getCommCtgCd", map);
	}
	
	public List<Map<String, Object>> getCommCtgCdDtl(Map<String, Object> map) {
		return selectList("comm.getCommCtgCdDtl", map);
	}
	
}
