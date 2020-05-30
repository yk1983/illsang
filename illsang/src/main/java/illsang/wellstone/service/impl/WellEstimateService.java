package illsang.wellstone.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.wellstone.dao.WellEstimateDAO;

@Service
public class WellEstimateService implements illsang.wellstone.service.WellEstimateService {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellEstimateDAO dao;
	
	/**
	 * @description 시공견적문의 목록 조회
	 * @param ParamCollector
	 * @return List<Map<String,Object>>
	 * @throws Exception
	 */
	@Override
	public List<Map<String, Object>> getEstimateList(Map<String, Object> map) throws Exception {
		return dao.getEstimateList(map);
	}

	/**
	 * @description 시공견적문의 글 개수 조회
	 * @param ParamCollector
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int getEstimateTotalCnt(Map<String, Object> map) throws Exception {
		return dao.getEstimateTotalCnt(map);
	}

	/**
	 * @description 문의번호 조회
	 * @param ParamCollector
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int getEstimateNo(Map<String, Object> map) throws Exception {
		return dao.getEstimateNo(map);
	}

	/**
	 * @description 시공견적문의 등록
	 * @param ParamCollector
	 * @throws Exception
	 */
	@Override
	public void createWellEstimate(Map<String, Object> map) throws Exception {
		dao.createWellEstimate(map);
	}

	/**
	 * @description 비밀번호 조회
	 * @param ParamCollector
	 * @throws Exception
	 */
	@Override
	public String getPassword(Map<String, Object> map) throws Exception {
		return dao.getPassword(map);
	}

	/**
	 * @description 시공견적문의 상세정보 조회
	 * @param ParamCollector
	 * @throws Exception
	 */
	@Override
	public Map<String, Object> getEstimateDetail(Map<String, Object> map) throws Exception {
		return dao.getEstimateDetail(map);
	}

	
	/**
	 * @description 시공견적문의 수정
	 * @param ParamCollector
	 * @throws Exception
	 */
	@Override
	public void updateWellEstimate(Map<String, Object> map) throws Exception {
		dao.updateWellEstimate(map);
	}

}
