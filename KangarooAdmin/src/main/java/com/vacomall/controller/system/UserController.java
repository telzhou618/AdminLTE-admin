package com.vacomall.controller.system;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.google.common.base.Function;
import com.google.common.collect.Lists;
import com.vacomall.common.bean.Response;
import com.vacomall.entity.SysRole;
import com.vacomall.entity.SysUser;
import com.vacomall.entity.SysUserRole;
import com.vacomall.service.ISysRoleService;
import com.vacomall.service.ISysUserRoleService;
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
	@Autowired private ISysRoleService sysRoleService;
	@Autowired private ISysUserRoleService sysUserRoleService;
	
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
    	EntityWrapper<SysRole> ew = new EntityWrapper<SysRole>();
    	ew.addFilter("roleState = {0}",1);
    	model.addAttribute("roleList", sysRoleService.selectList(ew));
		return "system/user/add";
    } 
    
    
    @RequestMapping("/doAdd")  
    public  String doAdd(SysUser user,String[] roleId){
    	
    	sysUserService.insertUser(user,roleId);
		return "redirect:/system/user/list/1.html";
    }  
    
    @RequestMapping("/delete")  
    @ResponseBody
    public  Response delete(String id){
    	sysUserService.deleteById(id);
    	return new Response().success();
    }  
    
    /**
     * 编辑
    * @Title: edit 
    * @param @param user
    * @param @return     
    * @return String     
    * @throws
     */
    @RequestMapping("/edit/{id}")  
    public  String edit(@PathVariable String id,Model model){
    	SysUser sysUser = sysUserService.selectById(id);
    	
    	List<SysRole> sysRoles = sysRoleService.selectList(null);
    	EntityWrapper<SysUserRole> ew = new EntityWrapper<SysUserRole>();
    	ew.addFilter("userId = {0} ", id);
    	List<SysUserRole> mySysUserRoles = sysUserRoleService.selectList(ew);
    	List<String> myRolds = Lists.transform(mySysUserRoles, new Function<SysUserRole, String>() {
			@Override
			public String apply(SysUserRole input) {
				// TODO Auto-generated method stub
				return input.getRoleId();
			}
		});
    	
    	model.addAttribute("sysUser",sysUser);
    	model.addAttribute("sysRoles",sysRoles);
    	model.addAttribute("myRolds",myRolds);
    	
    	return "system/user/edit";
    } 
    /**
     * 执行编辑
    * @Title: edit 
    * @param @param user
    * @param @return     
    * @return String     
    * @throws
     */
    @RequestMapping("/doEdit")  
    public  String doEdit(SysUser sysUser,String[] roleId,Model model){
    	sysUserService.updateUser(sysUser,roleId);
    	return "redirect:/system/user/list/1.html";
    } 
}
