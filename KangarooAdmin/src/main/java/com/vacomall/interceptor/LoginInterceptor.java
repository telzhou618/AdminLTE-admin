package com.vacomall.interceptor;

import java.lang.reflect.Method;
import java.util.List;

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
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.vacomall.common.util.SpringUtil;
import com.vacomall.entity.SysSetting;
import com.vacomall.service.ISysSettingService;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub

		if (handler instanceof HandlerMethod) {
			
			/**
			 * 加载全局常量
			 */
			List<SysSetting> list =  SpringUtil.getBean(ISysSettingService.class).selectList(new EntityWrapper<SysSetting>().orderBy("sort",true));
			for(SysSetting setting : list){
				request.setAttribute(setting.getSysKey(),setting.getSysValue());
			}
			
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
				request.setAttribute(SSOConfig.SSO_TOKEN_ATTR, token);
			}
		}

		/**
		 * 通过拦截
		 */
		return true;

	}

}
