package com.vacomall.web.service.impl;

import org.springframework.stereotype.Service;

import com.baomidou.hibernateplus.service.impl.ServiceImpl;
import com.vacomall.web.model.SysUser;
import com.vacomall.web.service.UserService;
import com.vacomall.web.vo.UserVO;

/**
 * <p>
 *   服务实现类
 * </p>
 *
 * @author gaojun.zhou
 * @since 2016-12-09
 */
@Service
public class UserServiceImpl extends ServiceImpl<SysUser, UserVO> implements UserService {
	
}
