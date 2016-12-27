package com.vacomall.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

/**
 *
 * 
 *
 */
@TableName("sys_user_role")
public class SysUserRole implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 主键 */
	@TableId(type = IdType.UUID)
	private String Id;

	/** 用户主键 */
	private String userId;

	/** 角色主键 */
	private String roleId;

	public String getId() {
		return this.Id;
	}

	public void setId(String Id) {
		this.Id = Id;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRoleId() {
		return this.roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public SysUserRole() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SysUserRole(String userId) {
		super();
		this.userId = userId;
	}

}
