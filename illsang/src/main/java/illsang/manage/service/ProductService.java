package illsang.manage.service;

import java.util.List;
import java.util.Map;

public interface ProductService {
	
	// 취급상품관리 품목정보 생성
	void createBeansProductInfo(Map<String, Object> map);
	
	// 취급상품관리 품목정보 수정
	void updateBeansProductInfo(Map<String, Object> map);
	
	// 취급상품관리 목록 조회
	List<Map<String, Object>> getBeansProductList(Map<String, Object> map);
	
	// 취급상품관리 상세정보 조회
	Map<String, Object> findByBeansProduct(Map<String, Object> map);

	List<Map<String, Object>> getStoreProductList(Map<String, Object> map);

	List<Map<String, Object>> getStoreProductReportList(Map<String, Object> map);

	List<Map<String, Object>> getStoreProductCategoryList(Map<String, Object> map);

	List<Map<String, Object>> getStoreProductOptionsList(Map<String, Object> map);	

	// 상품정보관리 품목정보 확인
	Map<String, Object> getStoreProduct(Map<String, Object> map);
	
	// 상품정보관리 품목정보 생성
	void createStoreProductInfo(Map<String, Object> map);

	// 상품정보관리 품목정보 수정
	void updateStoreProductInfo(Map<String, Object> map);

	// 상품정보관리 품목정보 삭제
	void deleteStoreProductInfo(Map<String, Object> map);

}
