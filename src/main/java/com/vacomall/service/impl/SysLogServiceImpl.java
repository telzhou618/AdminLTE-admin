package com.vacomall.service.impl;

import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.vacomall.entity.SysLog;
import com.vacomall.mapper.SysLogMapper;
import com.vacomall.service.ISysLogService;

/**
 *
 * SysLog 表数据服务层接口实现类
 *
 */
@Service
public class SysLogServiceImpl extends ServiceImpl<SysLogMapper, SysLog> implements ISysLogService {

	public static final Logger logger = Logger.getLogger(SysLogServiceImpl.class);
	
	@Override
	public void insertLog(String title, String uname, String url, String parms) {
		// TODO Auto-generated method stub
		SysLog sysLog  =new SysLog();
		sysLog.setCreateTime(new Date());
		sysLog.setTitle(title);
		sysLog.setUserName(uname);
		sysLog.setUrl(url);
		sysLog.setParams(parms);
		super.insert(sysLog);
		logger.debug("记录日志:"+sysLog.toString());
	}


}