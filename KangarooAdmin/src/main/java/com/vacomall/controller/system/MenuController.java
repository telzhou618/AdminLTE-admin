package com.vacomall.controller.system;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vacomall.common.controller.SuperController;
import com.vacomall.entity.vo.SysMenuVo;
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
	 * 菜单树
	 */
    @RequestMapping("/list")  
    public  String list(Model model){
    	
    	List<SysMenuVo> sysMenuVos = sysMenuService.selectMenuList();
    	model.addAttribute("sysMenuVos", sysMenuVos);
		return "system/menu/list";
    } 
  
}
