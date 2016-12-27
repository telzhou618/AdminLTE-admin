package com.vacomall.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.vacomall.entity.SysMenu;

/**
 *
 * SysMenu 表数据库控制层接口
 *
 */
public interface SysMenuMapper extends BaseMapper<SysMenu> {

	List<String> selectMenuIdsByuserId(String uid);

}