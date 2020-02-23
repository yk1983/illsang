package illsang.manage.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.manage.dao.MenuCategoryDAO;
import illsang.manage.service.MenuCategoryService;

@Service
public class MenuCategoryServiceImpl implements MenuCategoryService {

	@Autowired
	private MenuCategoryDAO dao;
	
	@Override
	public List<Map<String, Object>> getMenuCategoryList(Map<String, Object> map) {
		return dao.getMenuCategoryList(map);
	}

}
