package illsang.mngr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.mngr.dao.CodeDAO;
import illsang.mngr.service.CodeService;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	private CodeDAO dao;

	@Override
	public List<Map<String, Object>> getCommonCodeHeaderList(Map<String, Object> map) throws Exception {
		return dao.getCommonCodeHeaderList(map);
	}

	@Override
	public List<Map<String, Object>> getCommonCodeDetailList(Map<String, Object> map) throws Exception {
		return dao.getCommonCodeDetailList(map);
	}

}
