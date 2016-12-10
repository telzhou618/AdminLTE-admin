package com.vacomall.controller;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.vacomall.common.anno.IgnoreSecurity;
import com.vacomall.common.anno.Log;
import com.vacomall.common.bean.Response;
import com.vacomall.common.util.ValidateUtil;
import com.vacomall.entity.SysUser;
/**
 * 登录拦截器
 * @author Administrator
 *
 */
@RestController
@RequestMapping("/login")
public class LoginController {  
    
	/**
	 * Token服务
	 */
	@IgnoreSecurity
	@Log("用户登录")
    @RequestMapping(value = "/doLogin",method=RequestMethod.POST)  
    public  Response hello(@Valid SysUser userInfo, BindingResult result){
		
		if(result.hasErrors()){
			return new Response().failure("error",ValidateUtil.toStringJson(result));
		}
		
		if(userInfo.getUserName().equals("admin") && userInfo.getPassword().equals("123456")){
			return new Response().success();
		}
		return new Response().failure("登录失败.");
    }  
	
	/**
	 * 退出系统
	 * @return
	 */
	@IgnoreSecurity
	@Log("用户退出")
    @RequestMapping(value = "/logout",method=RequestMethod.POST)  
    public  Response logout(){
		
		return new Response().success("退出成功.");
		
    }  
}
