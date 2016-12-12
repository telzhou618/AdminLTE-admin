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
	* @Title: insertUser 
	* @param @param user
	* @param @param roleId     
	* @return void     
	* @throws
	 */
	void insertUser(SysUser user, String[] roleId);
	/**
	 * 更新用户
	* @Title: updateUser 
	* @param @param sysUser
	* @param @param roleId     
	* @return void     
	* @throws
	 */
	void updateUser(SysUser sysUser, String[] roleId);


}