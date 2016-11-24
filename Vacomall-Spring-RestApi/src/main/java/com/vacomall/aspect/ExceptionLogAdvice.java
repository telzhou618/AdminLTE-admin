package com.vacomall.aspect;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
/**
 * 异常日志记录
 * @author Administrator
 *
 */
@Aspect
@Component
public class ExceptionLogAdvice {
	
	public static final Logger logger = Logger.getLogger(ExceptionLogAdvice.class);
	
	@Pointcut("@annotation(org.springframework.web.bind.annotation.RequestMapping)")
	public void doAfterThrowing() {
		
	}
	
	/**
	 * 当系统抛出异常后执行
	 * @param joinPoint
	 */
	@AfterThrowing( value = "doAfterThrowing()",throwing = "e")
	public void doAfterThrowing(JoinPoint jp, Throwable e)  throws Throwable{
		
		MethodSignature methodSignature = (MethodSignature) jp.getSignature();
		Method method = methodSignature.getMethod();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("className", jp.getTarget().getClass().getName());
		map.put("methodName", method.getName());
		map.put("args",JSON.toJSONString(jp.getArgs(), SerializerFeature.BrowserCompatible));
		map.put("errorMsg",e.getMessage());
		logger.error(new ObjectMapper().writeValueAsString(map));
	}
}
