package illsang.wellstone.service;

import java.util.List;
import java.util.Map;

public interface WellCatalogService {
	
	//카달로그신청 목록 조회
	List<Map<String, Object>> getCatalogList(Map<String, Object> map) throws Exception;

	//카달로그신청 글 개수 조회
	int getCatalogTotalCnt(Map<String, Object> map) throws Exception;

	//문의번호 조회
	int getCatalogNo(Map<String, Object> map) throws Exception;

	//카달로그신청 등록
	void createWellCatalog(Map<String, Object> map) throws Exception;

	//비밀번호 조회
	String getPassword(Map<String, Object> map) throws Exception;

	//카달로그신청 상세정보 조회
	Map<String, Object> getCatalogDetail(Map<String, Object> map) throws Exception;

	//카달로그신청 수정
	void updateWellCatalog(Map<String, Object> map) throws Exception;

}
