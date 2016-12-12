package com.vacomall.common.util;

import java.util.List;

import com.google.common.base.Function;
import com.google.common.collect.Lists;
import com.vacomall.entity.SysRole;
import com.vacomall.entity.SysUserRole;
import com.vacomall.entity.vo.SysRoleVo;

public class PermissionUtil {

	public static List<SysRoleVo> convertPermission(List<SysRole> sysRoles,
			List<SysUserRole> mySysUserRoles) {
		// TODO Auto-generated method stub
		
		List<SysRoleVo> sysRoleVos = Lists.transform(sysRoles, new Function<SysRole, SysRoleVo>() {
			@Override
			public SysRoleVo apply(SysRole role) {
				// TODO Auto-generated method stub
				SysRoleVo vo = new SysRoleVo();
				vo.setHasPermission(false);
				vo.setId(role.getId());
				vo.setRoleDesc(role.getRoleDesc());
				vo.setRoleName(role.getRoleName());
				vo.setRoleState(role.getRoleState());
				return vo;
			}
		});
		
		
		List<String> myRoleIds = Lists.transform(mySysUserRoles, new Function<SysUserRole,String>() {
			@Override
			public String apply(SysUserRole sysUserRole) {
				// TODO Auto-generated method stub
				return sysUserRole.getRoleId();
			}
		});
		
		
		for(SysRoleVo vo : sysRoleVos){
			
			if(myRoleIds.contains(vo.getId())){
				vo.setHasPermission(true);
			}
		}
		return sysRoleVos;
	}

}
