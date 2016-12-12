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
import com.vacomall.entity.SysRole;
import com.vacomall.service.ISysRoleService;
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

	@Autowired private ISysRoleService sysRoleService;
	
    @RequestMapping("/list/{pageNumber}")  
    public  String list(@PathVariable Integer pageNumber,String search,Model model){
    	
		Page<SysRole> page = new Page<SysRole>(pageNumber,20);
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
    
    @RequestMapping("/add")  
    public  String add(Model model){
		return "system/role/add";
    } 
    
    
    @RequestMapping("/doAdd")  
    public  String doAdd(SysRole role){
    	role.setCreateTime(new Date());
    	sysRoleService.insertSelective(role);
		return "redirect:/system/role/list/1.html";

    }  
    
    @RequestMapping("/delete")  
    @ResponseBody
    public  Response delete(String id){
    	sysRoleService.deleteById(id);
    	return new Response().success();
    }  
    
    /**
     * 批量删除
    * @Title: deleteBatch 
    * @param @param id
    * @param @return     
    * @return Response     
    * @throws
     */
    @RequestMapping("/deleteBatch")  
    @ResponseBody
    public Response deleteBatch(@RequestParam("id[]") List<String> ids){
    	sysRoleService.deleteBatchIds(ids);
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
    	SysRole sysRole = sysRoleService.selectById(id);
    	model.addAttribute(sysRole);
    	return "system/role/edit";
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
    public  String doEdit(SysRole sysRole,Model model){
    	sysRoleService.updateSelectiveById(sysRole);
    	return "redirect:/system/role/list/1.html";
    } 
}
