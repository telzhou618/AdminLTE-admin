package com.vacomall.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;
import com.vacomall.common.util.SpringUtil;
import com.vacomall.entity.vo.SysMenuVo;
import com.vacomall.service.ISysMenuService;

/**
 * 权限拦截器
 * 
 * @author Gaojun.Zhou
 * @date 2016年12月15日 下午4:27:55
 */
public class ResourcesInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub

		SSOToken token = SSOHelper.getToken(request);

		if (token != null) {
			/**
			 * 登录信息
			 */
			request.setAttribute("token", token);
			/**
			 * 资源
			 */
			String resource = request.getParameter("resource");
			if (StringUtils.isNotBlank(resource)) {
				request.getSession().setAttribute("resource", resource);
			}
			/**
			 * 获取当前用户的菜单
			 */
			List<SysMenuVo> sysMenuVos = SpringUtil.getBean(
					ISysMenuService.class).selectSysMenuTree();
			request.setAttribute("sysMenuVos", sysMenuVos);

		}
		return true;

	}
}
