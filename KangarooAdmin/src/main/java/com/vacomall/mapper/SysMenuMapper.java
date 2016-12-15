package com.vacomall.mapper;

import java.util.List;

import com.vacomall.entity.SysMenu;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * SysMenu 表数据库控制层接口
 *
 */
public interface SysMenuMapper extends AutoMapper<SysMenu> {

	List<SysMenu> selectMenuByuserId(String uid);

}