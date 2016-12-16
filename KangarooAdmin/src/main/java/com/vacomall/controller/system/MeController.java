package com.vacomall.controller.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baomidou.kisso.SSOHelper;
import com.vacomall.common.controller.SuperController;
import com.vacomall.entity.SysUser;
import com.vacomall.service.ISysUserService;
/**
 * 用户中心控制器
 * @author Gaojun.Zhou
 * @date 2016年12月16日 下午4:24:04
 */
@Controller
@RequestMapping("/system/me")
public class MeController extends SuperController{  
	
	@Autowired private ISysUserService sysUserService;
	
    @RequestMapping("/page")  
    public  String page(Model model){
    	
    	SysUser sysUser = sysUserService.selectById(SSOHelper.getToken(request).getUid());
    	model.addAttribute("sysUser", sysUser);
		return "system/me/page";
    } 
    
}
