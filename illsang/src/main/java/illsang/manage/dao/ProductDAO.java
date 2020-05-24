package illsang.manage.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class ProductDAO extends AbstractDAO {
	
	/**
	 * @description 취급상품관리 품목정보 생성
	 * @params Map<String, Object>
	 * @return void
	 * @throws
	 */
	public void createBeansProductInfo(Map<String, Object> map) {
		insert("product.insertBeansProductInfo", map);
	}

	/**
	 * @description 취급상품관리 품목정보 수정
	 * @params Map<String, Object>
	 * @return void
	 * @throws
	 */
	public void updateBeansProductInfo(Map<String, Object> map) {
		update("product.updateBeansProductInfo", map);
	}

	/**
	 * @description 취급상품관리 목록 조회
	 * @params Map<String, Object>
	 * @return List<Map<String,Object>>
	 * @throws
	 */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getBeansProductList(Map<String, Object> map) {
		String[] key = {"MS001", "MS003", "MS004", "MS005"};
		for (int i = 0; i < key.length; i++) {
			if (map.containsKey(key[i]) && map.get(key[i]) instanceof String) {
				map.put(key[i], map.get(key[i]).toString().split(","));
			}
		}
		return selectList("product.getBeansProductList", map);
	}
	
	/**
	 * @description 취급상품관리 상세정보 조회
	 * @params Map<String, Object>
	 * @return Map<String,Object>
	 * @throws
	 */
	@SuppressWarnings("unchecked")
	public Map<String, Object> findByBeansProduct(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("product.findByBeansProduct", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getStoreProductList(Map<String, Object> map) {
		return selectList("product.getStoreProductList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getStoreProductReportList(Map<String, Object> map) {
		return selectList("product.getStoreProductReportList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getStoreProductCategoryList(Map<String, Object> map) {
		return selectList("product.getStoreProductCategoryList", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getStoreProductOptionsList(Map<String, Object> map) {
		return selectList("product.getStoreProductOptionsList", map);
	}
	
	/**
	 * @description 상품정보관리 품목정보 확인
	 * @params Map<String, Object>
	 * @return void
	 * @throws
	 */
	public Map<String, Object> getStoreProduct(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("product.getStoreProduct", map);
	}
	
	/**
	 * @description 상품정보관리 품목정보 생성
	 * @params Map<String, Object>
	 * @return void
	 * @throws
	 */
	public void createStoreProductInfo(Map<String, Object> map) throws Exception{
		insert("product.createStoreProductInfo", map); 
	}

	/**
	 * @description 상품정보관리 품목정보 수정
	 * @params Map<String, Object>
	 * @return void
	 * @throws
	 */
	public void updateStoreProductInfo(Map<String, Object> map) {
		update("product.updateStoreProductInfo", map);
	}

	/**
	 * @description 상품정보관리 품목정보 삭제
	 * @params Map<String, Object>
	 * @return void
	 * @throws
	 */
	public void deleteStoreProductInfo(Map<String, Object> map) {
		delete("product.deleteStoreProductInfo", map);
	}

}
