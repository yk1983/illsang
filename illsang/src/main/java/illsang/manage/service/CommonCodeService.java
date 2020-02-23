package illsang.manage.service;

import java.util.List;
import java.util.Map;

public interface CommonCodeService {

	void createSystemCodeMaster(Map<String, Object> map) throws Exception;
	
	void updateSystemCodeMaster(Map<String, Object> map) throws Exception;
	
	void updateSystemCodeDetail(Map<String, Object> map) throws Exception;

	void createSystemCodeDetail(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> getCommonCodeList(Map<String, Object> map);

	List<Map<String, Object>> getCommonCodeDetailList(Map<String, Object> map);

}
