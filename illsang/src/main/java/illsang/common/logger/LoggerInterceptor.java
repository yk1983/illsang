package illsang.common.logger;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import illsang.common.service.NavigationService;
import illsang.common.vo.GlobalVO;
import illsang.common.vo.SessionVO;

public class LoggerInterceptor extends HandlerInterceptorAdapter {

	private static final Logger log = LoggerFactory.getLogger(LoggerInterceptor.class);

	@Autowired
	private NavigationService service;

	/**
	 * 인터셉터 전 처리 @param HttpServletRequest @param HttpServletResponse @param
	 * Object @return @throws
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String gv_uri = request.getRequestURI();

		try {
			// session check logic
			HttpSession hs = request.getSession();
			String gvUsrId = (String) hs.getAttribute("gvUsrId");
			String gvUsrNm = (String) hs.getAttribute("gvUsrNm");
			if (log.isDebugEnabled()) {
				log.debug(
						"======================================          START         ======================================\n");
				log.debug("Request URI \t:  " + gv_uri);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView model)
			throws Exception {
		String gv_uri = request.getRequestURI();
		try {
			if (gv_uri.indexOf("manage") > -1 && model != null && !model.getViewName().equals("jsonView")) {
				// 현재시각
				long time = System.currentTimeMillis();
				model.addObject("timestamp", time);

				// 화면 호출시 네비게이션 정보 호출
				Map<String, Object> info = service.getProgramInfo(gv_uri);
				model.addObject("gvPgmInfo", info);
			}

			if (log.isDebugEnabled()) {
				log.debug(
						"======================================           END          ======================================\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception ex) {
		String gv_uri = request.getRequestURI();
		long time = System.currentTimeMillis();
		if (log.isDebugEnabled()) {
			log.debug(
					"======================================      AFTER COMPLATE    ======================================\n");
		}
	}

	private boolean isCheckRequestURIExtension(String uri) {
		boolean bChecked = true;
		String[] extension = { "/js", "/plugins", "/css", "/media" };
		for (int i = 0; i < extension.length; i++) {
			if (uri.indexOf(extension[i]) > -1) {
				bChecked = false;
			}
		}
		return bChecked;
	}
}
