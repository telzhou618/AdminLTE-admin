package com.vacomall.common.util;

import org.apache.shiro.crypto.hash.SimpleHash;

/**
 * Shiro工具类
 * @author jameszhou
 *
 */
public class ShiroUtil {

	/**
	 * 密码加密
	 * @param password
	 * @param salt
	 * @return
	 */
	public static String md51024Pwd(String password,Object salt){
		return new SimpleHash("MD5", password, salt, 1024).toString();
	}
	
}
