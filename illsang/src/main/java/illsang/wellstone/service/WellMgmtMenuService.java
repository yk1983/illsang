package illsang.wellstone.service;

import java.util.List;
import java.util.Map;

public interface WellMgmtMenuService {
	
	//상위메뉴정보 조회
	List<Map<String, Object>> getTopMenuList() throws Exception;
	
	//메뉴유형정보 조회
	List<Map<String, Object>> getMenuTypeList() throws Exception;

	//메뉴정보 등록
	void createMenuInfo(Map<String, Object> map) throws Exception;

	//메뉴정보 조회
	List<Map<String, Object>> getMenuList() throws Exception;

	//메뉴정보 수정
	void updateMenu(Map<String, Object> map) throws Exception;

	//메뉴정보 삭제
	void deleteMenu(Map<String, Object> map) throws Exception;
	
}
