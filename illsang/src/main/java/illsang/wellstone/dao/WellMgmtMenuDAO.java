package illsang.wellstone.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class WellMgmtMenuDAO extends AbstractDAO{
	
	/**
	 * @description 상위메뉴정보 조회
	 * @return List<Map<String,Object>>
	 */
	public List<Map<String, Object>> getTopMenuList() throws Exception{
		return selectList("wellmgmtmenu.getTopMenuList");
	}

	/**
	 * @description 메뉴유형정보 조회
	 * @return List<Map<String,Object>>
	 */
	public List<Map<String, Object>> getMenuTypeList() throws Exception{
		return selectList("wellmgmtmenu.getMenuTypeList");
	}
	
	/**
	 * @description 메뉴코드정보 조회
	 * @param map
	 */
	public int getMenuCdInfo() throws Exception{
		return (int) selectOne("wellmgmtmenu.getMenuCdInfo");
	}

	/**
	 * @description 메뉴정보 등록
	 * @param map
	 */
	public void createMenuInfo(Map<String, Object> map) throws Exception{
		insert("wellmgmtmenu.createMenuInfo", map);
	}

	/**
	 * @description 메뉴유형정보 조회
	 * @return List<Map<String,Object>>
	 */
	public List<Map<String, Object>> getMenuList() throws Exception{
		return selectList("wellmgmtmenu.getMenuList");
	}

	/**
	 * @description 메뉴정보 수정
	 * @param map
	 */
	public void updateMenu(Map<String, Object> map) throws Exception{
		update("wellmgmtmenu.updateMenu", map);
	}

	/**
	 * @description 메뉴정보 삭제
	 * @param map
	 */
	public void deleteMenu(Map<String, Object> map) throws Exception{
		delete("wellmgmtmenu.deleteMenu", map);
	}
	
}
