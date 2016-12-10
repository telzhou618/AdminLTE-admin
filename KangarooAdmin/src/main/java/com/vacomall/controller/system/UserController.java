package com.vacomall.controller.system;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baomidou.mybatisplus.plugins.Page;
import com.vacomall.entity.SysUser;
import com.vacomall.service.ISysUserService;
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

	@Autowired private ISysUserService sysUserService;
	
    @RequestMapping("/list")  
    public  String list(Model model){
    	
		Page<SysUser> page = new Page<SysUser>(1, 20);
		page.setOrderByField("createTime");
		page.setAsc(false);
		// 查询分页
		Page<SysUser> userList = sysUserService.selectPage(page, null);
		model.addAttribute("userList", userList);
		return "system/user/list";
    } 
    
    @RequestMapping("/add")  
    public  String add(Model model){
		return "system/user/add";
    } 
    
    
    @RequestMapping("/doAdd")  
    public  String doAdd(SysUser user,Model model){
    	user.setCreateTime(new Date());
    	sysUserService.insertSelective(user);
		return "redirect:/system/user/list.html";

    }  
}
