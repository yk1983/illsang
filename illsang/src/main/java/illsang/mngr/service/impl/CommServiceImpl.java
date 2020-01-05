package illsang.mngr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.mngr.dao.CommDAO;
import illsang.mngr.service.CommService;

@Service
public class CommServiceImpl implements CommService{

	@Autowired
	private CommDAO dao;

	@Override
	public List<Map<String, Object>> getCommCtgCd(Map<String, Object> map) {
		return dao.getCommCtgCd(map);
	}
}
