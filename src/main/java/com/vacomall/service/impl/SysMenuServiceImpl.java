package com.vacomall.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.google.common.collect.Lists;
import com.vacomall.entity.SysMenu;
import com.vacomall.entity.vo.TreeMenu;
import com.vacomall.entity.vo.TreeMenuAllowAccess;
import com.vacomall.mapper.SysMenuMapper;
import com.vacomall.mapper.SysRoleMenuMapper;
import com.vacomall.service.ISysMenuService;

/**
 *
 * SysMenu 表数据服务层接口实现类
 *
 */
@Service
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenu> implements ISysMenuService {
	/**
	 * 菜单服务
	 */
	@Autowired private SysMenuMapper sysMenuMapper;
	/**
	 * 角色菜单关系服务
	 */
	@Autowired private SysRoleMenuMapper sysRoleMenuMapper;
	

	@Cacheable(value = "permissionCache", key = "#uid")
	@Override
	public List<String> selectMenuIdsByuserId(String uid) {
		// TODO Auto-generated method stub
		return sysMenuMapper.selectMenuIdsByuserId(uid);
	}

	
	@Cacheable(value = "menuCache", key = "#uid")
	@Override
	public List<TreeMenu> selectTreeMenuByUserId(String uid) {
		// TODO Auto-generated method stub
		/**
		 * 当前用户二级菜单权限
		 */
		List<String> menuIds = sysRoleMenuMapper.selectRoleMenuIdsByUserId(uid);
		return selectTreeMenuByMenuIdsAndPid(menuIds, "0");
	}
	
	@Override
	public List<TreeMenu> selectTreeMenuByMenuIdsAndPid(final List<String> menuIds,String pid) {
		// TODO Auto-generated method stub
		EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
		ew.orderBy("sort", true);
		ew.eq("pid", pid);
		ew.in("id", menuIds.size() > 0 ? menuIds : Lists.newArrayList(RandomStringUtils.randomNumeric(30)));
		List<SysMenu> sysMenus = this.selectList(ew);
		List<TreeMenu> treeMenus = new ArrayList<TreeMenu>();
		for(SysMenu sysMenu : sysMenus){
			TreeMenu treeMenu = new TreeMenu();
			treeMenu.setSysMenu(sysMenu);
			if(sysMenu.getDeep() < 2){
				treeMenu.setChildren(selectTreeMenuByMenuIdsAndPid(menuIds,sysMenu.getId()));
			}
			treeMenus.add(treeMenu);
		}
		return treeMenus;
	}
	
	
	@Override
	public List<TreeMenuAllowAccess> selectTreeMenuAllowAccessByMenuIdsAndPid(
			final List<String> menuIds, String pid) {
		// TODO Auto-generated method stub
		EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
		ew.orderBy("sort", true);
		ew.eq("pid", pid);
		List<SysMenu> sysMenus = this.selectList(ew);
		
		List<TreeMenuAllowAccess> treeMenuAllowAccesss = new ArrayList<TreeMenuAllowAccess>();
		for(SysMenu sysMenu : sysMenus){
			TreeMenuAllowAccess treeMenuAllowAccess = new TreeMenuAllowAccess();
			treeMenuAllowAccess.setSysMenu(sysMenu);
			/**
			 * 是否有权限
			 */
			if(menuIds.contains(sysMenu.getId())){
				treeMenuAllowAccess.setAllowAccess(true);
			}
			/**
			 * 子节点
			 */
			if(sysMenu.getDeep() < 3){
				treeMenuAllowAccess.setChildren(selectTreeMenuAllowAccessByMenuIdsAndPid(menuIds,sysMenu.getId()));
			}
			treeMenuAllowAccesss.add(treeMenuAllowAccess);
		}
		return treeMenuAllowAccesss;
	}

}