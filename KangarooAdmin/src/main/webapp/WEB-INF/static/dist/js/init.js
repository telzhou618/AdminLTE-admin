
(function ($, window) {

"use strict";

/**
 * Ajax提交操作
 */
$("*[data-tiggle='ajax']").click(function(){
	
	var dataUrl = $(this).attr("data-submit-url");
	var dataConfirm = $(this).attr("data-confirm");
	
	$.confirm({
		type: 'red',
		closeIcon: true,
	    title: '警告',
	    content: dataConfirm ? dataConfirm : '确认操作?',
	    buttons: {
	        '确认': {
	            btnClass: 'btn-blue',
	            action: function(){
	            	$.post(dataUrl,{},function(json){
						if(json.meta.success){
							window.location.reload();
						}else{
							$.alert({
							    title: '提示',
							    content: json.meta.message,
							    buttons:{"好的":{ btnClass: 'btn-blue'}}
							});
						}
					});
	            }
	        },
	        '取消':{}
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
		if($(this).val()!='root'){
		   ids.push($(this).val());
		}
	});
	
	if(ids.length==0){
		$.alert({
		    title: '提示',
		    backgroundDismiss:true,
		    content: "请选择要删除的记录!",
		    buttons:{"好的":{ btnClass: 'btn-blue'}}
		});
	}else{
		$.confirm({
			type: 'red',
			closeIcon: true,
		    title: '警告',
		    content: "确认删除选中的【"+ids.length+"】条记录?",
		    buttons: {
		        '确认': {
		            btnClass: 'btn-blue',
		            action: function(){
		            	$.post(deleteBatchUrl,{id:ids},function(json){
							if(json.meta.success){
								window.location.reload();
							}else{
								$.alert({
								    title: '提示',
								    content: json.meta.message,
								    buttons:{"好的":{ btnClass: 'btn-blue'}}
								});
							}
						});
		            }
		        },
		        '取消':{}
		    }
		});		
	}
});

})(jQuery, window);
