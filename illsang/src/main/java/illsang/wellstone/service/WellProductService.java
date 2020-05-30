package illsang.wellstone.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface WellProductService {

	//제품카테고리 정보 조회
	List<Map<String, Object>> getProductCtgrList() throws Exception;
	
	//제품번호 조회
	int getProductCd(Map<String, Object> map) throws Exception;
	
	//제품중복확인
	int getProductNm(Map<String, Object> map) throws Exception;

	//제품등록
	void createProduct(Map<String, Object> map) throws Exception;

	//제품상세등록
	void createProductDetail(List<Map<String, Object>> list);

	//제품이미지등록
	void createFile(Map<String, Object> map, MultipartHttpServletRequest request);

	//제품정보 조회
	List<Map<String, Object>> getProductList() throws Exception;

	//전체 글 개수 조회
	int getProductTotalCnt() throws Exception;

	//제품상세정보 조회
	List<Map<String, Object>> getProductDetailList(Map<String, Object> map) throws Exception;

}
