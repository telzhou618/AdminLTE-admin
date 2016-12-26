
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


//ajaxmodel

$("*[data-tiggle='ajaxmodel']").click(function(){
	var dataUrl = $(this).attr("data-url");
	$.confirm({
	    title: '参数',
	    content: 'url:'+dataUrl,
		closeIcon: true,
		backgroundDismiss:true,
	    buttons:{'关闭':{}}
	});
	
});

	
//icheck
var checkedBgColor = "#f5f5f5",
		unCheckedBgColor = "#fff";
	//单选
	$(".checkbox-item").on('ifChecked',function(){
		$(this).parents('tr').css('background',checkedBgColor);
	}).on('ifUnchecked',function(){
		$(this).parents("tr").css('background',unCheckedBgColor);
	});
	//全选
	$(".checkbox-toolbar").on('ifChecked',function(){
		$(".checkbox-item").iCheck('check');
		$(".checkbox-item").parents("tr").css('background',checkedBgColor);
	}).on('ifUnchecked',function(){
		$(".checkbox-item").iCheck('uncheck');
		$(".checkbox-item").parents("tr").css('background',unCheckedBgColor);
	});


})(jQuery, window);
