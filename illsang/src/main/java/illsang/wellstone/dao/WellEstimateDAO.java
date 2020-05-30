package illsang.wellstone.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class WellEstimateDAO extends AbstractDAO {

	/**
	 * @description 문의번호 조회
	 * @param Map<String, Object> map
	 * @return int
	 * @throws Exception
	 */
	public int getEstimateNo(Map<String, Object> map) throws Exception {
		return (int) selectOne("wellestimate.getEstimateNo", map);
	}

	/**
	 * @description 시공견적문의 등록
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public void createWellEstimate(Map<String, Object> map) throws Exception {
		insert("wellestimate.createWellEstimate", map);
	}

	/**
	 * @description 시공견적문의 목록 조회
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public List<Map<String, Object>> getEstimateList(Map<String, Object> map) throws Exception {
		return selectList("wellestimate.getEstimateList", map);
	}

	/**
	 * @description 시공견적문의 글 개수 조회
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public int getEstimateTotalCnt(Map<String, Object> map) throws Exception {
		return (int) selectOne("wellestimate.getEstimateTotalCnt", map);
	}

	/**
	 * @description 비밀번호 조회
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public String getPassword(Map<String, Object> map) throws Exception {
		return (String) selectOne("wellestimate.getPassword", map);
	}

	/**
	 * @description 시공견적문의 상세정보 조회
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public Map<String, Object> getEstimateDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("wellestimate.getEstimateDetail", map);
	}

	/**
	 * @description 시공견적문의 수정
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public void updateWellEstimate(Map<String, Object> map) throws Exception {
		update("wellestimate.updateWellEstimate", map);
	}

}
