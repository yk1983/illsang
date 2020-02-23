package illsang.common.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.common.dao.CommonDAO;
import illsang.common.service.CommonService;

@Service
public class CommonServiceImpl implements CommonService {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private CommonDAO dao;

	@Override
	public List<Map<String, Object>> getCommonCode(Map<String, Object> map) {
		return dao.getCommonCode(map);
	}

	@Override
	public List<Map<String, Object>> getCommonCode() {
		Map<String, Object> map = new HashMap<String, Object>();
		return this.getCommonCode(map);
	}

	@Override
	public List<Map<String, Object>> getCommonCode(String modulCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ModulCode" , modulCode);
		return this.getCommonCode(map);
	}

	@Override
	public List<Map<String, Object>> getCommonCode(String modulCode, String ctgrCode) {
		String[] code = {ctgrCode};
		return this.getCommonCode(modulCode, code);
	}

	@Override
	public List<Map<String, Object>> getCommonCode(String modulCode, String[] ctgrCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ModulCode" , modulCode);
		map.put("CommonCode", ctgrCode);
		return this.getCommonCode(map);
	}

}
