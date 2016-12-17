package com.vacomall.mapper;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.vacomall.entity.SysUser;

/**
 *
 * SysUser 表数据库控制层接口
 *
 */
public interface SysUserMapper extends AutoMapper<SysUser> {

	List<Map<Object, Object>> selectUserList(Page<Map<Object, Object>> page, String search);
}