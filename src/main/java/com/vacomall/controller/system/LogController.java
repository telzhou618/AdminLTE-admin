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
import com.vacomall.common.controller.SuperController;
import com.vacomall.entity.SysLog;
import com.vacomall.service.ISysLogService;
/**
 * 日志控制器
 * @author Gaojun.Zhou
 * @date 2016年12月13日 上午10:22:41
 */
@Controller
@RequestMapping("/system/log")
public class LogController extends SuperController{  

	@Autowired private ISysLogService sysLogService;
	
	/**
	 * 分页查询日志
	 */
	@RequiresPermissions("listLog")
    @RequestMapping("/list/{pageNumber}")  
    public  String list(@PathVariable Integer pageNumber, @RequestParam(defaultValue="15") Integer pageSize, String search,String daterange,Model model){
    	
		Page<SysLog> page = getPage(pageNumber,pageSize);
		page.setOrderByField("createTime");
		page.setAsc(false);
		model.addAttribute("pageSize", pageSize);
		// 查询分页
		EntityWrapper<SysLog> ew = new EntityWrapper<SysLog>();
		if(StringUtils.isNotBlank(search)){
			ew.where("(userName like CONCAT('%',{0},'%')", search)
			.or("title like CONCAT('%',{0},'%'))", search);
			model.addAttribute("search", search);
		}
		//日期查询
		if(StringUtils.isNotBlank(daterange)){
			model.addAttribute("daterange", daterange);
			String[] dateranges = StringUtils.split(daterange, "-");
			ew.addFilter(" createTime >= {0}", dateranges[0].trim().replaceAll("/","-") + " 00:00:00");
			ew.addFilter(" createTime <= {0}", dateranges[1].trim().replaceAll("/","-") + " 23:59:59");
		}
		Page<SysLog> pageData = sysLogService.selectPage(page, ew);
		model.addAttribute("pageData", pageData);
		return "system/log/list";
    } 
    
    /**
     * 获取参数
     */
    @RequestMapping("/params/{id}")
    @ResponseBody
    public String params(@PathVariable String id,Model model){
    	SysLog sysLog = sysLogService.selectById(id);
    	return sysLog.getParams();
    }
    
}
