package illsang.mngr.dao;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import illsang.comm.dao.AbstractDAO;

@Repository
public class GoodsDAO extends AbstractDAO {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getGoodsList(Map<String, Object> map) throws Exception {
		String[] key = {"MS001", "MS003", "MS004", "MS005"};
		for (int i = 0; i < key.length; i++) {
			if (map.containsKey(key[i]) && map.get(key[i]) instanceof String) {
				map.put(key[i], map.get(key[i]).toString().split(","));
			}
		}
		log.debug("map = " + map);
		return selectList("prdc.getGoodsList", map);
	}

}
