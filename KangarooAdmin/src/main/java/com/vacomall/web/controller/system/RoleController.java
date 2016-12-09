package com.vacomall.web.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 用户控制器
* @ClassName: UserController
* @author Gaojun.Zhou
* @date 2016年12月9日 下午1:48:35
*
 */
@Controller
@RequestMapping("/system/role")
public class RoleController {  

    @RequestMapping("/list")  
    public  String list(Model model){
		return "system/user/list";
    }  
}
