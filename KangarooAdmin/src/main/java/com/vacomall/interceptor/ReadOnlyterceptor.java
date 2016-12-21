package com.vacomall.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ReadOnlyterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub

		if (handler instanceof HandlerMethod) {
			
			String uri = request.getRequestURI();
			
			if( uri.indexOf("doAdd")!= -1 || 
				uri.indexOf("doEdit")!= -1 ||
				uri.indexOf("delete")!= -1 ||
				uri.indexOf("doChangePwd")!= -1 ||
				uri.indexOf("doAddMenu")!= -1 ||
				uri.indexOf("doAddDir")!= -1 ||
				uri.indexOf("doAuth")!= -1 ||
				uri.indexOf("deleteBatch")!= -1 ||
				uri.indexOf("doSetting")!= -1 
			){
				request.getRequestDispatcher("/error/illegalAccess").forward(request, response);
				return false;
			}
		}

		return true;

	}

}
