package com.vacomall.controller;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.vacomall.anno.IgnoreSecurity;
import com.vacomall.anno.Log;
import com.vacomall.bean.Response;
import com.vacomall.model.UserInfo;
import com.vacomall.validate.ValidateUtil;
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
    public  Response hello(@Valid UserInfo userInfo, BindingResult result){
		
		if(result.hasErrors()){
			return new Response().failure("error",ValidateUtil.toStringJson(result));
		}
		
		if(userInfo.getName().equals("admin") && userInfo.getPassword().equals("123456")){
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
