package com.vacomall.aspect;

import java.lang.reflect.Method;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

import com.vacomall.anno.Log;
/**
 * 正常业务日志记录
 * @author Administrator
 *
 */
@Aspect
@Component
public class LogAdvice {
	
	@Pointcut("@annotation(com.vacomall.anno.Log)")
	public void controllerAspect() {
		
	}
	/**
	 * 当方法正常返回是执行
	 * @param joinPoint
	 */
	@AfterReturning("controllerAspect()")
	public void doBefore(JoinPoint joinPoint) {
		
		MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();
		Method method = methodSignature.getMethod();
		Log log =  method.getAnnotation(Log.class);
		if(log != null){
			System.out.println(String.format("记录业务日志.[%s]",log.value()));
		}
	}
}
