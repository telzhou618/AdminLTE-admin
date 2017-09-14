package com.vacomall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
    @RequestMapping({"","/","index"})  
    public  String index(Model model){
		return "index";
    }  
}
