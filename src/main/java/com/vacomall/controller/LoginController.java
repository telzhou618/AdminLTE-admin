package com.vacomall.controller;

import java.io.IOException;

import javax.servlet.ServletException;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import com.google.code.kaptcha.servlet.KaptchaExtend;
import com.vacomall.common.controller.SuperController;
import com.vacomall.entity.SysUser;
import com.vacomall.service.ISysLogService;
/**
 * 登录控制器
 * @author Gaojun.Zhou
 * @date 2016年12月14日 下午2:54:01
 */
@Controller
@RequestMapping("/login")
public class LoginController extends SuperController{  
	/**
	 * 日志服务
	 */
	@Autowired private ISysLogService sysLogService;
	
	/**
	 * 登录页面
	 */
	@RequestMapping
	public String login(Model model){
		return "login";
	}
	
	/**
	 * 执行登录
	 */
    @RequestMapping(value = "/doLogin",method=RequestMethod.POST)  
    public  String doLogin(String userName,String password, String captcha,String return_url,RedirectAttributesModelMap model){
		
    	Subject currentUser = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(userName, password);
		
		 if (!currentUser.isAuthenticated()) {
	          // token.setRememberMe(true);
	            try {
	                currentUser.login(token);
	            } catch (UnknownAccountException uae) {
	            	
	            	model.addFlashAttribute("error", "未知用户");
	            	return redirectTo("/login");
	            } catch (IncorrectCredentialsException ice) {
	            	model.addFlashAttribute("error", "密码错误");
	            	return redirectTo("/login");
	            } catch (LockedAccountException lae) {
	            	model.addFlashAttribute("error", "账号已锁定");
	            	return redirectTo("/login");
	            }
	            catch (AuthenticationException ae) {
	                //unexpected condition?  error?
	            	model.addFlashAttribute("error", "服务器繁忙");
	            	return redirectTo("/login");
	            }
	        }
		/**
		 * 记录登录日志
		 */
		 Subject subject = SecurityUtils.getSubject();
		 SysUser sysUser = (SysUser) subject.getPrincipal();
		 sysLogService.insertLog("用户登录成功",sysUser.getUserName(),request.getRequestURI(),"");
		 return redirectTo("/");
    }  
	
    /**
     * 验证码
     */
    @RequestMapping("/captcha")
	@ResponseBody
    public  void captcha() throws ServletException, IOException{
		KaptchaExtend kaptchaExtend =  new KaptchaExtend();
		kaptchaExtend.captcha(request, response);
    }
}
