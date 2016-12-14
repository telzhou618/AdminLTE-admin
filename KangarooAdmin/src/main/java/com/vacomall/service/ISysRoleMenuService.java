package com.vacomall.service;

import java.util.List;

import com.vacomall.entity.SysRoleMenu;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * SysRoleMenu 表数据服务层接口
 *
 */
public interface ISysRoleMenuService extends ISuperService<SysRoleMenu> {
	
	/**
	 * 角色授权
	 */
	void addAuth(String roleId, String[] menuIds);
	
	/**
	 * 获取指定角色的权限
	 */
	List<SysRoleMenu> selectByRole(String roleId);


}