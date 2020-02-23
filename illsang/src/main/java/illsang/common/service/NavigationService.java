package illsang.common.service;

import java.util.Map;

public interface NavigationService {

	Map<String, Object> getNavigationList(String gv_tp);

	Map<String, Object> getProgramInfo(String gv_uri);

}
