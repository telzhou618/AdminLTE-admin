package com.vacomall.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.vacomall.entity.SysUserRole;

/**
 *
 * SysUserRole 表数据库控制层接口
 *
 */
public interface SysUserRoleMapper extends BaseMapper<SysUserRole> {

	List<String> selectPermissionByUid(String uid);

}