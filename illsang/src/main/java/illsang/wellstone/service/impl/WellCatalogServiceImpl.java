package illsang.wellstone.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.wellstone.dao.WellCatalogDAO;
import illsang.wellstone.service.WellCatalogService;

@Service
public class WellCatalogServiceImpl implements WellCatalogService {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellCatalogDAO dao;

	/**
	 * @description 카달로그신청 목록 조회
	 * @param ParamCollector
	 * @return List<Map<String,Object>>
	 * @throws Exception
	 */
	@Override
	public List<Map<String, Object>> getCatalogList(Map<String, Object> map) throws Exception {
		return dao.getCatalogList(map);
	}

	/**
	 * @description 카달로그신청 글 개수 조회
	 * @param ParamCollector
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int getCatalogTotalCnt(Map<String, Object> map) throws Exception {
		return dao.getCatalogTotalCnt(map);
	}

	/**
	 * @description 게시글번호 조회
	 * @param ParamCollector
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int getCatalogNo(Map<String, Object> map) throws Exception {
		return dao.getCatalogNo(map);
	}

	/**
	 * @description 카달로그신청 등록
	 * @param ParamCollector
	 * @throws Exception
	 */
	@Override
	public void createWellCatalog(Map<String, Object> map) throws Exception {
		dao.createWellCatalog(map);
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
	 * @description 카달로그신청 상세정보 조회
	 * @param ParamCollector
	 * @throws Exception
	 */
	@Override
	public Map<String, Object> getCatalogDetail(Map<String, Object> map) throws Exception {
		return dao.getCatalogDetail(map);
	}

	/**
	 * @description 카달로그신청 수정
	 * @param ParamCollector
	 * @throws Exception
	 */
	@Override
	public void updateWellCatalog(Map<String, Object> map) throws Exception {
		dao.updateWellCatalog(map);
	}

}
