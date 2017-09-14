package com.vacomall.service;

import java.util.Map;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.vacomall.entity.SysUser;

/**
 *
 * SysUser 表数据服务层接口
 *
 */
public interface ISysUserService extends IService<SysUser> {
	
	/**
	 * 分页查询用户
	 */
	Page<Map<Object, Object>> selectUserPage(Page<Map<Object, Object>> page, String search);
	
	/**
	 * 保存用户
	 */
	void insertUser(SysUser user, String[] roleId);
	/**
	 * 更新用户
	 */
	void updateUser(SysUser sysUser, String[] roleId);
	/**
	 * 删除用户
	 */
	void delete(String id);

}