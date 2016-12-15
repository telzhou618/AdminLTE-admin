package com.vacomall.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.Token;
import com.vacomall.common.anno.PermissionSecurity;
import com.vacomall.common.util.SpringUtil;
import com.vacomall.service.ISysUserRoleService;

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
				List<String> list = SpringUtil.getBean(ISysUserRoleService.class).selectPermissionByUid(token.getUid());
				PermissionSecurity permissionSecurity =  handlerMethod.getBeanType().getAnnotation(PermissionSecurity.class);
				if(permissionSecurity!=null){
					if(list.contains(permissionSecurity.value())){
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
