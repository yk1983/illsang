package illsang.wellstone.service;

import java.util.List;
import java.util.Map;

public interface WellEstimateService {

	//시공견적문의 목록 조회
	List<Map<String, Object>> getEstimateList(Map<String, Object> map) throws Exception;

	//시공견적문의 글 개수 조회
	int getEstimateTotalCnt(Map<String, Object> map) throws Exception;

	//문의번호 조회
	int getEstimateNo(Map<String, Object> map) throws Exception;

	//시공견적문의 등록
	void createWellEstimate(Map<String, Object> map) throws Exception;

	//비밀번호 조회
	String getPassword(Map<String, Object> map) throws Exception;

	//시공견적문의 상세정보 조회
	Map<String, Object> getEstimateDetail(Map<String, Object> map) throws Exception;

	//시공견적문의 수정
	void updateWellEstimate(Map<String, Object> map) throws Exception;

}
