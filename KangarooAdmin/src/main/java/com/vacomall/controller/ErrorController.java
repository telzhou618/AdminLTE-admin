package com.vacomall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 错误控制器
 * @author Gaojun.Zhou
 * @date 2016年12月14日 下午6:06:01
 */
@Controller
@RequestMapping("/error")
public class ErrorController {  
    @RequestMapping(value ="/{code}")  
    public  String index(@PathVariable String code,Model model){
		return "error/" + code;
    }  
}
