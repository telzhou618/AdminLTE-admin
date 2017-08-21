package com.vacomall.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vacomall.common.anno.Permission;
import com.vacomall.common.controller.SuperController;
/**
 * 监控
 * @author Gaojun.Zhou
 * @date 2017年2月5日 下午3:38:19
 */
@Controller
@RequestMapping("/system/monitor")
public class MonitorController extends SuperController{  
	
	/**
	 * 系统监控列表
	 */
	@Permission("monitorList")
    @RequestMapping("/list")  
    public  String list(Model model){
		return "system/monitor/list";
    } 
}
