package illsang.manage.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class LoginDAO extends AbstractDAO {

	public Map<String, Object> login(String string, Map<String, Object> map) {
		return (Map<String, Object>) selectOne("auth.login", map);
	}

}
