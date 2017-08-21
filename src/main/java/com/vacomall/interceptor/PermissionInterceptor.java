package com.vacomall.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.vacomall.common.anno.Permission;
import com.vacomall.common.bean.Token;
import com.vacomall.common.util.TokenUtil;
import com.vacomall.service.IPermissionService;

/**
 * 资源拦截器
 * @author Gaojun.Zhou
 * @date 2016年12月15日 下午2:35:27
 */
public class PermissionInterceptor extends HandlerInterceptorAdapter {
	
	/**
	 * 权限服务
	 */
	private IPermissionService  permissionService;
	
	
	public IPermissionService getPermissionService() {
		return permissionService;
	}



	public void setPermissionService(IPermissionService permissionService) {
		this.permissionService = permissionService;
	}



	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		if (handler instanceof HandlerMethod) {
			HandlerMethod handlerMethod = (HandlerMethod) handler;
			Token token = TokenUtil.getToken(request);
			Permission permissionSecurity =  handlerMethod.getMethodAnnotation(Permission.class);
			if(permissionSecurity != null){
				if(permissionService.hasPermission(token, permissionSecurity.value())){
					return true;
				}
				request.setAttribute("url",request.getRequestURL());
				request.getRequestDispatcher("/error/illegalAccess").forward(request, response);
				return false;
			}
		}
		return true;
	}
}
