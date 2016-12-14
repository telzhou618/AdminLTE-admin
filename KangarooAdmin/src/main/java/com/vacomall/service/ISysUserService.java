package com.vacomall.service;

import com.vacomall.entity.SysUser;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * SysUser 表数据服务层接口
 *
 */
public interface ISysUserService extends ISuperService<SysUser> {

	/**
	 * 保存用户
	 */
	void insertUser(SysUser user, String[] roleId);
	/**
	 * 更新用户
	 */
	void updateUser(SysUser sysUser, String[] roleId);
	/**
	 * 登录
	 */
	SysUser login(String userName, String password);


}