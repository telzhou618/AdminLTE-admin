
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
	    backdrop: true,
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


//icheck

var checkedBgColor = "#f5f5f5",unCheckedBgColor = "#fff";

$(".checkbox-item").on('ifChecked',function(){
	$(this).parent().parent().parent().css('background',checkedBgColor);
});

$(".checkbox-item").on('ifUnchecked',function(){
	$(this).parent().parent().parent().css('background',unCheckedBgColor);
});
$(".checkbox-toolbar").on('ifChecked',function(){
	$(".checkbox-item").iCheck('check');
	$(".checkbox-item").parent().parent().parent().css('background',checkedBgColor);
	
});
$(".checkbox-toolbar").on('ifUnchecked',function(){
	$(".checkbox-item").iCheck('uncheck');
	$(".checkbox-item").parent().parent().parent().css('background',unCheckedBgColor);
	
});


//delete batch

$("*[delete-batch-url]").click(function(){
	var deleteBatchUrl = $(this).attr('delete-batch-url');
	var ids = [];
	$.each($("input:checked"),function(n,i){
		ids.push($(this).val());
	});
	
	if(ids.length==0){
		bootbox.alert({
			title:'提示',
		    message: "请选择要删除的记录!",
		    backdrop: true
		});
	}else{
		bootbox.confirm({
	    title: "警告消息",
	    message: "确认删除选中的【"+ids.length+"】条记录?",
	    backdrop: true,
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
	    		$.post(deleteBatchUrl,{id:ids},function(json){
	    			if(json.meta.success){
	    				window.location.reload();
	    			}
	    		});
	    	}
	    }
	});
	}
});

})(jQuery, window);
