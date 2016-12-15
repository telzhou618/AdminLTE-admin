package com.vacomall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vacomall.entity.SysUserRole;
import com.vacomall.mapper.SysUserRoleMapper;
import com.vacomall.service.ISysUserRoleService;
import com.vacomall.service.support.BaseServiceImpl;

/**
 *
 * SysUserRole 表数据服务层接口实现类
 *
 */
@Service
public class SysUserRoleServiceImpl extends BaseServiceImpl<SysUserRoleMapper, SysUserRole> implements ISysUserRoleService {

	@Autowired private SysUserRoleMapper sysUserRoleMapper;
	
	@Override
	public List<String> selectPermissionByUid(String uid) {
		// TODO Auto-generated method stub
		return sysUserRoleMapper.selectPermissionByUid(uid);
	}


}