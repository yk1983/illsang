package illsang.wellstone.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import illsang.common.resolver.ParamCollector;
import illsang.wellstone.service.WellBoardService;
import illsang.wellstone.service.WellMgmtMenuService;

@RestController
@RequestMapping(value = "/wellstone")
public class WellBoardController {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private WellMgmtMenuService service;
	
	@Autowired
	private WellBoardService bservice;
	
	private static final String SAVE_PATH = "C:\\updtest";
	private static final String PREFIX_URL = "C:\\updtest\\";
	
	/**
	 * 웰스톤 관리자(게시판관리 > 공지사항) 페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public ModelAndView getWellNoticePage() {
		ModelAndView mav = new ModelAndView("wellstone/well_board");
		try {
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("ctgrCd", "05");
			map.put("startNum", 0);
			map.put("endNum", 5);
			
			//메뉴정보 가져오기
			List<Map<String, Object>> menuList = service.getMenuList();
			
			//공지사항 조회
			List<Map<String, Object>> list = bservice.getNoticeList(map);

			//전체 글 개수 조회
			int totalCount = bservice.getNoticeTotalCnt(map);
			
			mav.addObject("menuList", menuList);
			mav.addObject("category", "notice");
			mav.addObject("menuNm", "고객센터");
			mav.addObject("code", "05");
			mav.addObject("list", list);
			mav.addObject("totalCount", totalCount);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 공지사항 검색
	 * @return
	 */
	@RequestMapping(value = "/notice", method = RequestMethod.POST)
	public ModelAndView getWellNoticeFilter(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			//공지사항 검색
			List<Map<String, Object>> list = bservice.getNoticeList(collector.getMap());
			
			//전체 글 개수 조회
			int totalCount = bservice.getNoticeTotalCnt(collector.getMap());
			
			mav.addObject("noticeList", list);
			mav.addObject("totalCount", totalCount);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 공지사항 상세검색
	 * @return
	 */
	@RequestMapping(value = "/notice/detail", method = RequestMethod.GET)
	public ModelAndView getWellNoticeDetail(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("wellstone/well_board");
		try {
			
			//메뉴정보 가져오기
			List<Map<String, Object>> menuList = service.getMenuList();

			//공지사항 검색
			Map<String, Object> rslt = bservice.getNoticeDetail(collector.getMap());
			
			mav.addObject("menuList", menuList);
			mav.addObject("category", "notice_detail");
			mav.addObject("menuNm", "고객센터");
			mav.addObject("code", "05");
			mav.addObject("notice", rslt);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 웰스톤 관리자(게시판관리 > 공지사항) 페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/manager/notice", method = RequestMethod.GET)
	public ModelAndView getWellManagerNoticePage() {
		ModelAndView mav = new ModelAndView("wellstone/well_m_board");
		try {
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("ctgrCd", "05");
			map.put("startNum", 0);
			map.put("endNum", 5);
			
			//공지사항 조회
			List<Map<String, Object>> list = bservice.getNoticeList(map);

			//전체 글 개수 조회
			int totalCount = bservice.getNoticeTotalCnt(map);
			
			mav.addObject("category", "m_notice");
			mav.addObject("code", "05");
			mav.addObject("noticeList", list);
			mav.addObject("totalCount", totalCount);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 
	 * @param collector
	 * @return
	 */
	@RequestMapping(value = "/m_notice/page", method =  RequestMethod.POST)
	public ModelAndView getWellBoardPaging(ParamCollector collector) {
		ModelAndView mav = new ModelAndView("jsonView");
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map = collector.getMap();
			
			//limit start number 가 0이므로 +1 제외
			int startNum = (Integer.parseInt(map.get("pageNo").toString()) - 1) * Integer.parseInt(map.get("dataSize").toString());
			int endNum = Integer.parseInt(map.get("pageNo").toString()) * Integer.parseInt(map.get("dataSize").toString());
			
			map.put("startNum", startNum);
			map.put("endNum", endNum);
			
			//공지사항 조회
			List<Map<String, Object>> list = bservice.getNoticeList(collector.getMap());
			
			//전체 글 개수 조회
			int totalCount = bservice.getNoticeTotalCnt(map);
			
			mav.addObject("list", list);
			mav.addObject("totalCount", totalCount);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	/**
	 * 웰스톤 관리자(게시판관리 > 공지사항) 글등록
	 * @return
	 */
	@RequestMapping(value = "/m_notice", method = RequestMethod.POST)
	public ModelAndView createWellBoard(ParamCollector collector, @RequestParam("fileupload") MultipartFile mf) {
		ModelAndView mav = new ModelAndView("jsonView");
		Map<String, Object> res = new HashMap<String, Object>();
		String url = null;
		try {
			log.debug("file upload ::::: " + collector.getMap());
			log.debug("file upload ::::: " + mf);
			
			// 파일 정보
			String originFilename = mf.getOriginalFilename();
			String extName
				= originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			Long size = mf.getSize();
			
			// 서버에서 저장 할 파일 이름
			String saveFileName = genSaveFileName(extName);
			
			System.out.println("originFilename : " + originFilename);
			System.out.println("extensionName : " + extName);
			System.out.println("size : " + size);
			System.out.println("saveFileName : " + saveFileName);
			
			writeFile(mf, saveFileName);
			url = PREFIX_URL + saveFileName;
			
			
			//공지사항 등록
			bservice.createNotice(collector.getMap());
			
			//공지사항 조회
			List<Map<String, Object>> list = bservice.getNoticeList(collector.getMap());
			
			mav.addObject("noticeList", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mav.addObject("rslt", res);
		}
		return mav;
	}
	
	/**
	 * 웰스톤 관리자(게시판관리 > 공지사항) 페이지 호출
	 * @return
	 */
	@RequestMapping(value = "/m_free", method = RequestMethod.GET)
	public ModelAndView getWellManageFreePage() {
		ModelAndView mav = new ModelAndView("wellstone/well_m_board");
		try {
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("ctgrCd", "07");
			map.put("startNum", 1);
			map.put("endNum", 5);
			
			//자유게시판 조회
//			List<Map<String, Object>> list = bservice.getNoticeList(map);
			
			mav.addObject("category", "m_free");
			mav.addObject("code", "07");
//			mav.addObject("noticeList", list);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mav;
	}
	
	// 현재 시간을 기준으로 파일 이름 생성
		private String genSaveFileName(String extName) {
			String fileName = "";
			
			Calendar calendar = Calendar.getInstance();
			fileName += calendar.get(Calendar.YEAR);
			fileName += calendar.get(Calendar.MONTH);
			fileName += calendar.get(Calendar.DATE);
			fileName += calendar.get(Calendar.HOUR);
			fileName += calendar.get(Calendar.MINUTE);
			fileName += calendar.get(Calendar.SECOND);
			fileName += calendar.get(Calendar.MILLISECOND);
			fileName += extName;
			
			return fileName;
		}
		
		
		// 파일을 실제로 write 하는 메서드
		private boolean writeFile(MultipartFile multipartFile, String saveFileName)
									throws IOException{
			boolean result = false;

			byte[] data = multipartFile.getBytes();
			FileOutputStream fos = new FileOutputStream(SAVE_PATH + "/" + saveFileName);
			fos.write(data);
			fos.close();
			
			return result;
		}

}
