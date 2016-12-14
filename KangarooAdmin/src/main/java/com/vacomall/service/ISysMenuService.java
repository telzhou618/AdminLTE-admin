package com.vacomall.service;

import java.util.List;

import com.vacomall.entity.SysMenu;
import com.vacomall.entity.vo.SysMenuVo;
import com.vacomall.entity.vo.TreeMenuVo;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * SysMenu 表数据服务层接口
 *
 */
public interface ISysMenuService extends ISuperService<SysMenu> {

	/**
	 * 获取指定角色的权限,选中拥有的权限
	 */
	List<TreeMenuVo> selectTreeMenuVoList(String roleId);
	
	/**
	 * 获取所有菜单树
	 */
	List<SysMenuVo> selectMenuList();


}