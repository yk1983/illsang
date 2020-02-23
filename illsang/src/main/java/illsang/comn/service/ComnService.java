package illsang.comn.service;

import java.util.List;
import java.util.Map;

public interface ComnService {

	Map<String, Object> getCmnCd(String pMdulCd) throws Exception;
	
	Map<String, Object> getCmnCd(String pMdulCd, String pCommCtgCd) throws Exception;
	
	Map<String, Object> getCmnCd(String pMdulCd, String[] pCommCtgCd) throws Exception;	
	
}
