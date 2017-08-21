package com.vacomall.common;

import javax.validation.ValidationException;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.ui.Model;
import org.springframework.web.HttpMediaTypeNotSupportedException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;
/**
 * 全局异常处理器
 * @author Administrator
 *
 */
@ControllerAdvice
public class ExceptionAdvice {
	
	public static final Logger logger = Logger.getLogger(ExceptionAdvice.class);
	
	  /**
     * 400 - Bad Request
     */
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(ValidationException.class)
    public String handleValidationException(ValidationException e,Model model) {
        logger.error("参数验证失败,"+e.getMessage());
        model.addAttribute("error","参数验证失败,"+e.getMessage());
        return "error/500";
    }
	 /**
     * 400 - Bad Request
     */
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(HttpMessageNotReadableException.class)
    public String handleHttpMessageNotReadableException(HttpMessageNotReadableException e,Model model) {
        logger.error("参数解析失败,"+e.getMessage());
        model.addAttribute("error","不支持当前媒体类型,"+e.getMessage());
        return "error/500";
    }

    /**
     * 405 - Method Not Allowed
     */
    @ResponseStatus(HttpStatus.METHOD_NOT_ALLOWED)
    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public String handleHttpRequestMethodNotSupportedException(HttpRequestMethodNotSupportedException e,Model model) {
        logger.error("不支持当前请求方法,"+e.getMessage());
        model.addAttribute("error","不支持当前媒体类型,"+e.getMessage());
        return "error/500";
    }

    /**
     * 415 - Unsupported Media Type
     */
    @ResponseStatus(HttpStatus.UNSUPPORTED_MEDIA_TYPE)
    @ExceptionHandler(HttpMediaTypeNotSupportedException.class)
    public String handleHttpMediaTypeNotSupportedException(Exception e,Model model) {
        logger.error("不支持当前媒体类型,"+e.getMessage());
        model.addAttribute("error","不支持当前媒体类型,"+e.getMessage());
        return "error/500";
    }

    /**
     * 404 - Not Found
     */
    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(NoHandlerFoundException.class)
    public String handleNoHandlerFoundException(NoHandlerFoundException  e,Model model) {
        logger.error("资源不存在,"+e.getMessage());
        model.addAttribute("error","资源不存在,"+e.getMessage());
        return "error/500";
        
    }
    
    /**
     * 500 - Internal Server Error
     */
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(NullPointerException.class)
    public String handleNullPointerException(NullPointerException e,Model model) {
        logger.error("空指针异常,"+e.getMessage());
        model.addAttribute("error","空指针异常,"+e.getMessage());
        return "error/500";
    }
    
    /**
     * 500
     * @param e
     * @param model
     * @return
     */
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    public String handleException(Exception e,Model model) {
        logger.error("服务运行异常,"+e.getMessage());
        model.addAttribute("error","服务运行异常,"+e.getMessage());
        return "error/500";
    }
}
