package com.vacomall.token;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.vacomall.anno.IgnoreSecurity;
import com.vacomall.exception.TokenException;
/**
 * Token验证
 * @author Administrator
 *
 */
@Aspect
@Component
public class SecurityAspect {
	
	private static final String DEFAULT_TOKEN_NAME = "X-Token";

	@Autowired private TokenManager tokenManager;
	
	@Pointcut("@annotation(org.springframework.web.bind.annotation.RequestMapping)")
	public void controllerAspect() {
		
	}
	
	/**
	 * 接收到客户端请求时执行
	 * @param pjp
	 * @return
	 * @throws Throwable
	 */
	@Around("controllerAspect()")
	public Object execute(ProceedingJoinPoint pjp) throws Throwable {
		// 从切点上获取目标方法
		MethodSignature methodSignature = (MethodSignature) pjp.getSignature();
		Method method = methodSignature.getMethod();
		// 若目标方法忽略了安全性检查，则直接调用目标方法
		if (method.isAnnotationPresent(IgnoreSecurity.class)) {
			return pjp.proceed();
		}
		// 从 request header 中获取当前 token
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();  
		String token = 	request.getHeader(DEFAULT_TOKEN_NAME);
		// 检查 token 有效性
		if (!tokenManager.checkToken(token)) {
			String message = String.format("token [%s] is invalid", token);
			throw new TokenException(message);
		}
		// 调用目标方法
		return pjp.proceed();
	}
}
