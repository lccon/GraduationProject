function jqGridMultiSelectState(jqgridId, selected){
	if (selected){
		$("#cb_"+jqgridId).attr("checked",'true');
	}else{
		$("#cb_"+jqgridId).removeAttr("checked");
	}
}

function getActualjqGridMultiSelectCount(jqgridId){
	var selectedIds=getActualjqGridMultiSelectIds(jqgridId);
	if (selectedIds==null || typeof(selectedIds)=="undefined"){
		return 0;
	}else{
		return selectedIds.length;
	}
}

function getActualjqGridMultiSelectIds(jqgridId){
	return $("#"+jqgridId).jqGrid("getGridParam", "selarrrow");
}

function _existedInArray(array,value){
	if (array==null || typeof(array)=="undefined") return false;
	for (var index=0;index<array.length;index++){
		var existedValue=array[index];
		if (existedValue==value) return true;
	}
	return false;
}

function moveNode(selectedData,moveData,moveTo){
	var levelName = moveTo=='up' ? '顶层': '底层';
		if(selectedData.level != moveData.level && selectedData.count<=0){
			$.notice({level:'warn',
				message:levelName+'目录不能移动。'});
			return ;
		}
		if(moveTo == 'up'){
			$("#"+selectedData.id).after($("#"+moveData.id));
		}else{
			$("#"+moveData.id).after($("#"+selectedData.id));
		}
}
function hideFrozencolModel(colModel){
	for(var i=0;i<colModel.length;i++){
		if(colModel[i].frozen==true){
			$("#col_"+colModel[i].name).parent().hide();
		};
	}
}
function findHiddenColums(colModelFromCookie, name){
	if(colModelFromCookie){
		for(var i=0;i<colModelFromCookie.length;i++){
			var colModel=colModelFromCookie[i].substring(4,colModelFromCookie[i].length);
			if(colModel==name){
				return true;
			}
		}
	}
	return false;
}
function extendDefaultOption(defaultOption, option, colModelFromCookie){
	if(!defaultOption.height){
		defaultOption.height = $(".ui-layout-center").height()-$("#nav:visible").outerHeight(true)-$("#thisCrumbs:visible").outerHeight(true)-$(".content-top").height()-$("#content-top").height()-$(".groupNav").height()-$("#commonPopulation:visible").outerHeight(true)-$("#tabList .ui-tabs-nav").outerHeight(true)-$("#contractCommonPopulation").outerHeight(true)-$("#statistics").height()-$(".center-right .newNavTop").outerHeight(true)-$(".center-right .newNavBottom").outerHeight(true)-$("#contentDiv>.newNavTop").outerHeight(true)-105;
	}
	if(defaultOption.pager==false){
		defaultOption.rowNum=-1;
	}
	$.extend(defaultOption,option);
	for(var i=0;i<defaultOption.colModel.length;i++){
		if(colModelFromCookie && findHiddenColums(colModelFromCookie, defaultOption.colModel[i].name)){
			defaultOption.colModel[i].hidden=false;
		}else if(colModelFromCookie){
			defaultOption.colModel[i].hidden=true;
		}

		if(defaultOption.colModel[i].name=="id"){
			if(defaultOption.showColModelButton){
				defaultOption.colModel[i].hidden=true;
				defaultOption.colModel[i].hidedlg=true;
			};
		};
	}
}
function extendOnSelectRow(defaultOption,option){
	defaultOption.onSelectRow = function(rowId){
		if(option.onSelectRow){
			option.onSelectRow.call(null,rowId);
		}
	}
}
function getColModelFromCookie(self){
	var colModelFromCookie;
	if($.cookie("gridColums")){
		var jsonData = eval("("+$.cookie("gridColums")+")");
		colModelFromCookie = jsonData[self.attr("id")];
	}
	return colModelFromCookie;
}
function proccessStyleWhenSetColumShow(selfId){
	$("#ColTbl_"+selfId).css({height:"200px",overflow:"auto"}).parents(".ui-widget:first").css({"z-index":"2500"});
	$(".ui-jqdialog").css({top:35,right:0});
	$(".jqResize").remove();
	$("#ColTbl_"+selfId).closest(".ui-widget").addClass("noHeader");
}
function bindClickToOkButton(dialog,selfId){
	$("#dData").click(function(){
		var dialogValue="";
		dialog.find(".cbox").each(function(){
			if($(this).attr("checked")){
				dialogValue=dialogValue + "'"+$(this).attr("id")+"',";
			}
		});
		dialogValue=dialogValue.substring(0,dialogValue.length-1);

		var cookieData=selfId+":["+dialogValue+"]";
		var cookieValue = $.cookie("gridColums");
		var jsonData={};
		if(cookieValue && cookieValue!=""){
			jsonData = eval("("+cookieValue+")");
		}
		jsonData[selfId] = eval("(["+dialogValue+"])");
		$.cookie("gridColums",Convert.ToJSONString(jsonData),{expires: 80000, path: '/'});
	});
}
function bindClickToCancelButton(dialog){
	var dialogChecked=new Array();
	dialog.find(".cbox").each(function(i,n){
		if($(this).attr("checked")==true || $(this).attr("checked")=="checked"){
			dialogChecked[i]=true;
		}
		else{
			dialogChecked[i]=false;
		}
	});
	$("#eData").click(function(){
		dialog.find(".cbox").each(function(i,n){
			$(this).attr("checked",dialogChecked[i]);
		});
	})
}
function proccessLabelShow(dialog){
	var labels = $("label",dialog);
	labels.each(function(i,node){
		var text = $(node).text();
		var index=text.lastIndexOf("(");
		if(index!=-1)
			$(node).text(text.substring(0,text.lastIndexOf("(")));
	});
}
;(function ($) {
	if($.browser.msie && $.browser.version<='7.0'){
		$.fn.jqGrid.setFrozenColumns=function(){
			return false;
		}
	}
	$.fn.setPostData=function(postData){
		$(this).jqGrid('setGridParam',{postData: null});
		$(this).jqGrid("setGridParam",{'postData':postData});
	}
	$.fn.getPostData=function(){
		return jQuery(this).jqGrid('getGridParam','postData');
	}
	$.fn.jqGridFunction=function(option){
		var self=$(this);
		var selfId=self.attr("id");
		var defaultOption={
			rowNum:20,
			datatype: "json",
			mtype:'POST',
			altRows:true,
			altclass:"even",
			rowList:[10,15,20,30,50,80,100],
			gridview:true,
			viewrecords:true,
			jsonReader:{
				repeatitems:false,
				id:"0"
			},
			autowidth:true,
			scrollrows:true,
		   	sortname: 'id',
		    sortorder: "desc",
			pager: '#'+$(this).attr("id")+'Pager',
			showColModelButton:false,
			shrinkToFit:false,
			rightClick:false,
			rightClickOption:{},
			loadComplete:function(){
				$.loadingComp("close");
				$('#'+$(this).attr("id")+'Pager .ui-pg-input').attr("size","3");
			},
			recordtext: "共{2}条数据",
			emptyrecords: "当前没有可显示的内容",
			viewrecords:true,
			//pgbuttons:false,是否显示上页 下页图标
			onRightClickRow:function(rowid,iRow,iCol,e){
				self.jqGrid('setSelection',rowid,true );
				self.data("selectid",rowid);
			},
			onSortCol:function(index,iCol,sortorder){//排序开关
				self.data("iCol",iCol);
				self.closest(".ui-jqgrid-view").find(".ui-jqgrid-hdiv").find("th").eq(iCol).addClass("sortorder").siblings().removeClass("sortorder");
			},
			height:($("#appArea").height()- $('.manage-area-title').outerHeight(true) - $('#operArea').outerHeight(true) - 61)
		}
		extendDefaultOption(defaultOption,option,getColModelFromCookie(self));
		for(var i=0;i<defaultOption.colModel.length;i++){
			if(defaultOption.colModel[i].sortable==undefined ){defaultOption.colModel[i].sortable=false;}
		}
		if(option.loadComplete){
			defaultOption.loadComplete=function(){
				option.loadComplete();
				$.loadingComp("close");
				//排序开关
				var icol=self.data("iCol");
				if(icol){
					self.find('.ui-row-ltr').each(function(){
						$(this).find("td").eq(icol).addClass("sortorder").siblings().removeClass("sortorder");
					});
					self.data("iCol",false);
				}
			}
		}
		self.jqGrid(defaultOption);
		if(defaultOption.rightClick){
			self.data("selectid",null);
			self.gridRowRightClick(defaultOption.rightClickOption);
		}
		
		window._currentGrid = self;
		
		if(defaultOption.pager){
			self.navGrid('#'+$(this).attr("id")+'Pager',{
				edit:false,add:false,del:false,search:false,refresh:false
			});
			if(defaultOption.showColModelButton){
				var bindClick=false;
				var colModelBtn=$('<div class="showColModelBtn" id="'+selfId+'showColModelBtn" title="自定义显示列"></div>').click(function(){
					var $selfBtn=$(this);
					self.setColumns({
						onClose:function(){
						$(".showColModelBtn").removeClass("cur");
					},beforeShowForm:
						function(dialog){
							var selfId=self.attr("id");
							proccessStyleWhenSetColumShow(selfId);
							if(!bindClick){
								bindClickToOkButton(dialog,selfId);
							}
							bindClickToCancelButton(dialog);
							bindClick=true;
							proccessLabelShow(dialog);
							hideFrozencolModel(defaultOption.colModel);
							$(".ui-jqgrid .ui-jqdialog,.showColModelBtn").click(function(event){
								event.stopPropagation();
							})
						}
					});
					$(this).jqGrid('setColumns');
					if($selfBtn.hasClass("cur")){
						$selfBtn.removeClass("cur");
						$(".ui-jqgrid .ui-jqdialog").hide();
					}else{
						$selfBtn.addClass("cur");
						setTimeout(function(){
							$(document).one("click", function(e){
								$selfBtn.removeClass("cur");
								$(".ui-jqgrid .ui-jqdialog").hide();
							})
						},200)
					}
				}).appendTo(self.closest(".ui-jqgrid-view"));
			}
		}
	};
	
	
	$.fn.jqSubGrid=function(option){
		function selectColor(){
			var cookie_skin = $.cookie("cssSkin");
			if(cookie_skin==null){cookie_skin="default"}
			switch (cookie_skin) {
			   case "default":
				   return "#A6C9E2";
				   break;
			   case "blue":
				   return "#A5B4D3";
				   break;
			   case "green":
				   return "#C6E371";
				   break;
			};
		}
		var self=$(this);
		var defaultOption={
			subGridUrl:'',
			subGridPostData:false,
			rowNum:20,
			datatype: "json",
			rowList:[10,15,20,30,50,80,100],
			viewrecords:true,
			multiselect: false,
			subGrid: true,
			jsonReader:{
				repeatitems:false,
				id:"0"
			},
			height: 'auto',
			width:'auto',
			autowidth:true,
		   	sortname: 'id',
		    sortorder: "desc",
			pager: '#'+$(this).attr("id")+'Pager',
			showColModelButton:false,
			subGridRowExpanded: function(subgrid_id, row_id) {
				var colspan=$("#"+subgrid_id).parent().attr("colspan");
				$(".subgrid-cell").remove();
				$("#"+subgrid_id).parent().attr("colspan",colspan+1);
				var postData=$.extend({id:row_id},defaultOption.subGridPostData(self.getRowData(row_id)));
				self.find(".sgexpanded").click();
				$("#"+subgrid_id).load(defaultOption.subGridUrl,postData,function(){
					var scrHeight=0;
					self.find("tr").each(function(i,n){
						if($(n).attr("id")==row_id){
							return false;
						}
						scrHeight=scrHeight+$(n).outerHeight();
					});
					self.parent().parent().scrollTop(scrHeight);
					var row = $("#"+row_id,self);
					row.find("td").addClass("ui-widget-border").css({"border-top-width":"2px","border-top-color":"#69f"});
					row.find("td:first").css({"border-left-width":"2px","border-left-color":"#69f"});
					row.find("td:last").css({"border-right-width":"2px","border-right-color":"#69f"});
					
					$("tr.ui-subgrid td:first").css({"border":"2px solid #69f",
													"border-right-width":"0px",
													"border-top-width":"0px"});
					
					$("tr.ui-subgrid td:last").css({"border-left-width":"0px",
													"border-top-width":"0px",
													"border-right-color":"#69f",
													"border-right-width":"2px",
													"border-bottom-color": "#69ff",
													"border-bottom-width": "2px"});
					$(".ui-subgrid td:first .jqsubgrid").width($(".ui-subgrid").width()-15);
					$(".con_up:first").remove();
				});
			},
			subGridRowColapsed: function(subgrid_id, row_id) {
				var row = $("#"+row_id,self);
				row.find("td").removeClass("ui-widget-border").css({"border-top-width":"0px"});
				row.find("td:first").css({"border-left-width":"0px"});
				row.find("td:last").css({"border-right-width":"1px","border-left-width":"0px","border-right-color":selectColor()});
			},
			ondblClickRow : function(rowid){
				self.toggleSubGridRow(rowid);
			},
			caption:false,
			gridComplete:function(){
				//$("tr",self).find("td:not(:first):not(:last)").css({"border-left":"0","border-right":"0"})
			},
			loadComplete:function(){
				$.loadingComp("close");
			}
		}
		defaultOption.height = $(".ui-layout-center").height()-$("#nav:visible").outerHeight()-$("#thisCrumbs:visible").outerHeight()-$(".content-top").height()-$("#content-top").height()-$(".groupNav").height()-$("#commonPopulation:visible").height()-$("#tabList .ui-tabs-nav").outerHeight()-$("#contractCommonPopulation").outerHeight(true)-$("#statistics").height()-65;
		if(defaultOption.pager==false){
			defaultOption.rowNum=-1;
		}
		$.extend(defaultOption,option);

		if(option.loadComplete){//load效果
			defaultOption.loadComplete=function(){
				option.loadComplete();
				$.loadingComp("close");
			}
		}

		extendOnSelectRow(defaultOption,option);
		$(this).jqGrid(defaultOption);
		if(defaultOption.pager){
			$(this).navGrid('#'+$(this).attr("id")+'Pager',{
				edit:false,add:false,del:false,search:false,refresh:false
			});
		}
		window._currentGrid = self;
	};

	$.fn.jqTreeGrid=function(option){
		var self=$(this);
		var defaultOption={
			url: "",
			treeGrid: true,
			treeGridModel : 'adjacency',
			hidegrid: false,
			datatype: "json",
			mtype: "POST",
			height : 'auto',
			width : 'auto',
			editable: false,
			autowidth:true,
			rowNum:-1,
			jsonReader: {
				repeatitems : false,
				id: "0"
			},
			expandIndex:0,
			loadComplete:function(){
				var treeList=self.find(".tree-wrap-ltr");
				for(var i=0;i<treeList.length;i++){
					$(treeList[i]).prependTo($(treeList[i]).parent().parent().children("td")[this.expandIndex]);
				}
				$.loadingComp("close");
			}
		}
		defaultOption.height = $(".ui-layout-center").height()-$("#nav:visible").outerHeight()-$("#thisCrumbs:visible").outerHeight()-$(".content-top").height()-$("#content-top").height()-$(".groupNav").height()-$("#commonPopulation:visible").height()-$("#tabList .ui-tabs-nav").outerHeight()-$("#contractCommonPopulation").outerHeight(true)-$("#statistics").height()-65;
		extendDefaultOption(defaultOption,option,getColModelFromCookie(self));
		if(option.loadComplete){
			defaultOption.loadComplete=function(){
				option.loadComplete();
				var treeList=self.find(".tree-wrap-ltr");
				for(var i=0;i<treeList.length;i++){
					$(treeList[i]).prependTo($(treeList[i]).parent().parent().children("td")[defaultOption.expandIndex]);
				}
				$.loadingComp("close");
			}
		}

		self.jqGrid(defaultOption);
		window._currentGrid = self;
	};


	$.fn.reloadSubGridByRowId=function(rowId){
		var subGrid=$("tr[id='"+rowId+"']",$(this)).next(".ui-subgrid").find("#"+$(this).attr("id")+"_"+rowId);
		subGrid.height($("tr[id='"+rowId+"']",$(this)).next(".ui-subgrid").height());
		subGrid.html('<img src='+RESOURCE_PATH+'"/resource/images/dialog/loading.gif" alt="加载中..." />');
		var subGridPostData = $(this).getGridParam("subGridPostData");
		$.extend(subGridPostData,{id:rowId});
		subGrid.load($(this).getGridParam("subGridUrl"),subGridPostData,function(){subGrid.css("height","auto");});
	};
	$.fn.deleteSubGridByRowId=function(rowId){
		$("#"+rowId,$(this)).next(".ui-subgrid").remove();
	};
	/*删除多行*/
	$.fn.delRowDatas=function(rowIds){
		var len=rowIds.length;
		for(var i=0;i<len;i++){
			$("#"+rowIds[i],$(this)).remove();
		}
	};
	$.fn.getSelectedRowId = function(){
		var rowDom=$(this).getSelectedRowDom();
		if(!rowDom){
			return null;
		}
		return rowDom.attr("id");
	};
	$.fn.getSelectedRowDom = function(){
		if(!$(this).jqGrid('getGridParam','selrow')){
			return null;
		}
		return $("tr"+"[role='row'][id='"+$(this).jqGrid('getGridParam','selrow')+"']",$(this));
	};
	$.fn.getSelectedRowIds=function(){
		return $(this).getGridParam("selarrrow");
	};
	$.fn.toNext=function(url,postData,successCallBack){
		var selfDoc=$(this);
		var rowid=selfDoc.jqGrid('getGridParam','selrow');
		var selectedRow = $("#"+rowid,selfDoc);
		if(url){
			$.ajax({
				type:"post",
				url:url,
				data:postData,
				success:function(data){
						var rowid=selfDoc.jqGrid('getGridParam','selrow');
						var selectedData = selfDoc.getRowData(rowid);
						var nextId = $("#"+rowid,selfDoc).next().attr("id");
						var nextData = selfDoc.getRowData(nextId);
						if(selectedData.count>0){
							selfDoc.reloadDataGrid(null,null);
						}else{
							moveNode(selectedData,nextData,"down");
						}
					if(successCallBack){
						successCallBack.call(null,data);
					}  
				}
			});
		}else{
			var nextRow=selectedRow.next();
			if(nextRow.attr("id")){
				nextRow.after(selectedRow);
			}
		}
	};
	$.fn.toPrevious=function(url,postData,successCallBack){
		var selfDoc=$(this);
		var rowid=selfDoc.jqGrid('getGridParam','selrow');
		var selectedRow = $("#"+rowid,selfDoc);
		if(url){
			$.ajax({
				type:"post",
				url:url,
				data:postData,
				success:function(data){
					var rowid=selfDoc.jqGrid('getGridParam','selrow');
					var selectedData = selfDoc.getRowData(rowid);
					var previousId = $("#"+rowid,selfDoc).prev().attr("id");
					var previousData = selfDoc.getRowData(previousId);
					if(selectedData.count>0){
						selfDoc.reloadDataGrid(null,null);
					}else{
						moveNode(selectedData,previousData,"up");
					}
					if(successCallBack){
						successCallBack.call(null,data);
					}
				}
			});
		}else{
			var prevRow=selectedRow.prev();
			if(prevRow.attr("id")){
				selectedRow.after(prevRow);
			}
		}
	};
	
$.fn.toTreeGridNext=function(url,postData){
		var selfDoc =$("#dailyDirectoryTree");
		var rowid=selfDoc.jqGrid('getGridParam','selrow');
		var selectDaily = selfDoc.getRowData(rowid);
		if(url){
			$.ajax({
				type:"post",
				url:url,
				data:postData,
				success:function(data){
				 if(selectDaily.level==3){
				 var shiftRow =selfDoc.getRowData( $("tr[id="+rowid+"]").next().attr("id"));
				 $("#"+shiftRow.id).after($("#"+selectDaily.id));
				}else if(selectDaily.level==2){
					var nextLevleDaily=selfDoc.getRowData($("tr[id="+rowid+"]").next().attr("id"));
					var selectRowDaily = selfDoc.getRowData($("tr[id="+rowid+"]").next().attr("id"));
					while (true) {
						if(nextLevleDaily.level=="2"){
							break;
				        }else{
				        	nextLevleDaily=selfDoc.getRowData($("#"+nextLevleDaily.id).next().attr("id"));
				        }
			  		}
			  		var node =selfDoc.getRowData($("#"+nextLevleDaily.id).next().attr("id"));
			  		var selectNodeNEXT = selfDoc.getRowData($("#"+nextLevleDaily.id).next().attr("id"));
			  		 	$("#"+nextLevleDaily.id).after($("#"+selectDaily.id));
			  		 if(selectRowDaily.length>0 || selectRowDaily.level=="3"){
				        	 var thisObject = selfDoc.jqGrid('getNodeParent',selectRowDaily);
				       		 var thisObjectchildern =selfDoc.jqGrid("getNodeChildren",thisObject);
							 $(thisObjectchildern).each(function(i){
					            var id = $(this).attr("id");
					         	$("#"+selectDaily.id).after($("#"+id));
					        });
					        
					  }
					  
					 if(selectNodeNEXT.length>0 || selectNodeNEXT.level=="3"){
			  		 	var thisObject = selfDoc.jqGrid('getNodeParent',selectNodeNEXT);
			  			var nextLevleDailych  = selfDoc.jqGrid("getNodeChildren",thisObject);
			  			 $(nextLevleDailych).each(function(i){
				            var id = $(this).attr("id");
				         	$("#"+nextLevleDaily.id).after($("#"+id));
				        });
			  		 }
			  		
			  }   
				
				}
			
		});
		}
	};
	
	
	$.fn.toFirst=function(url,postData,successCallBack){
		var selfDoc=$(this);
		var rowid=selfDoc.jqGrid('getGridParam','selrow');
		var selectedRow = $("#"+rowid,selfDoc);
		if(url){
			$.ajax({
				type:"post",
				url:url,
				data:postData,
				success:function(data){
					$(".jqgfirstrow",selfDoc).after(selectedRow);
					if(successCallBack){
						successCallBack.call(null,data);
					}
				}
			});
		}else{
			$(".jqgfirstrow",selfDoc).after(selectedRow);
		}
	};
	
	$.fn.toTreeFirst=function(url,postData,successCallBack){
		var selfDoc=$(this);
		var rowid=selfDoc.jqGrid('getGridParam','selrow');
		var selectedRow = $("#"+rowid,selfDoc);
		if(url){
			$.ajax({
				type:"post",
				url:url,
				data:postData,
				success:function(data){
					var selfDoc =$("#dailyDirectoryTree");
					var rowid=selfDoc.jqGrid('getGridParam','selrow');
					var selectDaily = selfDoc.getRowData(rowid);
					var pantDaily = selfDoc.jqGrid('getNodeParent',selectDaily);
					var nextLevleDaily=selfDoc.getRowData($("tr[id="+rowid+"]").next().attr("id"));
					 if(nextLevleDaily.length>0 || nextLevleDaily.level=="3"){
				  		 	var thisObject = selfDoc.jqGrid('getNodeParent',nextLevleDaily);
				  			var nextLevleDailych  = selfDoc.jqGrid("getNodeChildren",thisObject);
				  			 $(nextLevleDailych).each(function(i){
					            var id = $(this).attr("id");
					         	$("#"+pantDaily.id).after($("#"+id));
					        });
				  		 }
					$("#"+pantDaily.id).after($("#"+selectDaily.id));
				}
			});	
		}	
	};
	$.fn.expandAppointRow = function(idsStr){
		var selfDoc=$(this);
		if(idsStr==null||idsStr.length<=0){
			return ;
		}
		var idArr=new Array();
		var idArr = idsStr.split("/");
		for(var i=0;i<=idArr.length-1;i++){
			if($($("tr[id="+idArr[i]+"]"),$(selfDoc)).find(".tree-minus") && $($("tr[id="+idArr[i]+"]"),$(selfDoc)).find(".tree-minus").size()==0){
				$($("tr[id="+idArr[i]+"]"),$(selfDoc)).find(".treeclick").click();
			}
		}
	};
	
	$.fn.toTreeEnd=function(url,postData,successCallBack){
		if(url){
			$.ajax({
				type:"post",
				url:url,
				data:postData,
				success:function(data){
					var selfDoc =$("#dailyDirectoryTree");
					var rowid=selfDoc.jqGrid('getGridParam','selrow');
					var selectDaily = selfDoc.getRowData(rowid);
					var pantDaily = selfDoc.jqGrid('getNodeParent',selectDaily);
					var pantDailyNext  = selfDoc.jqGrid("getNodeChildren",pantDaily);
					var nextLevleDaily=selfDoc.getRowData($("tr[id="+rowid+"]").next().attr("id"));
					if(selectDaily.level=="2"){
						if(nextLevleDaily.length>0 || nextLevleDaily.level=="3"){
				  		 	var thisObject = selfDoc.jqGrid('getNodeParent',nextLevleDaily);
				  			var nextLevleDailych  = selfDoc.jqGrid("getNodeChildren",thisObject);
				  			 $(nextLevleDailych).each(function(i){
					            var id = $(this).attr("id");
					         	$("#"+pantDailyNext[pantDailyNext.length-1].id).after($("#"+id));
					        });
				  		 }
						$("#"+pantDailyNext[pantDailyNext.length-1].id).after($("#"+selectDaily.id));
					}else{
						$("#"+pantDailyNext[pantDailyNext.length-1].id).after($("#"+selectDaily.id));
					}
				}
			});
		}
	};
	
	$.fn.toEnd=function(url,postData,successCallBack){
		var selfDoc=$(this);
		var rowid=selfDoc.jqGrid('getGridParam','selrow');
		var selectedRow = $("#"+rowid,selfDoc);
		if(url){
			$.ajax({
				type:"post",
				url:url,
				data:postData,
				success:function(data){
					selfDoc.append(selectedRow);
					if(successCallBack){
						successCallBack.call(null,data);
					}
				}
			});
		}else{
			$(this).append(selectedRow);
		}
	};
	
	$.fn.getGridRowData = function(){
		return $(this).getRowData($(this).getGridParam("selrow"));
	};
	$.fn.reloadDataGrid = function(url,postData){
		if(url==null&&postData==null){
			$(this).trigger("reloadGrid");
			return ;
		}
		$(this).setGridParam({url:url,postData:postData});
		$(this).trigger("reloadGrid");
	};
})(jQuery);