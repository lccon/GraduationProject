;(function ($) {
	$.createDialog = function(o) {
		var dfop = {
			id:"",
			title : "",
			width : 300,
			height : 400,
			modal : true,
			stack : true,
			resizable : false,
			bgiframe: true,
			position:'center',
			dragStart:function(){
				$(".tip-error").remove();
				$(".tip-yellowsimple").remove();
				$("*[createMsg='true']").attr("createMsg","false");
			},
			close:function(){
				docObj.empty();
				docObj.dialog("destroy");
				docObj.remove();
			},
			url:false
		}
		$.extend(dfop, o);
		var docObj=$("<div id='"+dfop.id+"'/>");
		docObj.appendTo("body");
		if(o.close){
			dfop.close = function(){
				o.close.call(dfop.close,docObj);
				docObj.empty();
				docObj.dialog("destroy");
				docObj.remove();
				$(".tip-error").remove();
				$(".tip-yellowsimple").remove();
				$("*[createMsg='true']").attr("createMsg","false");
			};
		}
		getAjax(dfop.url,docObj);
		function getAjax(url,docObj) {
			docObj.empty();
			docObj.html('<div style="margin-top:40px;margin-left:'+((dfop.width-100)/2)+'px"><img src="'+RESOURCE_PATH+'/resource/images/dialog/loading.gif" alt="加载中..." /></div>');
			docObj.bgiframe();
			docObj.dialog(dfop);
			docObj.width(docObj.width()).css({"overflowX":"hidden"});
			$.ajax( {
				url : url,
				cache: false,
				success : function(result) {
					proccessLoginResult(result,function(){docObj.html(result)});
					self.unbind("scroll").scroll(function(){
						$(".tip-error").remove();
						$(".ui-autocomplete").hide();
					})
				}
			});
		}
	};
	$.confirm=function(o){
		var dfop={
			level: "info",//TODO 确认 warn 警告,alert,info
			message: "",
			title:"确认",
			okFunc: false,
			cancelFunc:false,
			cancelBtnName:"取消",
			okbtnName :"确定"
		};
		$.extend(dfop, o);
		var div='<div title="'+dfop.title+'" ><p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>'+dfop.message+'</p></div>';
		//$('body').append(div)
		var buttonStr="{'"+dfop.okbtnName+"':function(){" +
			'if(o.okFunc){'+
			'o.okFunc.call(dfop.okFunc,$(this));'+
			'}'+
			"$(this).dialog('destroy');$(this).remove();"+
			"},'"+dfop.cancelBtnName+"':function(){" +
			'if(o.cancelFunc){'+
			'o.cancelFunc.call(dfop.cancelFunc,$(this));'+
			'}'+
			"$(this).dialog('destroy');$(this).remove();"+
			"}}";

		var buttons=eval("("+buttonStr+")");

		dfop = {
			autoOpen: true,
			resizable : false,
			modal: true,
			buttons: buttons
		};
		$.extend(dfop, o);

		$(div).dialog(dfop);
	};
	$.notice=function(o){
		var dfop={
			level: 'info',//warn,alert,info
			okbtnName: "确定",
			title:'警告',
			message: "",
			okFunc: false
		};
		$.extend(dfop, o);
		var div=
			'<div title="'+dfop.title+'">'
			+'<p><span class="ui-icon ui-icon-alert" style="float:left; margin-right: .3em;"></span>'
			+dfop.message
			+'</p>'
			+'</div>';
		var buttonStr="{'"+dfop.okbtnName+"':function(){" +
			'if(o.okFunc){'+
			'o.okFunc.call(dfop.okFunc,$(this));'+
			'}'+
			"$(this).dialog('destroy');$(this).remove();"+
			"}}";

		var buttons=eval("("+buttonStr+")");

		dfop = {
			autoOpen: true,
			resizable : false,
			modal: true,
			buttons: buttons
		};
		$.extend(dfop, o);

		$(div).dialog(dfop);
	};
	$.yesNoCancelDlg=function(o){
		var dfop={
			level: 'info',//warn,alert,info
			yesFunc: false,
			noFunc: false,
			cancelFunc:false,
			message: "",
			title:"",
			yesBtnName: "是",
			noBtnName:"否",
			cancelBtnName: "取消"
		};
		$.extend(dfop, o);
		var div=
			'<div title="'+dfop.title+'">'
			+'<p><span class="ui-icon ui-icon-alert" style="float:left;margin-right: .3em;"></span>'
			+dfop.message
			+'</p>'
			+'</div>';
		var buttonStr="{'"+dfop.yesBtnName+"':function(){" +
			'if(o.yesFunc){'+
			'o.yesFunc.call(dfop.yesFunc,$(this));'+
			'}'+
			"$(this).dialog('destroy');$(this).remove();"+
			"},'"+dfop.noBtnName+"':function(){" +
			'if(o.noFunc){'+
			'o.noFunc.call(dfop.noFunc,$(this));'+
			'}'+
			"$(this).dialog('destroy');$(this).remove();"+
			"},'"+dfop.cancelBtnName+"':function(){" +
			'if(o.cancelFunc){'+
			'o.cancelFunc.call(dfop.cancelFunc,$(this));'+
			'}'+
			"$(this).dialog('destroy');$(this).remove();"+
			"}}";

		var buttons=eval("("+buttonStr+")");

		dfop = {
			autoOpen: true,
			resizable : false,
			modal: true,
			buttons: buttons
		};
		$.extend(dfop, o);

		$(div).dialog(dfop);
	};
	$.fn.createDialog = function(o) {
		var selfId=this.selector.substring(1,this.selector.length);

		if(this[0]==undefined){
			$("body").append('<div id="'+selfId+'"></div>');
		}
		var self=$("#"+selfId);
		var dfop = {
			title : "",
			width : 300,
			height : 400,
			modal : true,
			resizable : false,
			close : function(){},
			postData:{},
			stack : true,
			url:false,
			position:'center',
			shouldEmptyHtml:true,
			dragStart:function(){
				$(".tip-error").remove();
				$(".tip-yellowsimple").remove();
				$("*[createMsg='true']").attr("createMsg","false");
				self.css("opacity",'0.1');
				self.parent().removeClass("fadeIn");
			},
			dragStop:function(){
				self.css("opacity",'1');
			},
			loadComplete:function(){
			},
			open:function(){
				self.parent().addClass("fadeIn");
				$(".tip-default").remove();
			}
		};
		var viewportwidth;//可视宽
		var viewportheight;//可视高
		function viewport(){
			// 支持(mozilla/netscape/opera/chrome/IE7)
			if (typeof window.innerWidth != 'undefined') {
				//viewportwidth = window.innerWidth;
				viewportheight = window.innerHeight;
			}
			// 支持（IE6）
			else if (typeof document.documentElement != 'undefined' && typeof document.documentElement.clientWidth != 'undefined' && document.documentElement.clientWidth != 0) {
				//viewportwidth = document.documentElement.clientWidth;
				viewportheight = document.documentElement.clientHeight;
			}
			// 支持其他浏览器
			else {
				//viewportwidth = document.getElementsByTagName('body')[0].clientWidth;
				viewportheight = document.getElementsByTagName('body')[0].clientHeight;
			}

		}
		viewport()

		$.extend(dfop, o);
		if( dfop.setData ){
			self.data("setData",dfop.setData);
		}
		if( dfop.height > viewportheight){ dfop.height = viewportheight}

		dfop.close=function(){
			if(o.close){
				o.close.call(dfop.close,$(this));
			}
			if(dfop.shouldEmptyHtml){
				$(this).empty();
			}
			$(".tip-error").remove();
			$(".tip-yellowsimple").remove();
			$("*[createMsg='true']").attr("createMsg","false");
			$(".peopleSelectDlg").remove();
			self.parent().removeClass("fadeIn");
			self.dialog("destroy");
			/*		    self.parents(".ui-dialog").nextAll("#jSIPContainer").remove();
			 */		}
		if($.cookie('bigFontStyle')>=16){
			dfop.width=dfop.width+80;
		}
		function proccessLoginResult(result,callback){
			if(result && result.indexOf("notHasLogin")>=0){

			}else{
				callback();
			}
		}
		getAjax(dfop.url,self);
		function buttonStyle(docObj){
			var $nextBtn=docObj.closest(".ui-dialog").find(".ui-dialog-buttonpane").find("button:contains('下一步')");
			var $saveBtn=docObj.closest(".ui-dialog").find(".ui-dialog-buttonpane").find("button:contains('保存')").first();
			var $submitBtn=docObj.closest(".ui-dialog").find(".ui-dialog-buttonpane").find("button:contains('确定')").first();
			if($nextBtn[0]){
				$nextBtn.addClass("butFocus");
			}else{
				$saveBtn.addClass("butFocus");
				$submitBtn.addClass("butFocus");
			}
		}
		function getAjax(url,docObj) {
			docObj.empty();
			docObj.html('<div style="margin-top:40px;margin-left:'+((dfop.width-100)/2)+'px"><img src="'+RESOURCE_PATH+'/resource/images/dialog/loading.gif" alt="加载中..." /></div>');
			docObj.dialog(dfop);
			docObj.width(docObj.width());
			$.ajax( {
				url : url,
				cache: false,
				data:dfop.postData,
				success : function(result) {
					proccessLoginResult(result,function(){docObj.html(result);});
					docObj.children("#dialog-form:first").removeAttr("title");
					dfop.loadComplete();
					buttonStyle(docObj);
					self.unbind("scroll").scroll(function(){
						$(".tip-error").remove();
						$(".ui-autocomplete").hide();
					})
				}
			});
		}
		return self;
	};
})(jQuery);