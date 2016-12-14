package com.vacomall.entity.vo;

import com.vacomall.entity.SysMenu;

/**
 * 菜单
 * @author Gaojun.Zhou
 * @date 2016年12月14日 上午11:51:27
 */
public class MenuVo {

	private SysMenu sysMenu;
	
	private boolean allowAccess = false;

	public SysMenu getSysMenu() {
		return sysMenu;
	}

	public void setSysMenu(SysMenu sysMenu) {
		this.sysMenu = sysMenu;
	}

	public boolean isAllowAccess() {
		return allowAccess;
	}

	public void setAllowAccess(boolean allowAccess) {
		this.allowAccess = allowAccess;
	}

	public MenuVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MenuVo(SysMenu sysMenu, boolean allowAccess) {
		super();
		this.sysMenu = sysMenu;
		this.allowAccess = allowAccess;
	}
}
