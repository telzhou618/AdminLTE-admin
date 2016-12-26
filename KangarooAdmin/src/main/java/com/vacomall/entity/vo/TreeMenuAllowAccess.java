package com.vacomall.entity.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.vacomall.entity.SysMenu;

/**
 * 菜单树+是否有权限表示
 * @author Gaojun.Zhou
 * @date 2016年12月26日 上午10:34:02
 */
public class TreeMenuAllowAccess implements Serializable{

	/**
	* @Fields serialVersionUID : TODO()
	*/
	
	private static final long serialVersionUID = 1L;
	
	/**
	 * 菜单
	 */
	private SysMenu sysMenu;
	/**
	 * 是否允许访问
	 */
	private boolean allowAccess = false;
	/**
	 * 子菜单
	 */
	private List<TreeMenuAllowAccess> children = new ArrayList<TreeMenuAllowAccess>();
	
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
	public List<TreeMenuAllowAccess> getChildren() {
		return children;
	}
	public void setChildren(List<TreeMenuAllowAccess> children) {
		this.children = children;
	}
	
}
