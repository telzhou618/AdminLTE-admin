package com.vacomall.controller.system;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.vacomall.common.bean.Response;
import com.vacomall.common.controller.SuperController;
import com.vacomall.entity.SysRole;
import com.vacomall.service.ISysRoleService;
/**
 * 角色控制器
 * @author Gaojun.Zhou
 * @date 2016年12月13日 上午10:23:41
 */
@Controller
@RequestMapping("/system/role")
public class RoleController extends SuperController{  

	/**
	 * 角色服务
	 */
	@Autowired private ISysRoleService sysRoleService;
	
	/**
	 * 分页查询角色
	 */
    @RequestMapping("/list/{pageNumber}")  
    public  String list(@PathVariable Integer pageNumber,String search,Model model){
    	
		Page<SysRole> page = getPage(pageNumber);
		page.setOrderByField("createTime");
		page.setAsc(false);
		// 查询分页
		EntityWrapper<SysRole> ew = new EntityWrapper<SysRole>();
		if(StringUtils.isNotBlank(search)){
			ew.like("roleName",search);
			model.addAttribute("search",search);
		}
		Page<SysRole> pageData = sysRoleService.selectPage(page, ew);
		model.addAttribute("pageData", pageData);
		return "system/role/list";
    } 
    
    /**
     * 新增角色
     */
    @RequestMapping("/add")  
    public  String add(Model model){
		return "system/role/add";
    } 
    
    /**
     * 执行新增角色
     */
    @RequestMapping("/doAdd")  
    public  String doAdd(SysRole role){
    	role.setCreateTime(new Date());
    	sysRoleService.insertSelective(role);
		return redirectTo("/system/role/list/1.html");

    }  
    
    /**
     * 删除角色
     */
    @RequestMapping("/delete")  
    @ResponseBody
    public  Response delete(String id){
    	sysRoleService.deleteById(id);
    	return new Response().success();
    }  

    /**
     * 批量删除角色
     */
    @RequestMapping("/deleteBatch")  
    @ResponseBody
    public Response deleteBatch(@RequestParam("id[]") List<String> ids){
    	sysRoleService.deleteBatchIds(ids);
    	return new Response().success();
    }  
    
    /**
     * 编辑角色
     */
    @RequestMapping("/edit/{id}")  
    public  String edit(@PathVariable String id,Model model){
    	SysRole sysRole = sysRoleService.selectById(id);
    	model.addAttribute(sysRole);
    	return "system/role/edit";
    } 
    
    /**
     * 执行编辑角色
     */
    @RequestMapping("/doEdit")  
    public  String doEdit(SysRole sysRole,Model model){
    	sysRoleService.updateSelectiveById(sysRole);
    	return redirectTo("/system/role/list/1.html");
    } 
    
    /**
     * 权限
     */
    @RequestMapping("/auth")  
    public  String auth( String id,Model model){
    	
    	SysRole sysRole = sysRoleService.selectById(id);

    	model.addAttribute("sysRole", sysRole);
    	return "system/role/auth";
    } 
}
