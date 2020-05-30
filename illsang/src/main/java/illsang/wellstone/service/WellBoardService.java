package illsang.wellstone.service;

import java.util.List;
import java.util.Map;

public interface WellBoardService {
	
	//공지사항 등록
	void createNotice(Map<String, Object> map) throws Exception;
	
	//공지사항 목록 조회
	List<Map<String, Object>> getNoticeList(Map<String, Object> map) throws Exception;
	
	//공지사항 전체 글 개수 조회
	int getNoticeTotalCnt(Map<String, Object> map) throws Exception;

	//공지사항 상세조회
	Map<String, Object> getNoticeDetail(Map<String, Object> map) throws Exception;

}
