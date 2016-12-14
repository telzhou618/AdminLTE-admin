package com.vacomall.entity.vo;

import java.io.Serializable;
import java.util.List;

import com.vacomall.entity.SysMenu;
/**
 * 
 * @author Gaojun.Zhou
 * @date 2016年12月14日 上午11:52:50
 */
public class SysMenuVo implements Serializable {
	
	/**
	* @Fields serialVersionUID : TODO()
	*/
	
	private static final long serialVersionUID = 1L;

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

	public SysMenuVo(SysMenu sysMenu, List<SysMenu> sysMenuChild) {
		super();
		this.sysMenu = sysMenu;
		this.sysMenuChild = sysMenuChild;
	}

	public SysMenuVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}
