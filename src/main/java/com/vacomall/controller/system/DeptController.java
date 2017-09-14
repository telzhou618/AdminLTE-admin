package com.vacomall.controller.system;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.vacomall.common.anno.Log;
import com.vacomall.common.bean.Rest;
import com.vacomall.common.controller.SuperController;
import com.vacomall.entity.SysDept;
import com.vacomall.service.ISysDeptService;
/**
 * 部门控制器
 * @author Gaojun.Zhou
 * @date 2016年12月16日 下午5:03:49
 */
@Controller
@RequestMapping("/system/dept")
public class DeptController extends SuperController{  

	@Autowired private ISysDeptService sysDeptService;
	
	/**
	 * 分页查询部门
	 */
	@RequiresPermissions("listDept")
    @RequestMapping("/list/{pageNumber}")  
    public  String list(@PathVariable Integer pageNumber,@RequestParam(defaultValue="15") Integer pageSize, String search,Model model){
    	
		Page<SysDept> page = getPage(pageNumber,pageSize);
		model.addAttribute("pageSize", pageSize);
		// 查询分页
		EntityWrapper<SysDept> ew = new EntityWrapper<SysDept>();
		if(StringUtils.isNotBlank(search)){
			ew.like("deptName",search);
			model.addAttribute("search",search);
		}
		Page<SysDept> pageData = sysDeptService.selectPage(page, ew);
		model.addAttribute("pageData", pageData);
		return "system/dept/list";
    } 
    
    /**
     * 新增部门
     */
	@RequiresPermissions("addDept")
    @RequestMapping("/add")  
    public  String add(Model model){
		return "system/dept/add";
    } 
    
    /**
     * 执行新增
     */
	@RequiresPermissions("addDept")
    @Log("创建部门")
    @RequestMapping("/doAdd")  
	@ResponseBody
    public  Rest doAdd(SysDept dept,String[] roleId){
    	
    	sysDeptService.insert(dept);
		return Rest.ok();
    }  
    /**
     * 删除部门
     */
	@RequiresPermissions("deleteDept")
    @Log("删除部门")
    @RequestMapping("/delete")  
    @ResponseBody
    public  Rest delete(String id){
    	sysDeptService.deleteById(id);
    	return Rest.ok();
    }  
    
	/**
	 * 编辑部门
	 */
	@RequiresPermissions("editDept")
    @RequestMapping("/edit/{id}")  
    public  String edit(@PathVariable String id,Model model){
    	SysDept dept = sysDeptService.selectById(id);
    	
    	model.addAttribute("dept",dept);
    	return "system/dept/edit";
    } 
    /**
     * 执行编辑
     */
	@RequiresPermissions("editDept")
    @Log("编辑部门")
    @RequestMapping("/doEdit")  
	@ResponseBody
    public  Rest doEdit(SysDept dept,Model model){
    	sysDeptService.updateById(dept);
    	return Rest.ok();
    } 
	
}
