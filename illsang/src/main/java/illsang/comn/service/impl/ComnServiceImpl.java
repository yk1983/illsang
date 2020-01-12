package illsang.comn.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import illsang.comn.dao.ComnDAO;
import illsang.comn.service.ComnService;

@Service
public class ComnServiceImpl implements ComnService {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private ComnDAO dao;

	/**
	 * 공통코드조회 공통 Service
	 * getCmnCd("MS");
	 */
	@Override
	public Map<String, Object> getCmnCd(String pMdulCd) throws Exception {
		String[] aryCommCtgCd = null;
		return this.getCmnCd(pMdulCd, aryCommCtgCd);
	}
	
	/**
	 * 공통코드조회 공통 Service
	 * getCmnCd("MS", "MS001"); OR getCmnCd("MS", "MS001,MS002");
	 */
	@Override
	public Map<String, Object> getCmnCd(String pMdulCd, String pCommCtgCd) throws Exception {
		String[] aryCommCtgCd = pCommCtgCd.split(",");
		
		if (log.isDebugEnabled()) {
			log.debug("aryCommCtgCd = " + aryCommCtgCd);
		}
		
		return this.getCmnCd(pMdulCd, aryCommCtgCd);
	}
	
	/**
	 * 공통코드조회 공통 Service
	 * getCmnCd("MS", {"MS001","MS002"});
	 */
	@Override
	public Map<String, Object> getCmnCd(String pMdulCd, String[] pCommCtgCd) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("p_wrk_mdul_cd", pMdulCd);
		map.put("p_comm_ctg_cd", pCommCtgCd);
		return dao.getCmnCd(map);
	}

}
