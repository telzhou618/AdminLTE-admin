package com.vacomall.interceptor;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.baomidou.kisso.SSOConfig;
import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.Token;
import com.baomidou.kisso.annotation.Action;
import com.baomidou.kisso.annotation.Login;
import com.baomidou.kisso.common.util.HttpUtil;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub

		if (handler instanceof HandlerMethod) {
			HandlerMethod handlerMethod = (HandlerMethod) handler;
			Method method = handlerMethod.getMethod();
			Login login = method.getAnnotation(Login.class);
			if (login != null) {
				if (login.action() == Action.Skip) {
					/**
					 * 忽略拦截
					 */
					return true;
				}
			}

			/**
			 * 正常执行
			 */
			Token token = SSOHelper.getToken(request);
			if (token == null) {
				if (HttpUtil.isAjax(request)) {
					HttpUtil.ajaxStatus(response, 302, "session expires.");
					return false;
				} else {
					SSOHelper.clearRedirectLogin(request, response);
					return false;
				}
			} else {
				/*
				 * 正常请求，request 设置 token 减少二次解密
				 */
				request.setAttribute("token", token);
				request.setAttribute(SSOConfig.SSO_TOKEN_ATTR, token);
			}
		}

		/**
		 * 通过拦截
		 */
		return true;

	}

}
