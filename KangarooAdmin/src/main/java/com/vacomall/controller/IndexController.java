package com.vacomall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vacomall.common.anno.Log;
import com.vacomall.service.ISysMenuService;
/**
 * 首页控制器
* @ClassName: IndexController
* @author Gaojun.Zhou
* @date 2016年12月8日 下午8:42:40
*
 */
@Controller
@RequestMapping("/")
public class IndexController {  
    
	
	@Autowired private ISysMenuService sysMenuService;
	
	
	@Log("访问首页")
    @RequestMapping(value = {"/","/index"})  
    public  String index(Model model){
		
		return "index";
    }  
}
