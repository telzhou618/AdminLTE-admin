package com.vacomall.common;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;
/**
 * JSONP支持，暂时用不到
 * @author Administrator
 *
 */
@ControllerAdvice
public class JsonpSupportAdvice extends AbstractJsonpResponseBodyAdvice {
    public JsonpSupportAdvice() {
        //参数包含callback的时候 使用jsonp的反馈形式
        super("callback");
    }
}