package illsang.common.service;

import java.util.List;
import java.util.Map;

public interface CommonService {

	List<Map<String, Object>> getCommonCode(Map<String, Object> map);

	List<Map<String, Object>> getCommonCode();

	List<Map<String, Object>> getCommonCode(String modulCode);
	
	List<Map<String, Object>> getCommonCode(String modulCode, String ctgrCode);

	List<Map<String, Object>> getCommonCode(String modulCode, String[] ctgrCode);
	
}
