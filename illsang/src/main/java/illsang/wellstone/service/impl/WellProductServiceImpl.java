package illsang.wellstone.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import illsang.wellstone.utils.FileUtils;
import illsang.wellstone.dao.WellProductDAO;
import illsang.wellstone.service.WellProductService;
import illsang.wellstone.utils.CommonUtils;

@Service
public class WellProductServiceImpl implements WellProductService {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
    private FileUtils fileUtils = new FileUtils();
	
	@Autowired
	private WellProductDAO dao;

	/**
	 * @description 제품카테고리 정보 조회
	 * @return List<Map<String,Object>>
	 * @throws Exception
	 */
	@Override
	public List<Map<String, Object>> getProductCtgrList() throws Exception {
		return dao.getProductCtgrList();
	}
	
	/**
	 * @description 제품번호 조회
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	@Override
	public int getProductCd(Map<String, Object> map) throws Exception {
		return dao.getProductCd(map);
	}
	
	/**
	 * @description 제품중복확인
	 * @param Map<String, Object> map
	 * @throws Exception
	 */
	@Override
	public int getProductNm(Map<String, Object> map) {
		return dao.getProductNm(map);
	}

	/**
	 * @description 제품등록
	 * @param Map<String, Object> map, MultipartHttpServletRequest request
	 * @throws Exception
	 */
	@Override
	public void createProduct(Map<String, Object> map) {
		log.debug("map ::::: " + map.toString());
		//제품등록
		dao.createProduct(map);
	}

	/**
	 * @description 제품상세등록
	 * @param List<Map<String, Object>> list
	 * @throws Exception
	 */
	@Override
	public void createProductDetail(List<Map<String, Object>> list) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		log.debug("map :::::: " + map);
		dao.createProductDetail(map);
	}

	/**
	 * @description 제품상세등록
	 * @param Map<String, Object> map : 제품정보
	 * @param MultipartHttpServletRequest request : 파일정보
	 * @throws Exception
	 */
	@Override
	public void createFile(Map<String, Object> map, MultipartHttpServletRequest request) {
		List<Map<String, Object>> list;
		List<Map<String, Object>> params = new ArrayList<Map<String,Object>>();
		Map<String, Object> files = new HashMap<String, Object>();
		try {
			
			//file name 확인
			MultipartFile multipartFile = null;
			Iterator<String> iterator = request.getFileNames();
			String originalFileName = null;
	        String originalFileExtension = null;
	        String storedFileName = null;
	        
			while (iterator.hasNext()) {
				log.debug("iterator ::::: " + iterator.next().toString());
				multipartFile = request.getFile(iterator.next());
				if(multipartFile.isEmpty() == false) {
					originalFileName = multipartFile.getOriginalFilename();
					originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
					storedFileName = CommonUtils.getRandomString() + originalFileExtension;
//					if(iterator.next().toString().contains("thumbnail")) {
//						log.debug("MAIN_YN ::::: Y");
//	                } else {
//	                	log.debug("MAIN_YN ::::: N");
//	                }
					log.debug("ORIGINAL_FILE_NAME ::::: " + originalFileName);
					log.debug("STORED_FILE_NAME ::::: " + storedFileName);
					log.debug("FILE_EXTENSION ::::: " + multipartFile.getSize());
					log.debug("FILE_SIZE ::::: " + multipartFile.getSize());
				}
			}
			
			//server file 저장
			list = fileUtils.parseInsertFileInfo(map, request);
			
			for (int i = 0; i < list.size(); i++) {
				log.debug("list ::::: " + list.get(i).toString());
	            Map<String, Object> param = list.get(i);
	            param.put("prdCtgr", map.get("prdCtgr"));
	            param.put("prdCd", map.get("prdCd"));
	            param.put("reqNo", i+1);
	            params.add(param);
	        }
			
			log.debug("params ::::: " + params);
			
			//파일등록
			files.put("list", params);
            dao.createProductFile(files);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @description 제품정보 조회
	 * @throws Exception
	 */
	@Override
	public List<Map<String, Object>> getProductList() throws Exception {
		return dao.getProductList();
	}

	/**
	 * @description 전체 글 개수 조회
	 * @throws Exception
	 */
	@Override
	public int getProductTotalCnt() throws Exception {
		return dao.getProductTotalCnt();
	}

	/**
	 * @description 제품상세등록
	 * @param Map<String, Object> map : 제품정보
	 * @return List<Map<String,Object>> : 제품상세정보
	 * @throws Exception
	 */
	@Override
	public List<Map<String, Object>> getProductDetailList(Map<String, Object> map) throws Exception {
		return dao.getProductDetailList(map);
	}

}
