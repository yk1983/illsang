package illsang.wellstone.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.wellstone.dao.WellBoardDAO;
import illsang.wellstone.service.WellBoardService;

@Service
public class WellBoardServiceImpl implements WellBoardService {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellBoardDAO dao;

	/**
	 * @description 공지사항 조회
	 * @return List<Map<String,Object>>
	 * @throws Exception
	 */
	@Override
	public List<Map<String, Object>> getNoticeList(Map<String, Object> map) throws Exception {
		map.put("startNum", 0);
		map.put("endNum", 5);
		return dao.getNoticeList(map);
	}
	
	/**
	 * @description 공지사항 전체 글 개수 조회
	 * @param ParamCollector : 카테고리 코드
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int getNoticeTotalCnt(Map<String, Object> map) throws Exception {
		return dao.getNoticeTotalCnt(map);
	}

	/**
	 * @description 공지사항 등록
	 * @param ParamCollector
	 * @throws Exception 
	 */
	@Override
	public void createNotice(Map<String, Object> map) throws Exception {
		//글번호 조회
		int cd = dao.getBordCd(map) + 1;
		map.put("postsNo", cd);
		log.debug("cd ::::: " + cd);
		dao.createNotice(map);
	}

	/**
	 * @description 공지사항 상세조회
	 * @param ParamCollector
	 * @throws Exception 
	 */
	@Override
	public Map<String, Object> getNoticeDetail(Map<String, Object> map) throws Exception {
		return dao.getNoticeDetail(map);
	}

}
