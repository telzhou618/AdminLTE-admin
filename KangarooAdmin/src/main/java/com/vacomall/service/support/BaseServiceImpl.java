package com.vacomall.service.support;

import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.mapper.AutoMapper;

public class BaseServiceImpl<M extends AutoMapper<T>, T> extends SuperServiceImpl<M, T> {

}
