package com.vacomall.web.controller.system;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baomidou.hibernateplus.condition.SelectWrapper;
import com.baomidou.hibernateplus.entity.page.Page;
import com.vacomall.web.service.UserService;
import com.vacomall.web.vo.UserVO;
/**
 * 用户控制器
* @ClassName: UserController
* @author Gaojun.Zhou
* @date 2016年12月9日 下午1:48:35
*
 */
@Controller
@RequestMapping("/system/user")
public class UserController {  

	@Autowired private UserService userService;
	
    @RequestMapping("/list")  
    public  String list(Model model){
    	
		Page<UserVO> page = new Page<UserVO>(1, 20);
		page.setOrderByField("createTime");
		page.setAsc(false);
		// 查询分页
		Page<UserVO> userList = userService.selectPage(SelectWrapper.DEFAULT, page);
		model.addAttribute("userList", userList);
		return "system/user/list";
    } 
    
    @RequestMapping("/add")  
    public  String add(Model model){
		return "system/user/add";
    } 
    
    
    @RequestMapping("/doAdd")  
    public  String doAdd(UserVO user,Model model){
    	
    	user.setCreatetime(new Date());
    	userService.save(user);
		return "redirect:/system/user/list.html";

    }  
}
