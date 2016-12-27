package com.vacomall.controller.system;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.google.common.collect.Maps;
import com.vacomall.common.anno.Log;
import com.vacomall.common.anno.Permission;
import com.vacomall.common.bean.Response;
import com.vacomall.common.controller.SuperController;
import com.vacomall.entity.SysMenu;
import com.vacomall.service.ISysMenuService;
/**
 * 角色控制器
 * @author Gaojun.Zhou
 * @date 2016年12月13日 上午10:23:41
 */
@Controller
@RequestMapping("/system/menu")
public class MenuController extends SuperController{  

	/**
	 * 菜单服务
	 */
	@Autowired private ISysMenuService sysMenuService;
	
	/**
	 * 分页查询菜单
	 */
	@Permission("listMenu")
    @RequestMapping("/list/{pageNumber}")  
    public  String list(@PathVariable Integer pageNumber,String search,Model model){
    	
		Page<SysMenu> page = getPage(pageNumber);
		page.setOrderByField("code");
		page.setAsc(true);
		// 查询分页
		EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
		if(StringUtils.isNotBlank(search)){
			ew.like("menuName",search);
			model.addAttribute("search",search);
		}
		Page<SysMenu> pageData = sysMenuService.selectPage(page, ew);
		
		for(SysMenu menu : pageData.getRecords()){
			if(menu.getPid() == null || menu.getDeep() !=3){
				menu.setMenuName(StringUtils.join("<i class='fa fa-folder-open'></i> ",menu.getMenuName()));
			}else{
				menu.setMenuName(StringUtils.join("<i class='fa fa-file'></i> ",menu.getMenuName()));
			}
			for(int i=1;i<menu.getDeep();i++){
				menu.setMenuName(StringUtils.join("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",menu.getMenuName()));
			}
			
		}
		
		model.addAttribute("pageData", pageData);
		return "system/menu/list";
    } 
   
    /**
     * 增加菜单
     */
	@Permission("addMenu")
    @RequestMapping("/add")
    public String add(Model model){
		
    	EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
    	ew.orderBy("code", true);
    	ew.addFilter("pid={0}","0");
    	List<SysMenu> list = sysMenuService.selectList(ew);
    	model.addAttribute("list",list);
    	return "system/menu/add";
		
    } 
    /**
     * 添加目录
     */
	@Permission("addMenu")
    @Log("创建目录菜单")
    @RequestMapping("/doAddDir")
    public String doAddDir(SysMenu sysMenu,Model model){
    	
    	sysMenu.setPid("0");
    	sysMenu.setDeep(1);
    	sysMenuService.insert(sysMenu);
    	return redirectTo("/system/menu/list/1.html");
    } 
    
    /**
     * 添加菜单
     */
	@Permission("addMenu")
    @Log("创建菜单")
    @RequestMapping("/doAddMenu")
    public String doAddMenu(SysMenu sysMenu,Model model){
    	sysMenu.setDeep(2);
    	sysMenuService.insert(sysMenu);
    	return redirectTo("/system/menu/list/1.html");
    } 
    /**
     * 编辑菜单
     */
	@Permission("editMenu")
    @RequestMapping("/edit/{id}")
    public String edit(@PathVariable String id,Model model){
    	SysMenu sysMenu =sysMenuService.selectById(id);
    	model.addAttribute("sysMenu", sysMenu);
    	
    	if(sysMenu.getDeep() == 1){
    		return  "/system/menu/edit";
    	}else if(sysMenu.getDeep() == 2){
    		EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
        	ew.orderBy("code", true);
        	ew.addFilter("pid={0}","0");
        	List<SysMenu> list = sysMenuService.selectList(ew);
        	model.addAttribute("list",list);
        	return "/system/menu/editMenu";
    	}
    	else{
    		EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
        	ew.orderBy("code", true);
        	ew.addFilter("pid={0}","0");
        	List<SysMenu> list = sysMenuService.selectList(ew);
        	model.addAttribute("list",list);
        	model.addAttribute("pSysMenu",sysMenuService.selectById(sysMenu.getPid()));
    		return  "/system/menu/editAction";
    	}
    } 
    
    /**
     * 执行编辑菜单
     */
	@Permission("editMenu")
    @Log("编辑菜单")
    @RequestMapping("/doEdit")
    public String doEdit(SysMenu sysMenu,Model model){
    	sysMenuService.updateById(sysMenu);
    	return redirectTo("/system/menu/list/1.html");
    } 
    
    /**
     * 执行编辑菜单
     */
	@Permission("deleteMenu")
    @Log("删除菜单")
    @RequestMapping("/delete")
    @ResponseBody
    public Response delete(String id){
    	sysMenuService.deleteById(id);
    	return new Response().success();
    } 
    
    /**
     * 根据父节点获取子菜单
     */
    @RequestMapping("/json")
    @ResponseBody
    public Response json(String pid){
    	EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
    	ew.orderBy("sort");
    	ew.addFilter("pid = {0} ", pid);
    	List<SysMenu> list = sysMenuService.selectList(ew);
    	
    	List<Map<String, Object>> listMap = new ArrayList<Map<String,Object>>();
    	for(SysMenu m : list){
    		Map<String, Object> map = Maps.newHashMap();
    		map.put("id", m.getId());
    		map.put("text",StringUtils.join(m.getCode(),"-",m.getMenuName()));
    		listMap.add(map);
    	}
    	return new Response().success(listMap);
    } 
    
    
    /**
     * 验证菜单资源名称是否存在
     */
    @RequestMapping("/checkMenuResource")  
    @ResponseBody
    public String checkMenuResource(String resource){
    	
    	List<SysMenu> list = sysMenuService.selectList(new EntityWrapper<SysMenu>().addFilter("resource = {0}", resource));
    	if(list.size() > 0){
    		return "{\"error\":\" "+resource+" 资源已存在,请换一个尝试.\"}";
    	}
    	return "{\"ok\":\"资源名称很棒.\"}";
    }
    
    @Permission("addMenu")
    @Log("新增功能菜单")
    @RequestMapping("/doAddAction")
    public String doAddAction(SysMenu sysMenu,Model model){
    	sysMenu.setDeep(3);
    	sysMenuService.insert(sysMenu);
    	return redirectTo("/system/menu/list/1.html");
    } 
}
