package com.vacomall.common.anno;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.vacomall.common.enums.Action;

/**
 * 记录业务日志
 * @author Administrator
 *
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Login {

	/**
	 * 执行动作
	 * {@link Action}
	 */
	Action action() default Action.Normal;
	
}