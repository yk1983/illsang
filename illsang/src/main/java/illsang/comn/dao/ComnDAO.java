package illsang.comn.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.comm.dao.AbstractDAO;

@Repository
public class ComnDAO extends AbstractDAO {

	public Map<String, Object> getCmnCd(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("comn.getCmnCd", map);
	}

}
