package illsang.common.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.common.dao.NavigationDAO;
import illsang.common.service.NavigationService;

@Service
public class NavigationServiceImpl implements NavigationService {

	@Autowired
	private NavigationDAO dao;
	@Override
	public Map<String, Object> getNavigationList(String gv_tp) {
		return dao.getNavigationList(gv_tp);
	}
	
	@Override
	public Map<String, Object> getProgramInfo(String gv_uri) {
		return dao.getProgramInfo(gv_uri);
	}

}
