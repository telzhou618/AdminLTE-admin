package com.vacomall.entity.vo;

import java.io.Serializable;
/**
 * 
* @ClassName: SysRoleVo
* @author Gaojun.Zhou
* @date 2016年12月12日 下午1:52:25
*
 */
public class SysRoleVo implements Serializable {

	private static final long serialVersionUID = 1L;

	/** 主键 */
	private String id;

	/** 角色名称 */
	private String roleName;

	/** 角色描述 */
	private String roleDesc;

	/** 状态,1-启用,-1禁用 */
	private Integer roleState;

	private Boolean hasPermission;
	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleDesc() {
		return this.roleDesc;
	}

	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}

	public Integer getRoleState() {
		return this.roleState;
	}

	public void setRoleState(Integer roleState) {
		this.roleState = roleState;
	}

	public Boolean getHasPermission() {
		return hasPermission;
	}

	public void setHasPermission(Boolean hasPermission) {
		this.hasPermission = hasPermission;
	}
	
}
