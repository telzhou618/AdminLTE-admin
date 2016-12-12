package com.vacomall.controller.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public  String list(@PathVariable Integer pageNumber,Model model){
    	
		Page<SysRole> page = new Page<SysRole>(pageNumber,20);
		page.setOrderByField("createTime");
		page.setAsc(false);
		// 查询分页
		Page<SysRole> pageData = sysRoleService.selectPage(page, null);
		model.addAttribute("pageData", pageData);
		return "system/role/list";
    } 
    
    @RequestMapping("/add")  
    public  String add(Model model){
		return "system/role/add";
    } 
    
    
    @RequestMapping("/doAdd")  
    public  String doAdd(SysRole role){
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
