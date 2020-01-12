package illsang.mngr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.mngr.dao.GoodsDAO;
import illsang.mngr.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	private GoodsDAO dao;

	@Override
	public List<Map<String, Object>> getGoodsList(Map<String, Object> map) throws Exception {
		return dao.getGoodsList(map);
	}

}
