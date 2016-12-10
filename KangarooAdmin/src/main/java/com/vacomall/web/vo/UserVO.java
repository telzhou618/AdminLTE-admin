package com.vacomall.web.vo;

import java.util.Date;

import com.baomidou.hibernate.model.AutoPrimaryKey;

/**
 * <p>
 * 
 * </p>
 *
 * @author gaojun.zhou
 * @since 2016-12-09
 */
public class UserVO extends AutoPrimaryKey {

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


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getUserstate() {
		return userstate;
	}

	public void setUserstate(Integer userstate) {
		this.userstate = userstate;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public String getUserdesc() {
		return userdesc;
	}

	public void setUserdesc(String userdesc) {
		this.userdesc = userdesc;
	}

}
