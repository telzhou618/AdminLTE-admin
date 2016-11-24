package com.vacomall.token;

public interface TokenManager {
	
	String createToken(String uid);

	boolean checkToken(String token);
}
