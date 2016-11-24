package com.vacomall.token;

import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
/**
 * 默认Token实现方式为内存Token
 * @author Administrator
 *
 */
@Component
public class DefaultTokenManager  implements TokenManager {

    private static Map<String, String> tokenMap = new ConcurrentHashMap<>();

    @Override
    public String createToken(String uid) {
        String token = UUID.randomUUID().toString();
        tokenMap.put(token, uid);
        return token;
    }

    @Override
    public boolean checkToken(String token) {
        return !StringUtils.isEmpty(token) && tokenMap.containsKey(token);
    }
}
