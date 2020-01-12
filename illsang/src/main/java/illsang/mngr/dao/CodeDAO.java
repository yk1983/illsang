package illsang.mngr.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.comm.dao.AbstractDAO;

@Repository
public class CodeDAO extends AbstractDAO {

	public List<Map<String, Object>> getCommonCodeHeaderList(Map<String, Object> map) throws Exception {
		return selectList("comm.getCommonCodeHeaderList", map);
	}
	
	public List<Map<String, Object>> getCommonCodeDetailList(Map<String, Object> map) throws Exception {
		return selectList("comm.getCommonCodeDetailList", map);
	}

}
