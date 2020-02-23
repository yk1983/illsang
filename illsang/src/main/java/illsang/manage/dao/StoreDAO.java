package illsang.manage.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class StoreDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public Map<String, Object> getStoreInfo(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("store.getStoreInfo", map);
	}

	public void insertStoreInfo(Map<String, Object> map) {
		insert("store.insertStoreInfo", map);
	}

	public void updateStoreInfo(Map<String, Object> map) {
		update("store.updateStoreInfo", map);
	}

}
