package illsang.common.logger;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Aspect
public class LoggerAspect {

	protected Logger log = LoggerFactory.getLogger(this.getClass());

	static String name = "";
	static String type = "";

	@Around("execution(* illsang..controller.*Controller.*(..)) or execution(* illsang..service.*Impl.*(..)) or execution(* illsang..dao.*DAO.*(..))")
	public Object logPrint(ProceedingJoinPoint joinPoint) throws Throwable {
		/**
		 * joinPoint가 method이면 해당 class명을 가져온다
		 */
		type = joinPoint.getSignature().getDeclaringTypeName();
		if (type.indexOf("Controller") > -1) {
			name = "Controller \t : ";
		} else if (type.indexOf("Service") > -1) {
			name = "Service \t\t : ";
		} else if (type.indexOf("DAO") > -1) {
			name = "DAO \t\t : ";
		}

		if (log.isDebugEnabled()) {
			log.debug(name + type + "." + joinPoint.getSignature().getName() + "()");
		}

		return joinPoint.proceed();
	}
}
