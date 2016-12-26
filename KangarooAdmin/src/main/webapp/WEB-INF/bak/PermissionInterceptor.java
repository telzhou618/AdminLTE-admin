package com.vacomall.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.Token;
import com.google.common.base.Function;
import com.google.common.collect.Lists;
import com.vacomall.common.anno.PermissionSecurity;
import com.vacomall.common.util.SpringUtil;
import com.vacomall.entity.SysMenu;
import com.vacomall.service.ISysMenuService;

/**
 * 资源拦截器
 * @author Gaojun.Zhou
 * @date 2016年12月15日 下午2:35:27
 */
public class PermissionInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		if (handler instanceof HandlerMethod) {
			HandlerMethod handlerMethod = (HandlerMethod) handler;
			Token token = SSOHelper.getToken(request);
			if (token != null) {
				List<SysMenu> list = SpringUtil.getBean(ISysMenuService.class).selectMenuByuserId(token.getUid());
				
				List<String> reources = Lists.transform(list, new Function<SysMenu, String>() {
					@Override
					public String apply(SysMenu input) {
						// TODO Auto-generated method stub
						return input.getResource();
					}
				});
				
				PermissionSecurity permissionSecurity =  handlerMethod.getBeanType().getAnnotation(PermissionSecurity.class);
				if(permissionSecurity!=null){
					if(reources.contains(permissionSecurity.value())){
						return true;
					}
					request.getRequestDispatcher("/error/illegalAccess").forward(request, response);
					return false;
				}
			}
		}
		return true;
	}
}
