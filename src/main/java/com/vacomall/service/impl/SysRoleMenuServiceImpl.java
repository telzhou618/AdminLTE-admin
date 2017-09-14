package com.vacomall.service.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.lang3.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.vacomall.entity.SysRoleMenu;
import com.vacomall.mapper.SysMenuMapper;
import com.vacomall.mapper.SysRoleMenuMapper;
import com.vacomall.service.ISysRoleMenuService;

/**
 *
 * SysRoleMenu 表数据服务层接口实现类
 *
 */
@Service
public class SysRoleMenuServiceImpl extends ServiceImpl<SysRoleMenuMapper, SysRoleMenu> implements ISysRoleMenuService {
	
	@Autowired private SysMenuMapper sysMenuMapper;
	
	@Override
	public void addAuth(String roleId, String[] menuIds) {
		// TODO Auto-generated method stub
		
		/**
		 * 删除原有权限
		 */
		this.delete(new EntityWrapper<SysRoleMenu>().eq("roleId",roleId));
		/**
		 * 重新授权
		 */
		if(ArrayUtils.isNotEmpty(menuIds)){
			for(String menuId : menuIds){
				SysRoleMenu sysRoleMenu2 = new SysRoleMenu();
				sysRoleMenu2.setRoleId(roleId);
				sysRoleMenu2.setMenuId(menuId);
				this.insert(sysRoleMenu2);
			}
		}
	}

	@Override
	public List<SysRoleMenu> selectByRole(String roleId) {
		// TODO Auto-generated method stub
		
		EntityWrapper<SysRoleMenu> ew = new EntityWrapper<SysRoleMenu>();
		ew.addFilter("roleId = {0}", roleId);
		return this.selectList(ew);
		
	}

	@Override
	public Set<String> findMenusByUid(String id) {
		// TODO Auto-generated method stub
		List<String> list =  sysMenuMapper.selectResourceByUid(id);
		return new HashSet<>(list);
	}


}