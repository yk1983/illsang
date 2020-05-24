package illsang.wellstone.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class WellBoardDAO extends AbstractDAO {
	
	/**
	 * @description 글번호 조회
	 * @param map
	 * @throws Exception 
	 */
	public int getBordCd(Map<String, Object> map) throws Exception {
		return (int) selectOne("wellboard.getBordCd", map);
	}

	/**
	 * @description 공지사항 등록
	 * @param map
	 * @throws Exception 
	 */
	public void createNotice(Map<String, Object> map) throws Exception {
		insert("wellboard.createNotice", map);
	}
	
	/**
	 * @description 공지사항 목록 조회
	 * @param map
	 * @return List<Map<String, Object>> 
	 * @throws Exception 
	 */
	public List<Map<String, Object>> getNoticeList(Map<String, Object> map) throws Exception {
		return selectList("wellboard.getNoticeList", map);
	}

	/**
	 * @description 공지사항 전체 글 개수 조회
	 * @param ParamCollector
	 * @return int 
	 * @throws Exception 
	 */
	public int getNoticeTotalCnt(Map<String, Object> map) throws Exception {
		return (int) selectOne("wellboard.getNoticeTotalCnt", map);
	}
	
}
