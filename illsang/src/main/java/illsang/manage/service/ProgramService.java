package illsang.manage.service;

import java.util.List;
import java.util.Map;

public interface ProgramService {

	List<Map<String, Object>> getProgramCategryList(Map<String, Object> map);

	List<Map<String, Object>> getProgramCategoryTreeView(Map<String, Object> map);

	List<Map<String, Object>> getProgramList(Map<String, Object> map);

}
