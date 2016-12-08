package com.vacomall.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vacomall.anno.IgnoreSecurity;
import com.vacomall.anno.Log;
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
    
	/**
	 * Token服务
	 */
	@IgnoreSecurity
	@Log("访问首页")
    @RequestMapping(value = {"/","/index"})  
    public  String index(Model model){
		
		model.addAttribute("name", "张三");
		model.addAttribute("date", new Date());
		model.addAttribute("money", 15.7585D);
		return "index";
    }  
}
