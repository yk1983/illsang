package illsang.mngr.service;

import java.util.List;
import java.util.Map;

public interface CodeService {

	List<Map<String, Object>> getCommonCodeHeaderList(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> getCommonCodeDetailList(Map<String, Object> map) throws Exception;
	
}
