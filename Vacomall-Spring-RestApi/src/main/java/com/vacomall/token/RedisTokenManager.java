package com.vacomall.token;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.vacomall.redis.JedisClient;
/**
 * Redis Token存储实现
 * @author Administrator
 *
 */
@Component
public class RedisTokenManager  implements TokenManager {

	@Autowired private JedisClient jedisClient;

	/**
	 * 存储12个小时
	 */
	public static int timeOut = 60 * 60 *12;
	
    @Override
    public String createToken(String uid) {
        String token = UUID.randomUUID().toString().replaceAll("-", "");
        jedisClient.set(token, uid,timeOut);
        return token;
    }

    @Override
    public boolean checkToken(String token) {
    	
        return !StringUtils.isEmpty(jedisClient.get(token));
    }
}
