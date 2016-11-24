package com.vacomall.model;

import java.io.Serializable;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
/**
 * 用户信息
 * @author Administrator
 *
 */
public class UserInfo implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long id;

	@NotEmpty(message = "用户名不能为空")
	@Length(min = 5, max = 20, message = "用户名长度为5-20之间")
	@Pattern(regexp = "[a-zA-Z]{5,20}", message = "用户名不合法")
	private String name;

	@NotBlank(message="密码不能为空")
	@Length(min = 5, max = 20, message = "密码长度为5-20之间")
	private String password;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
