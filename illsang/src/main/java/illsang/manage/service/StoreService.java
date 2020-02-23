package illsang.manage.service;

import java.util.Map;

public interface StoreService {

	Map<String, Object> getStoreInfo(Map<String, Object> map);

	void insertStoreInfo(Map<String, Object> map);

	void updateStoreInfo(Map<String, Object> map);

}
