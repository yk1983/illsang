package illsang.wellstone.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import illsang.common.dao.AbstractDAO;

@Repository
public class WellProductDAO extends AbstractDAO {

	/**
	 * @description 제품카테고리 정보 조회
	 * @return List<Map<String,Object>>
	 * @throws Exception
	 */
	public List<Map<String, Object>> getProductCtgrList() throws Exception {
		return selectList("wellproduct.getProductCtgrList");
	}
	
	/**
	 * @description 제품번호 조회
	 * @param Map<String, Object> map
	 * @throws Exception 
	 */
	public int getProductCd(Map<String, Object> map) throws Exception {
		return (int) selectOne("wellproduct.getProductCd", map);
	}
	
	/**
	 * @description 제품중복확인
	 * @param Map<String, Object> map
	 * @throws Exception 
	 */
	public int getProductNm(Map<String, Object> map) {
		return (int) selectOne("wellproduct.getProductNm", map);
	}
	
	/**
	 * @description 제품등록
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public void createProduct(Map<String, Object> map) {
		insert("wellproduct.createProduct", map);
	}
	
	/**
	 * @description 제품상세 등록
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public void createProductDetail(Map<String, Object> map) {
		insert("wellproduct.createProductDetail", map);
	}
	
	/**
	 * @description 제품사진 등록
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	public void createProductFile(Map<String, Object> map) {
		insert("wellproduct.createProductFile", map);
	}

	/**
	 * @description 제품정보 조회
	 * @return List<Map<String,Object>>
	 */
	public List<Map<String, Object>> getProductList() {
		return selectList("wellproduct.getProductList");
	}

	/**
	 * @description 전체 글 개수 조회
	 * @return int
	 */
	public int getProductTotalCnt() {
		return (int) selectOne("wellproduct.getProductTotalCnt");
	}

	/**
	 * @description 전체 글 개수 조회
	 * @return List<Map<String, Object>>
	 */
	public List<Map<String, Object>> getProductDetailList(Map<String, Object> map) {
		return selectList("wellproduct.getProductDetailList", map);
	}
	
}
