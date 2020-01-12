package illsang.comm.resolver;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

public class ParamCollectorArgumentResolver implements HandlerMethodArgumentResolver {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		return ParamCollector.class.isAssignableFrom(parameter.getParameterType());
	}

	@Override
	public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
		ParamCollector collector = new ParamCollector();
		HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();
		HttpSession session = request.getSession();
		Enumeration<?> enumeration = request.getParameterNames();
		
		String key = null;
		String[] values = null;
		while (enumeration.hasMoreElements()) {
			key = (String) enumeration.nextElement();
			values = request.getParameterValues(key);
			
			if (log.isDebugEnabled()) {
				log.debug("### " + key + " = " + values + " ###");
			}
			
			if (values != null) {
				// 배열 변수로 인하여 배열 "[]"을 제거
				collector.put(key.replace("[]", ""), (values.length > 1) ? values : values[0]);
			}
		}
		
		if (log.isDebugEnabled()) {
			log.debug(" Request Params \t:  " + collector.getMap());
		}
		
		return collector;
	}
    
}
