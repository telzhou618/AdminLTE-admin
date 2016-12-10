package com.vacomall.web.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import com.baomidou.hibernate.model.AutoPrimaryKey;

/**
 * <p>
 * 
 * </p>
 *
 * @author gaojun.zhou
 * @since 2016-12-09
 */
@Entity
@Table(name = "sys_user")
@DynamicInsert(true)
@DynamicUpdate(true)
public class SysUser extends AutoPrimaryKey {

    private static final long serialVersionUID = 1L;

	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 用户状态,1-启用,-1禁用
	 */
	private Integer userstate;
	/**
	 * 创建时间
	 */
	private Date createtime;
	/**
	 * 描述
	 */
	private String userdesc;



	@Column(name = "userName")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	@Column(name = "password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	@Column(name = "userState")
	public Integer getUserstate() {
		return userstate;
	}

	public void setUserstate(Integer userstate) {
		this.userstate = userstate;
	}


	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createTime")
	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}


	@Column(name = "userDesc")
	public String getUserdesc() {
		return userdesc;
	}

	public void setUserdesc(String userdesc) {
		this.userdesc = userdesc;
	}

}
