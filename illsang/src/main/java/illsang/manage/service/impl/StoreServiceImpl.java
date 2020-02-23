package illsang.manage.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.manage.dao.StoreDAO;
import illsang.manage.service.StoreService;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	private StoreDAO dao;

	@Override
	public Map<String, Object> getStoreInfo(Map<String, Object> map) {
		return dao.getStoreInfo(map);
	}

	@Override
	public void insertStoreInfo(Map<String, Object> map) {
		dao.insertStoreInfo(map);
	}

	@Override
	public void updateStoreInfo(Map<String, Object> map) {
		dao.updateStoreInfo(map);
	}
	
}
