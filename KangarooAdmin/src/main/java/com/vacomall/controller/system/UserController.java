package com.vacomall.controller.system;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.plugins.Page;
import com.vacomall.common.bean.Response;
import com.vacomall.common.util.CommonUtil;
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
	
    @RequestMapping("/list/{pageNumber}")  
    public  String list(@PathVariable Integer pageNumber,Model model){
    	
		Page<SysUser> page = new Page<SysUser>(pageNumber,20);
		page.setOrderByField("createTime");
		page.setAsc(false);
		// 查询分页
		Page<SysUser> pageData = sysUserService.selectPage(page, null);
		model.addAttribute("pageData", pageData);
		return "system/user/list";
    } 
    
    @RequestMapping("/add")  
    public  String add(Model model){
		return "system/user/add";
    } 
    
    
    @RequestMapping("/doAdd")  
    public  String doAdd(SysUser user){
    	user.setCreateTime(new Date());
    	user.setPassword(CommonUtil.MD5(user.getPassword()));
    	sysUserService.insertSelective(user);
		return "redirect:/system/user/list.html";

    }  
    
    @RequestMapping("/delete")  
    @ResponseBody
    public  Response doAdd(String id){
    	sysUserService.deleteById(id);
    	return new Response().success();
    }  
}
