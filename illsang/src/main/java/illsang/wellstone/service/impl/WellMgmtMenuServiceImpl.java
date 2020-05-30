package illsang.wellstone.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.wellstone.dao.WellMgmtMenuDAO;
import illsang.wellstone.service.WellMgmtMenuService;

@Service
public class WellMgmtMenuServiceImpl implements WellMgmtMenuService {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellMgmtMenuDAO dao;
	
	/**
	 * @description 상위메뉴정보 조회
	 * @return List<Map<String,Object>>
	 * @throws Exception
	 */
	@Override
	public List<Map<String, Object>> getTopMenuList() throws Exception {
		return dao.getTopMenuList();
	}

	/**
	 * @description 메뉴유형정보 조회
	 * @return List<Map<String,Object>>
	 * @throws Exception 
	 */
	@Override
	public List<Map<String, Object>> getMenuTypeList() throws Exception {
		return dao.getMenuTypeList();
	}

	/**
	 * @description 메뉴정보 등록
	 * @param ParamCollector
	 * @throws Exception 
	 */
	@Override
	public void createMenuInfo(Map<String, Object> map) throws Exception {
		//메뉴코드정보 조회
		int menuCd = dao.getMenuCdInfo();
		map.put("menuCd", menuCd + 1);
		dao.createMenuInfo(map);
	}

	/**
	 * @description 메뉴정보 조회
	 * @throws Exception 
	 */
	@Override
	public List<Map<String, Object>> getMenuList() throws Exception{
		return dao.getMenuList();
	}

	/**
	 * @description 메뉴정보 수정
	 * @param ParamCollector
	 * @throws Exception 
	 */
	@Override
	public void updateMenu(Map<String, Object> map) throws Exception {
		dao.updateMenu(map);
	}

	/**
	 * @description 메뉴정보 삭제
	 * @param ParamCollector
	 * @throws Exception 
	 */
	@Override
	public void deleteMenu(Map<String, Object> map) throws Exception {
		dao.deleteMenu(map);
	}

	/**
	 * @description 공통코드 가져오기
	 * @return List<Map<String,Object>>
	 * @throws Exception 
	 */
	@Override
	public List<Map<String, Object>> getCommonList(String param) throws Exception {
		return dao.getCommonList(param);
	}

}
