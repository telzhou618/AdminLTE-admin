package com.vacomall.interceptor;

import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.vacomall.common.anno.Login;
import com.vacomall.common.bean.Token;
import com.vacomall.common.enums.Action;
import com.vacomall.common.util.HttpUtil;
import com.vacomall.common.util.SpringUtil;
import com.vacomall.common.util.TokenUtil;
import com.vacomall.entity.SysSetting;
import com.vacomall.entity.SysUser;
import com.vacomall.entity.vo.TreeMenu;
import com.vacomall.service.ISysMenuService;
import com.vacomall.service.ISysSettingService;
import com.vacomall.service.ISysUserService;
/**
 * 登录拦截器
 * @author Gaojun.Zhou
 * @date 2016年12月27日 上午11:52:56
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub

		if (handler instanceof HandlerMethod) {
			
			/**
			 * 加载全局非登录访问常量
			 */
			List<SysSetting> list =  SpringUtil.getBean(ISysSettingService.class).findAll();
			for(SysSetting setting : list){
				request.setAttribute(setting.getSysKey(),setting.getSysValue());
			}
			
			/**
			 * 登录验证
			 */
			HandlerMethod handlerMethod = (HandlerMethod) handler;
			Method method = handlerMethod.getMethod();
			Login login = method.getAnnotation(Login.class);
			if (login != null) {
				if (login.action() == Action.Skip) {
					return true;
				}
			}

			/**
			 * 正常执行
			 */
			Token token = TokenUtil.getToken(request);
			if (token == null) {
				if (HttpUtil.isAjax(request)) {
					HttpUtil.ajaxStatus(response, 302, "session expires.");
					return false;
				} else {
					TokenUtil.clearRedirectLogin(request, response);
					return false;
				}
			} else {
				/**
				 * 保存登录信息
				 */
				SysUser me = SpringUtil.getBean(ISysUserService.class).selectById(token.getUid());
				me.setPassword("");
				request.setAttribute("me", me);
				/**
				 * 资源和当前选中菜单
				 */
				String res = request.getParameter("res");
				if (StringUtils.isNotBlank(res)) {
					request.getSession().setAttribute("res", res);
				}
				String cur = request.getParameter("cur");
				if (StringUtils.isNotBlank(cur)) {
					request.getSession().setAttribute("cur", cur);
				}
				/**
				 * 获取当前用户的菜单
				 */
				List<TreeMenu> treeMenus = SpringUtil.getBean(ISysMenuService.class).selectTreeMenuByUserId(token.getUid());
				request.setAttribute("treeMenus", treeMenus);
				
				/**
				 * 获取当前用户的权限列表,用于控制页面功能按钮是否显示
				 */
				List<String> list2 = SpringUtil.getBean(ISysMenuService.class).selectMenuIdsByuserId(token.getUid());
				String[] permissions = list2.toArray(new String[list2.size()]);
				request.setAttribute("permissions", permissions);
			}
		}

		/**
		 * 通过拦截
		 */
		return true;
	}

}
