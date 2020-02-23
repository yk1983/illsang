package illsang.manage.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.manage.dao.CommonCodeDAO;
import illsang.manage.service.CommonCodeService;

@Service
public class CommonCodeServiceImpl implements CommonCodeService {
	
	@Autowired
	private CommonCodeDAO dao;

	@Override
	public void createSystemCodeMaster(Map<String, Object> map) throws Exception {
		dao.createSystemCodeMaster(map);
	}

	@Override
	public void updateSystemCodeMaster(Map<String, Object> map) throws Exception {
		dao.updateSystemCodeMaster(map);
	}

	@Override
	public void createSystemCodeDetail(Map<String, Object> map) throws Exception {
		dao.createSystemCodeDetail(map);
	}
	
	@Override
	public void updateSystemCodeDetail(Map<String, Object> map) throws Exception {
		dao.updateSystemCodeDetail(map);
	}

	@Override
	public List<Map<String, Object>> getCommonCodeList(Map<String, Object> map) {
		return dao.getCommonCodeList(map);
	}

	@Override
	public List<Map<String, Object>> getCommonCodeDetailList(Map<String, Object> map) {
		return dao.getCommonCodeDetailList(map);
	}
	
}
