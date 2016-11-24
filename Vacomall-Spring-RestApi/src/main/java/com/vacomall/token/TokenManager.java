package com.vacomall.token;

public interface TokenManager {
	
	String createToken(String username);

	boolean checkToken(String token);
}
