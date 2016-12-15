package com.vacomall.entity.vo;

import java.util.List;

import com.vacomall.entity.SysMenu;

public class SysMenuVo {

	private SysMenu sysMenu;
	
	private List<SysMenu> sysMenuChild;

	public SysMenu getSysMenu() {
		return sysMenu;
	}

	public void setSysMenu(SysMenu sysMenu) {
		this.sysMenu = sysMenu;
	}

	public List<SysMenu> getSysMenuChild() {
		return sysMenuChild;
	}

	public void setSysMenuChild(List<SysMenu> sysMenuChild) {
		this.sysMenuChild = sysMenuChild;
	}
	
	
	
}
