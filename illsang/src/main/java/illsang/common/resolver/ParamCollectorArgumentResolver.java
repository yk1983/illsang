package illsang.common.resolver;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class ParamCollectorArgumentResolver implements HandlerMethodArgumentResolver {

	private static final Logger log = LoggerFactory.getLogger(ParamCollectorArgumentResolver.class);
	private static final String JSON_BODY_ATTRIBUTE = "JSON_REQUEST_BODY";

	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		// TODO Auto-generated method stub
		return ParamCollector.class.isAssignableFrom(parameter.getParameterType());
	}
	
	@Override
	public Object resolveArgument(MethodParameter prameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
		ParamCollector collector = new ParamCollector();
		
		HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();
		Enumeration<?> enumeration = request.getParameterNames();
		
		String key = null;
		String[] values = null;
		while (enumeration.hasMoreElements()) {
			key = (String) enumeration.nextElement();
			values = request.getParameterValues(key);
			if (values != null) {
				collector.put(key, (values.length > 1) ? values : values[0]);
			}
		}
		log.debug("Request Params \t : " + collector.getMap());
		
		if(request.getContentType() != null) {
			log.debug("request \t : " + request.getContentType().toLowerCase());
			if (request.getContentType().toLowerCase().startsWith("multipart/form-data")) {
				MultipartHttpServletRequest multi = (MultipartHttpServletRequest)webRequest.getNativeRequest();
				List<MultipartFile> fileList = new ArrayList<MultipartFile>();
				fileList = multi.getFiles("fileupload");
				collector.put("files", fileList);
				for (MultipartFile mf : fileList) {
					String originFileName = mf.getOriginalFilename();
					log.debug("originFileName ::::: " + originFileName);
					collector.put(mf.getOriginalFilename(), mf);
				}
			}
		}
		
		
//		HttpSession session = request.getSession();
//		String body = getRequestBody(webRequest);
//		if (StringUtils.isNotEmpty(body)) {
//			Gson gson = new Gson();
//			Map<String, Object> map = new HashMap<String, Object>();
//			log.debug("body ================ " + body);
//			map = gson.fromJson(body, map.getClass());
//			collector.putAll(map);
//		}
//
//		enumeration = session.getAttributeNames();
//		while (enumeration.hasMoreElements()) {
//			key = (String) enumeration.nextElement();
//			log.debug("key ????????????? " + key);
//			collector.put(key, session.getAttribute(key));
//		}
		return collector;
	}

	/**
	 * 웹에서 Ajax 호출시 메소드가 'put'이거나 'delete'인 경우 데이터가 담겨오는 그릇이 다르므로
	 * 따로 담아서 String형태로 리턴
	 *  
	 * @param NativeWebRequest
	 * @return String
	 */
	private String getRequestBody(NativeWebRequest webRequest) {
		HttpServletRequest servletRequest = webRequest.getNativeRequest(HttpServletRequest.class);
		String body = (String) webRequest.getAttribute(JSON_BODY_ATTRIBUTE, NativeWebRequest.SCOPE_REQUEST);

		if (body == null) {
			try {
				body = IOUtils.toString(servletRequest.getInputStream());
				webRequest.setAttribute(JSON_BODY_ATTRIBUTE, body, NativeWebRequest.SCOPE_REQUEST);
				return body;
			} catch (IOException e) {
				throw new RuntimeException();
			}
		}

		return body;
	}

	private static Map<String, String> splitQuery(String query) throws UnsupportedEncodingException {
	    Map<String, String> query_pairs = new LinkedHashMap<String, String>();
	    String[] pairs = query.split("&");
	    for (String pair : pairs) {
	        int idx = pair.indexOf("=");
	        query_pairs.put(URLDecoder.decode(pair.substring(0, idx), "UTF-8"), URLDecoder.decode(pair.substring(idx + 1), "UTF-8"));
	    }
	    return query_pairs;
	}
}