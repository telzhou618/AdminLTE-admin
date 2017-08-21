package com.vacomall.common.bean;

import java.io.Serializable;
/**
 * 用户登录Token
 *  Created by Gaojun.Zhou 2017年4月8日
 */
public class Token implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 用户ID
	 */
	private String uid;
	/**
	 * 用户名
	 */
	private String uname;
	/**
	 * 登录IP
	 */
	private String ip;
	/**
	 * 数据
	 */
	private String data;

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}
	
}
