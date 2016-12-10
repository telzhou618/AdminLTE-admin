
(function ($, window) {

"use strict";

/**
 * Ajax提交操作
 */

$("*[data-tiggle='ajax']").click(function(){
	
	var dataUrl = $(this).attr("data-submit-url");
	var dataConfirm = $(this).attr("data-confirm");
	
	bootbox.confirm({
	    title: "警告消息",
	    message: dataConfirm ? dataConfirm : "确认执行该操作?",
	    buttons: {
	        cancel: {
	            label: '<i class="fa fa-times"></i> 取消'
	        },
	        confirm: {
	            label: '<i class="fa fa-check"></i> 确认',
	             className: 'btn-success'
	        }
	    },
	    callback: function (result) {
	    	if(result){
	    		$.post(dataUrl,{},function(json){
	    			if(json.meta.success){
	    				window.location.reload();
	    			}
	    		});
	    	}
	    }
	});
	
});

  
})(jQuery, window);
