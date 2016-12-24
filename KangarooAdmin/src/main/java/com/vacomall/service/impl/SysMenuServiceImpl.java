package com.vacomall.service.impl;

import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.google.common.base.Function;
import com.google.common.collect.Lists;
import com.vacomall.entity.SysMenu;
import com.vacomall.entity.SysRoleMenu;
import com.vacomall.entity.vo.MenuVo;
import com.vacomall.entity.vo.SysMenuVo;
import com.vacomall.entity.vo.TreeMenuVo;
import com.vacomall.mapper.SysMenuMapper;
import com.vacomall.service.ISysMenuService;
import com.vacomall.service.ISysRoleMenuService;
import com.vacomall.service.support.BaseServiceImpl;

/**
 *
 * SysMenu 表数据服务层接口实现类
 *
 */
@Service
public class SysMenuServiceImpl extends BaseServiceImpl<SysMenuMapper, SysMenu> implements ISysMenuService {

	/**
	 * 角色权限服务
	 */
	@Autowired private ISysRoleMenuService sysRoleMenuService;
	
	@Autowired private SysMenuMapper sysMenuMapper;
	
	@Override
	public List<TreeMenuVo> selectTreeMenuVoList(String roleId) {
		// TODO Auto-generated method stub
		
		/**
		 * 获取当前角色权限
		 */
		List<SysRoleMenu> sysRoleMenus = sysRoleMenuService.selectByRole(roleId);
		final List<String> myAuths = Lists.transform(sysRoleMenus, new Function<SysRoleMenu, String>() {
			@Override
			public String apply(SysRoleMenu input) {
				// TODO Auto-generated method stub
				return input.getMenuId();
			}
		});
		
		/**
		 * 查询所有权限树
		 */
		EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
		ew.orderBy("sort", true);
		ew.addFilter("pid = {0} ", "0");
		
		List<SysMenu> sysMenus = this.selectList(ew);

		List<TreeMenuVo> treeMenuVos = Lists.transform(sysMenus, new Function<SysMenu, TreeMenuVo>() {

			@Override
			public TreeMenuVo apply(SysMenu sysMenum) {
				// TODO Auto-generated method stub
				
				TreeMenuVo tr = new TreeMenuVo();
				tr.setMenuVo(new MenuVo(sysMenum,myAuths.contains(sysMenum.getId()) ? true : false));
				EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
				ew.orderBy("sort", true);
				ew.addFilter("pid = {0} ", sysMenum.getId());
				List<SysMenu> sysMenus = selectList(ew);
				tr.setMenuVoChild(Lists.transform(sysMenus, new Function<SysMenu, MenuVo>() {
					@Override
					public MenuVo apply(SysMenu sysMenum) {
						// TODO Auto-generated method stub
						return new MenuVo(sysMenum,myAuths.contains(sysMenum.getId()) ? true : false);
					}
				}));
				
				return tr;
			}
		});
		
		return treeMenuVos;
	}

	@Override
	@Cacheable(value = "selectMenuByuserId", key = "#uid")
	public List<SysMenu> selectMenuByuserId(String uid) {
		// TODO Auto-generated method stub
		return sysMenuMapper.selectMenuByuserId(uid);
	}

	@Override
	@Cacheable(value = "permissionCache", key = "#uid")
	public List<SysMenuVo> selectMenuVoByuserId(String uid) {
		// TODO Auto-generated method stub
		/**
		 * 我的菜单
		 */
		final List<String> idList= Lists.transform(this.selectMenuByuserId(uid), new Function<SysMenu, String>() {
			@Override
			public String apply(SysMenu input) {
				// TODO Auto-generated method stub
				return input.getId();
			}
		});
	
		/**
		 * 筛选菜单树
		 */
		EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
		ew.orderBy("sort", true);
		ew.addFilter("pid = {0} ", "0");
		ew.in("id", idList.size() > 0 ? idList : Lists.newArrayList(RandomStringUtils.randomNumeric(30)));
		List<SysMenu> sysMenus = this.selectList(ew);
		
		List<SysMenuVo> sysMenuVos = Lists.transform(sysMenus, new Function<SysMenu, SysMenuVo>() {
			@Override
			public SysMenuVo apply(SysMenu sysMenu) {
				// TODO Auto-generated method stub
				
				SysMenuVo vo = new SysMenuVo();
				vo.setSysMenu(sysMenu);
				EntityWrapper<SysMenu> ew = new EntityWrapper<SysMenu>();
				ew.orderBy("sort", true);
				ew.addFilter("pid = {0} ", sysMenu.getId());
				ew.in("id", idList);
				vo.setSysMenuChild(selectList(ew));
				return vo;
			}
		});
		return sysMenuVos;
	}
}