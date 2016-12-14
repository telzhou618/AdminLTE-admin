package com.vacomall.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.ServletException;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.kisso.SSOConfig;
import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;
import com.baomidou.kisso.annotation.Action;
import com.baomidou.kisso.annotation.Login;
import com.baomidou.kisso.common.IpHelper;
import com.google.code.kaptcha.servlet.KaptchaExtend;
import com.vacomall.common.anno.Log;
import com.vacomall.common.bean.Response;
import com.vacomall.common.controller.SuperController;
import com.vacomall.entity.SysUser;
import com.vacomall.service.ISysUserService;
/**
 * 登录控制器
 * @author Gaojun.Zhou
 * @date 2016年12月14日 下午2:54:01
 */
@Controller
@RequestMapping("/login")
public class LoginController extends SuperController{  
    
	/**
	 * 用户服务
	 */
	@Autowired private ISysUserService sysUserService;
	
	/**
	 * 登录页面
	 * @throws UnsupportedEncodingException 
	 */
	@Login(action=Action.Skip)
	@RequestMapping(value={"/","/index"})
	public String login(String ReturnURL,Model model) throws UnsupportedEncodingException{
		String index = "/index.html";
		model.addAttribute("returnURL", StringUtils.isNotBlank(ReturnURL)?URLDecoder.decode(ReturnURL,"UTF-8"):index);
		return "login";
	}
	
	/**
	 * 执行登录
	 */
	@Log("用户登录")
	@Login(action=Action.Skip)
    @RequestMapping(value = "/doLogin",method=RequestMethod.POST)  
    public  String doLogin(String userName,String password, String captcha,String returnURL,Model model){
		
		if(StringUtils.isBlank(userName) || StringUtils.isBlank(captcha) ||  StringUtils.isBlank(captcha)){
			model.addAttribute("error", "用户名/密码/验证码不能为空.");
			return "login";
		}
		
		String sessionCaptcha = new KaptchaExtend().getGeneratedKey(request);
		if(StringUtils.isBlank(sessionCaptcha)){
			model.addAttribute("error", "验证码已过期,请重新输入.");
			return "login";
		}
		if(!captcha.toLowerCase().equals(sessionCaptcha.toLowerCase())){
			model.addAttribute("error", "验证码错误.");
			return "login";
		}
		SysUser sysUser = sysUserService.login(userName,password);
		if(sysUser==null){
			model.addAttribute("error", "用户名或密码错误.");
			return "login";
		}
		/**
		 * 登录成功
		 */
		SSOToken st = new SSOToken();
		st.setUid(sysUser.getId());
		st.setApp(sysUser.getUserName());
		st.setIp(IpHelper.getIpAddr(request));
		SSOHelper.setSSOCookie(request, response, st, true);
		if(StringUtils.isNotBlank(returnURL)){
			return redirectTo(returnURL);
		}
		return redirectTo("/index.html");
    }  
	
	/**
	 * 退出系统
	 * @return
	 * @throws IOException 
	 */
	@Login(action=Action.Skip)
    @RequestMapping(value = "/logout")  
    public String logout() throws IOException{
    	
		SSOHelper.clearLogin(request, response);
		return redirectTo(SSOConfig.getInstance().getLoginUrl());
    }  
    
    /**
     * 验证码
     */
	@Login(action=Action.Skip)
    @RequestMapping("/captcha")
	@ResponseBody
    public  Response captcha() throws ServletException, IOException{
    	new KaptchaExtend().captcha(request, response);
    	return new Response().success();
    }
}
