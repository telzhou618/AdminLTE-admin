package com.vacomall.entity.vo;

import java.io.Serializable;
import java.util.List;
/**
 * 
 * @author Gaojun.Zhou
 * @date 2016年12月14日 上午11:52:50
 */
public class TreeMenuVo implements Serializable {
	
	/**
	* @Fields serialVersionUID : TODO()
	*/
	
	private static final long serialVersionUID = 1L;

	private MenuVo menuVo;
	
	private List<MenuVo> menuVoChild;

	public MenuVo getMenuVo() {
		return menuVo;
	}

	public void setMenuVo(MenuVo menuVo) {
		this.menuVo = menuVo;
	}

	public List<MenuVo> getMenuVoChild() {
		return menuVoChild;
	}

	public void setMenuVoChild(List<MenuVo> menuVoChild) {
		this.menuVoChild = menuVoChild;
	}

	public TreeMenuVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TreeMenuVo(MenuVo menuVo, List<MenuVo> menuVoChild) {
		super();
		this.menuVo = menuVo;
		this.menuVoChild = menuVoChild;
	}
}
