$(function(){
	//prop
	$(".top-menu li").hover(function(){
		$(this).addClass("cur").find('.drop-down-layer').show();
	},function(){
		$(this).removeClass("cur").find('.drop-down-layer').hide();
	});
	
	$("#productService a").click(function(){
		var url=$(this).attr("url");
		asyncOpenMenu(this,url);
	});
	
	/*$("#operArea").on('click','.tc-15-dropdown',function(){
		$(this).addClass('tc-15-menu-active');
	});*/
	
	$("#operArea .tc-15-dropdown").toggle(function(){
		$(this).addClass('tc-15-menu-active');
	},function(){
		$(this).removeClass('tc-15-menu-active');
	});
	
	$(document).click(function(){
		if(!$(this.activeElement).hasClass("tc-15-dropdown-link")){
			$(".tc-15-dropdown").removeClass('tc-15-menu-active');
		}		
	});

	$.layout();

});

function asyncOpenMenu(srcObj,url) {
	if(url==undefined || url==''){
		//$.messageBox({message:'系统地址出错，请联系管理员',level:'error'});
		return;
	}
	$("#sidebar").html("");
	if(window.ajaxRequest){
    	window.ajaxRequest.abort();
	}
	window.ajaxRequest=$.ajax({
		url : url,
		cache: false,
		success : function(result) {
			//$("#loading").hide();
			$("#sidebar").html(result);
            window.ajaxRequest=null;
		},
		error:function(err){
			window.ajaxRequest=null;
			//$.messageBox({message:'系统出错，请刷新页面重试',level:'error'});
		}
	});
}

function asyncOpen(srcObj, url) {
	if(url==undefined || url==''){
		//$.messageBox({message:'系统地址出错，请联系管理员',level:'error'});
		return;
	}
	document.title = $(srcObj).text();
	$("#baseLine").nextAll(":not(.ui-autocomplete):not('.ui-datepicker')").remove();
	$("#baseLine").nextAll(":not(.ui-autocomplete):not('.ui-datepicker'):hidden").remove();
	$("#appArea").html("");
	//$("#loading").show();
	if(window.ajaxRequest){
    	window.ajaxRequest.abort();
	}
	window.ajaxRequest=$.ajax({
		url : url,
		cache: false,
		success : function(result) {
			//$("#loading").hide();
			$("#appArea").html(result);
            window.ajaxRequest=null;
		},
		error:function(err){
			//$(".dialog_loading").hide();
			window.ajaxRequest=null;
			//$.messageBox({message:'系统出错，请刷新页面重试',level:'error'});
		}
	});
}
function validateSuccessData(data){
	if((typeof(data) == 'object') && (!data.message) &&(!data.expLevel)){
		 return true;
	}
	
	if((typeof(data) == 'string') && (data == true)){
		 return true;
	}
	
	if((typeof(data) == 'boolean') && (data == true)){
		 return true;
	}
}