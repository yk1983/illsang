package illsang.mngr.service;

import java.util.List;
import java.util.Map;

public interface GoodsService {

	List<Map<String, Object>> getGoodsList(Map<String, Object> map) throws Exception;
	
}