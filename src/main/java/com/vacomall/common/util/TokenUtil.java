package com.vacomall.common.util;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vacomall.common.bean.Token;

/**
 * Token操作工具类
 *  Created by Gaojun.Zhou 2017年4月8日
 */
public class TokenUtil {

	/**
	 * 存储Token信息到Session
	 * @param token
	 * @param request
	 */
	public static void addToken(Token token,HttpServletRequest request){
		request.getSession().setAttribute("token", token);
	}
	
	/**
	 * 清理Token
	 * @param token
	 * @param request
	 */
	public static void clearLogin(HttpServletRequest request,HttpServletResponse response){
		request.getSession().removeAttribute("token");
	}
	/**
	 * 清理Token并重定向到登录页面
	 * @param request
	 * @param response
	 */
	public static void clearRedirectLogin(HttpServletRequest request,HttpServletResponse response){
		try {
			clearLogin(request, response);
			response.sendRedirect("/login?return_url="+URLEncoder.encode(request.getRequestURL().toString(),"UTF-8"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 获取Token
	 * @param token
	 * @param request
	 * @return
	 */
	public static Token getToken(HttpServletRequest request){
		Object object = request.getSession().getAttribute("token");
		if(object == null){
			return null;
		}
		return (Token) object;
	}
	
}
