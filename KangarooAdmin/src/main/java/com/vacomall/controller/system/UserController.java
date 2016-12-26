package com.vacomall.controller.system;

import java.util.List;
import java.util.Map;

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
import com.vacomall.common.anno.Log;
import com.vacomall.common.anno.Permission;
import com.vacomall.common.bean.Response;
import com.vacomall.common.controller.SuperController;
import com.vacomall.entity.SysRole;
import com.vacomall.entity.SysUser;
import com.vacomall.entity.SysUserRole;
import com.vacomall.service.ISysDeptService;
import com.vacomall.service.ISysRoleService;
import com.vacomall.service.ISysUserRoleService;
import com.vacomall.service.ISysUserService;
/**
 * 用户控制器
 * @author Gaojun.Zhou
 * @date 2016年12月13日 上午10:22:41
 */
@Controller
@RequestMapping("/system/user")
public class UserController extends SuperController{  

	@Autowired private ISysUserService sysUserService;
	@Autowired private ISysRoleService sysRoleService;
	@Autowired private ISysUserRoleService sysUserRoleService;
	@Autowired private ISysDeptService sysDeptService;
	
	/**
	 * 分页查询用户
	 */
	@Permission("listUser")
    @RequestMapping("/list/{pageNumber}")  
    public  String list(@PathVariable Integer pageNumber,String search,Model model){
    	Page<Map<Object, Object>> page = getPage(pageNumber);
    	Page<Map<Object, Object>> pageData = sysUserService.selectUserPage(page, search);
    	model.addAttribute("pageData", pageData);
    	return "system/user/list";
    } 
    /**
     * 新增用户
     */
	@Permission("addUser")
    @RequestMapping("/add")  
    public  String add(Model model){
    	model.addAttribute("roleList", sysRoleService.selectList(null));
    	model.addAttribute("deptList", sysDeptService.selectList(null));
		return "system/user/add";
    } 
    
    /**
     * 执行新增
     */
    @Log("创建用户")
    @Permission("addUser")
    @RequestMapping("/doAdd")  
    public  String doAdd(SysUser user,String[] roleId){
    	
    	sysUserService.insertUser(user,roleId);
		return redirectTo("/system/user/list/1.html");
    }  
    /**
     * 删除用户
     */
    @Log("删除用户")
    @Permission("deleteUser")
    @RequestMapping("/delete")  
    @ResponseBody
    public  Response delete(String id){
    	sysUserService.deleteById(id);
    	return new Response().success();
    }  
    
	/**
	 * 编辑用户
	 */
    @RequestMapping("/edit/{id}")  
    @Permission("editUser")
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
    	model.addAttribute("deptList", sysDeptService.selectList(null));
    	return "system/user/edit";
    } 
    /**
     * 执行编辑
     */
    @Log("编辑用户")
    @Permission("editUser")
    @RequestMapping("/doEdit")  
    public  String doEdit(SysUser sysUser,String[] roleId,Model model){
    	sysUserService.updateUser(sysUser,roleId);
    	return redirectTo("/system/user/list/1.html");
    } 
    
    /**
     * 验证用户名是否已存在
     */
    @RequestMapping("/checkName")  
    @ResponseBody
    public String checkName(String userName){
    	
    	List<SysUser> list = sysUserService.selectList(new EntityWrapper<SysUser>().addFilter("userName = {0}", userName));
    	if(list.size() > 0){
    		return "{\"error\":\" "+userName+" 用户名已存在,请换一个尝试.\"}";
    	}
    	return "{\"ok\":\"用户名很棒.\"}";
    }
    
}
