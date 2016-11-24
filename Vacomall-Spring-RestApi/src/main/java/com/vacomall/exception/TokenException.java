package com.vacomall.exception;

public class TokenException extends RuntimeException{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public TokenException() {
		super("client token is invalid.");
		// TODO Auto-generated constructor stub
	}

	public TokenException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

	public TokenException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public TokenException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public TokenException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}
	
}
