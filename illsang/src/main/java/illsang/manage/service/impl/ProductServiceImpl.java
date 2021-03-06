package illsang.manage.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.manage.dao.ProductDAO;
import illsang.manage.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO dao;
	
	/**
	 * @description 취급상품관리 품목정보 생성
	 * @params Map<String, Object>
	 * @return 
	 * @throws
	 */
	@Override
	public void createBeansProductInfo(Map<String, Object> map) {
		dao.createBeansProductInfo(map);
	}
	
	/**
	 * @description 취급상품관리 품목정보 수정
	 * @params Map<String, Object>
	 * @return 
	 * @throws
	 */
	@Override
	public void updateBeansProductInfo(Map<String, Object> map) {
		dao.updateBeansProductInfo(map);
	}
	
	/**
	 * @description 취급상품관리 목록 조회
	 * @params Map<String, Object>
	 * @return List<Map<String,Object>>
	 * @throws
	 */
	@Override
	public List<Map<String, Object>> getBeansProductList(Map<String, Object> map) {
		return dao.getBeansProductList(map);
	}
	
	/**
	 * @description 취급상품관리 상세정보 조회
	 * @params Map<String, Object>
	 * @return Map<String,Object>
	 * @throws
	 */
	@Override
	public Map<String, Object> findByBeansProduct(Map<String, Object> map) {
		return dao.findByBeansProduct(map);
	}

	@Override
	public List<Map<String, Object>> getStoreProductList(Map<String, Object> map) {
		return dao.getStoreProductList(map);
	}

	@Override
	public List<Map<String, Object>> getStoreProductReportList(Map<String, Object> map) {
		return dao.getStoreProductReportList(map);
	}

	@Override
	public List<Map<String, Object>> getStoreProductCategoryList(Map<String, Object> map) {
		return dao.getStoreProductCategoryList(map);
	}

	@Override
	public List<Map<String, Object>> getStoreProductOptionsList(Map<String, Object> map) {
		return dao.getStoreProductOptionsList(map);
	}
	
	/**
	 * @description 상품정보관리 품목정보 확인 
	 * @params Map<String, Object>
	 * @throws
	 */
	@Override
	public Map<String, Object> getStoreProduct(Map<String, Object> map) {
		Map<String, Object> rslt = null;
		try {
			rslt = dao.getStoreProduct(map);
		} catch (Exception e) {

		}
		return rslt;
	}
	
	/**
	 * @description 상품정보관리 품목정보 생성 
	 * @params Map<String, Object>
	 * @throws
	 */
	@Override
	public void createStoreProductInfo(Map<String, Object> map) {
		try {
			dao.createStoreProductInfo(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @description 상품정보관리 품목정보 수정
	 * @params Map<String, Object>
	 * @throws
	 */
	@Override
	public void updateStoreProductInfo(Map<String, Object> map) {
		try {
			dao.updateStoreProductInfo(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteStoreProductInfo(Map<String, Object> map) {
		try {
			dao.deleteStoreProductInfo(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
