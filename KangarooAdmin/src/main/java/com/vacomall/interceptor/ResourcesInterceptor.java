package com.vacomall.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.Token;
import com.vacomall.common.util.SpringUtil;
import com.vacomall.entity.SysUser;
import com.vacomall.entity.vo.SysMenuVo;
import com.vacomall.service.ISysMenuService;
import com.vacomall.service.ISysUserService;

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

		
		if (handler instanceof HandlerMethod) {
			
			Token token = SSOHelper.getToken(request);
			
			if (token != null) {
				/**
				 * 登录信息
				 */
				SysUser me = SpringUtil.getBean(ISysUserService.class).selectById(token.getUid());
				me.setPassword("");
				request.setAttribute("me", me);
				/**
				 * 资源
				 */
				String resource = request.getParameter("resource");
				if (StringUtils.isNotBlank(resource)) {
					request.getSession().setAttribute("resource", resource);
				}
				String cur = request.getParameter("cur");
				if (StringUtils.isNotBlank(cur)) {
					request.getSession().setAttribute("cur", cur);
				}
				/**
				 * 获取当前用户的菜单
				 */
				//List<SysMenuVo> sysMenuVos = SpringUtil.getBean(ISysMenuService.class).selectSysMenuTree();
				List<SysMenuVo> sysMenuVos = SpringUtil.getBean(ISysMenuService.class).selectMenuVoByuserId(token.getUid());
				request.setAttribute("sysMenuVos", sysMenuVos);
				
			}
			
		}
		
		return true;
	}
}
