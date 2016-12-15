package com.vacomall.controller.system;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.vacomall.common.anno.PermissionSecurity;
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
@PermissionSecurity("menu")
@RequestMapping("/system/menu")
public class MenuController extends SuperController{  

	/**
	 * 菜单服务
	 */
	@Autowired private ISysMenuService sysMenuService;
	
	/**
	 * 分页查询用户
	 */
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
			if(menu.getPid() == null || menu.getPid().equals("0")){
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
     * 菜单树
     */
    @RequestMapping("/tree")
    public String tree(Model model){
    	EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
    	ew.orderBy("code", true);
    	List<SysMenu> list = sysMenuService.selectList(ew);
		for(SysMenu menu : list){
			if(menu.getPid() == null || menu.getPid().equals("0")){
				menu.setMenuName(StringUtils.join("<label><input name='mid' type='radio' class='minimal tm'> ",menu.getMenuName(),"</label>"));
			}else{
				menu.setMenuName(StringUtils.join("<label><input name='mid' type='radio' class='minimal tm'> ",menu.getMenuName(),"</label>"));
			}
			for(int i=1;i<menu.getDeep();i++){
				menu.setMenuName(StringUtils.join("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",menu.getMenuName()));
			}
			
		}
		model.addAttribute("list", list);
		return "system/menu/tree";
    } 
    
    
    /**
     * 菜单树
     */
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
    @RequestMapping("/doAddDir")
    public String doAddDir(SysMenu sysMenu,Model model){
    	
    	sysMenu.setPid("0");
    	sysMenu.setLeaf(-1);
    	sysMenu.setDeep(1);
    	sysMenuService.insert(sysMenu);
    	return redirectTo("/system/menu/list/1.html");
    } 
    
    /**
     * 添加菜单
     */
    @RequestMapping("/doAddMenu")
    public String doAddMenu(SysMenu sysMenu,Model model){
    	sysMenu.setLeaf(1);
    	sysMenu.setDeep(2);
    	sysMenuService.insert(sysMenu);
    	return redirectTo("/system/menu/list/1.html");
    } 
    /**
     * 编辑菜单
     */
    @RequestMapping("/edit/{id}")
    public String edit(@PathVariable String id,Model model){
    	SysMenu sysMenu =sysMenuService.selectById(id);
    	model.addAttribute("sysMenu", sysMenu);
    	
    	if(sysMenu.getDeep() == 1){
    		return  "/system/menu/edit";
    	}else{
    		EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
        	ew.orderBy("code", true);
        	ew.addFilter("pid={0}","0");
        	List<SysMenu> list = sysMenuService.selectList(ew);
        	model.addAttribute("list",list);
        	return "/system/menu/editMenu";
    	}
    } 
    
    /**
     * 执行编辑菜单
     */
    @RequestMapping("/doEdit")
    public String doEdit(SysMenu sysMenu,Model model){
    	sysMenuService.updateSelectiveById(sysMenu);
    	return redirectTo("/system/menu/list/1.html");
    } 
    
    /**
     * 执行编辑菜单
     */
    @RequestMapping("/delete")
    @ResponseBody
    public Response delete(String id){
    	sysMenuService.deleteById(id);
    	return new Response().success();
    } 
}
