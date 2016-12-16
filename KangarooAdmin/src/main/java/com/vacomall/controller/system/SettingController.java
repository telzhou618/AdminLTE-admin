package com.vacomall.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vacomall.common.anno.PermissionSecurity;
import com.vacomall.common.controller.SuperController;
/**
 * 系统设置控制器
 * @author Gaojun.Zhou
 * @date 2016年12月16日 下午4:24:13
 */
@Controller
@PermissionSecurity("setting")
@RequestMapping("/system/setting")
public class SettingController extends SuperController{  

	
	/**
	 * 分页查询日志
	 */
    @RequestMapping("/page")  
    public  String page(Model model){
		return "system/setting/page";
    } 
    
}
