package com.vacomall.service;

import java.util.List;

import com.vacomall.entity.SysUserRole;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * SysUserRole 表数据服务层接口
 *
 */
public interface ISysUserRoleService extends ISuperService<SysUserRole> {

	/**
	 * 获取当前用户的权限
	 */
	List<String> selectPermissionByUid(String uid);


}