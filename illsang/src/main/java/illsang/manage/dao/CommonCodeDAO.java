package illsang.manage.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class CommonCodeDAO extends AbstractDAO {

	public void createSystemCodeMaster(Map<String, Object> map) throws Exception {
		insert("common.insertMasterCode", map);
	}

	public void updateSystemCodeMaster(Map<String, Object> map) throws Exception {
		update("common.updateMasterCode", map);
	}
	
	public void createSystemCodeDetail(Map<String, Object> map) throws Exception {
		insert("common.insertDetailCode", map);
	}

	public void updateSystemCodeDetail(Map<String, Object> map) throws Exception {
		update("common.updateDetailCode", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getCommonCodeList(Map<String, Object> map) {
		return selectList("common.getCommonCodeList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getCommonCodeDetailList(Map<String, Object> map) {
		return selectList("common.getCommonCodeDetailList", map);
	}

}
