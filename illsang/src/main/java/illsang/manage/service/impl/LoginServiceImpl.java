package illsang.manage.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.manage.dao.LoginDAO;
import illsang.manage.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginDAO dao;

	@Override
	public Map<String, Object> login(Map<String, Object> map) {
		return dao.login("auth.login", map);
	}

}
