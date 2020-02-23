package illsang.manage.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.manage.dao.ProgramDAO;
import illsang.manage.service.ProgramService;

@Service
public class ProgramServiceImpl implements ProgramService {

	@Autowired
	private ProgramDAO dao;
	
	@Override
	public List<Map<String, Object>> getProgramCategryList(Map<String, Object> map) {
		return dao.getProgramCategoryList(map);
	}

	@Override
	public List<Map<String, Object>> getProgramCategoryTreeView(Map<String, Object> map) {
		return dao.getProgramCategoryTreeView(map);
	}

	@Override
	public List<Map<String, Object>> getProgramList(Map<String, Object> map) {
		return dao.getProgramList(map);
	}

}
