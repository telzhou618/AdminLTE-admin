package com.vacomall.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vacomall.common.bean.Token;
import com.vacomall.service.IPermissionService;
import com.vacomall.service.ISysMenuService;

/**
 * 权限service实现
 *  Created by Gaojun.Zhou 2017年3月11日
 */
@Service
public class PermissionServiceImpl  implements IPermissionService {
	
	private static final Logger logger = Logger.getLogger(PermissionServiceImpl.class);
	
	@Autowired private  ISysMenuService  sysMenuService;
	
	@Override
	public boolean hasPermission(Token token, String permission) {
		// TODO Auto-generated method stub
		
		if(token == null){
			throw new RuntimeException("非法的用户");
		}
		
		List<String> permissionList =  sysMenuService.selectMenuIdsByuserId(token.getUid());
		
		if(permissionList.contains(permission)){
			return true;
		}
		
		logger.warn(String.format("无[%s]访问权限,uid:%s",permission,token.getUid()));
		
		return false;
	}

}