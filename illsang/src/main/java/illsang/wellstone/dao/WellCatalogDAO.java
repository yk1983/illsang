package illsang.wellstone.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class WellCatalogDAO extends AbstractDAO {

	/**
	 * @description 카달로그신청 목록 조회
	 * @param ParamCollector
	 * @return List<Map<String,Object>>
	 * @throws Exception
	 */
	public List<Map<String, Object>> getCatalogList(Map<String, Object> map) throws Exception {
		return selectList("wellcatalog.getCatalogList", map);
	}

	/**
	 * @description 카달로그신청 글 개수 조회
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public int getCatalogTotalCnt(Map<String, Object> map) throws Exception {
		return (int) selectOne("wellcatalog.getCatalogTotalCnt", map);
	}

	/**
	 * @description 게시글번호 조회
	 * @param ParamCollector
	 * @return int
	 * @throws Exception
	 */
	public int getCatalogNo(Map<String, Object> map) throws Exception {
		return (int) selectOne("wellcatalog.getCatalogNo", map);
	}

	/**
	 * @description 카달로그신청 등록
	 * @param ParamCollector
	 * @throws Exception
	 */
	public void createWellCatalog(Map<String, Object> map) throws Exception {
		insert("wellcatalog.createWellCatalog", map);
	}

	/**
	 * @description 비밀번호 조회
	 * @param ParamCollector
	 * @throws Exception
	 */
	public String getPassword(Map<String, Object> map) throws Exception {
		return (String) selectOne("wellcatalog.getPassword", map);
	}

	/**
	 * @description 카달로그신청 상세정보 조회
	 * @param ParamCollector
	 * @throws Exception
	 */
	public Map<String, Object> getCatalogDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("wellcatalog.getCatalogDetail", map);
	}

	/**
	 * @description 카달로그신청 수정
	 * @param ParamCollector
	 * @throws Exception
	 */
	public void updateWellCatalog(Map<String, Object> map) throws Exception {
		update("wellcatalog.updateWellCatalog", map);
	}

}
