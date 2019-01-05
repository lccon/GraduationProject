<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ include file="/includes/baseInclude.jsp"%>
<%@ include file="/includes/jsInclude.jsp"%>
<div id="announcement">
	<div class="manage-area">
		<div class="manage-area-title">
			<h2>通知公告新闻管理</h2>
		</div>
		<div class="manage-area-main">
			<div id="announcementButton">
				<div class="tc-15-action-panel">
					<div data-role="qc-search" style="" class="tc-15-search tc-15-multi-search">
					  <input type="text" id="searchText" data-input="" class="tc-15-search-words" placeholder="请输入关键内容"/>
					  <button  id="serach" data-search="" class="tc-15-btn weak m search"></button>
					</div>
					<!-- <button id="add" type="button" class="tc-15-btn m  btn-update">添加</button> -->
					<button id="delete" type="button" class="tc-15-btn m  btn-update">删除</button>
					<button id="update" type="button" class="tc-15-btn m  btn-update">修改</button>
					<!-- <button id="view" type="button" class="tc-15-btn m  btn-update">查看</button> -->
					<button id="reload" type="button" class="tc-15-btn m  btn-update">刷新</button>
				</div>
			</div>
			<div style="width: 100%;">
				<table id="announcementList"> </table>
				<div id="announcementListPager"></div>
			</div>
			<div id="announcementDialog"></div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
    	$("#announcementList").jqGridFunction({
    		url:"${pageContext.request.contextPath }/announcement/findAnnouncementForList?name="+$('#searchText').val(),
            datatype : "json",
            mtype: "GET",  
            autowidth: true,
            colModel : [ 
            			 {name : "ctid",index : "ctid", sortable : false,hidden : true, frozen : true},
                         {name : "tContent",index : "tContent",label:'通知公告新闻内容',sortable : false,width:500,align : 'center'}
						 
            ],
            multiselect : true,
            height:$(document).height()-$("div.manage-area-title").height()-$("#announcementButton").height()-140,
            onSelectRow : function() {
            },
            viewrecords: true,  
            rowNum: 15,  
            rowList: [15,20,50,100],  
            prmNames: {search: "search"},    
            jsonReader: {  
                root:"gridModel",      
                records: "record",       
                repeatitems : false     
            },  
            pager: "#announcementListPager",   
            hidegrid: false,
            beforeSelectRow: function (rowid, e) {
                $("#announcementList").jqGrid('resetSelection');
                return (true);
            },
			onSelectAll: function(aRowids,status){
            	
            	$("#announcementList").jqGrid('resetSelection');
            	
            	var selectedId = $("#announcementList").jqGrid("getGridParam", "selarrrow");
                if (selectedId.length != 1) {
                    $.messageBox({
                        level: "warn",
                        message: "请选择一条数据再进行操作！"
                    });
                    return;
                }
            }/*,
            ondblClickRow: showCategory
            rownumbers: true
             setLabel:$("#categoryList").jqGrid('setLabel','rn', '序号', {'text-align':'left'}); */
        });
    	
		  $("#add").click(function(){
	            $('#announcementDialog').createDialog({      
	                width: 600,                            
	                height: 250,
	                title:'新增一级分类信息',
	                url:'${pageContext.request.contextPath }/announcement/addAnnouncementDlg',     
	                buttons: {
	                    "保存" : function(){
	                        $("#maintainForm").submit();
	                    },
	                    "关闭" : function(){
	                        $(this).dialog("close");
	                   }
	                }
	            });
	        });
		  
    	function onLoad(){
    		var text = $('#searchText').val();
            if(text=="请输入姓名"){
            	text="";
            }
            $("#announcementList").setGridParam({
                url:"${pageContext.request.contextPath }/announcement/findAnnouncementForList?name="+text,
                datatype: "json",
                page:1
            });
            $("#announcementList").trigger("reloadGrid");
        }
    	
    	onLoad(); 
    	
    	$("#reload").click(function(){
    		$('#searchText').val("");
            onLoad();
        });
    	
    	$('#serach').click(function(){
            var text = $('#searchText').val();
            if(text=="请输入姓名"){
                return;
            }
            onLoad();
        });
    	
		$("#view").click(function(){
            var selectedIds = $("#announcementList").jqGrid("getGridParam", "selarrrow");
            if (selectedIds.length !== 1) {
                $.messageBox({
                    level : 'warn',
                    message : '能且只能选择一条数据进行操作！'
                });
                return;
            }
            $('#categoryDialog').createDialog({      
            	width: 600,                            
                height: 500,
                title:'查看会员信息详情',
                url:'${pageContext.request.contextPath }/category/showCategoryDlg?uid='+getSelectedIds(),  
                buttons: {
                    "关闭" : function(){
                        $(this).dialog("close");
                   }
                }
            });
        });
    	
    	$("#update").click(function(){
    		var selectedIds = $("#announcementList").jqGrid("getGridParam", "selarrrow");
            if (selectedIds.length !== 1) {
                $.messageBox({
                    level : 'warn',
                    message : '能且只能选择一条数据进行操作！'
                });
                return;
            }
            $('#announcementDialog').createDialog({      
            	width: 800,                            
                height: 250,
                title:'修改一级分类信息详情',
                url:'${pageContext.request.contextPath }/announcementInfo/editAnnouncementDlg?contid='+getSelectedIds(),
                buttons: {
                    "保存" : function(){
                        $("#maintainForm").submit();
                    },
                    "关闭" : function(){
                        $(this).dialog("close");
                        $("#announcementList").trigger("reloadGrid");
                   }
                }
            });
       });
    	
    	
        $("#delete").click(function(){
        	if(!hasRowSelected()){
                $.messageBox({level:'warn',message:"请先选择要删除的数据！"});
                return;
            }
        	$.confirm({
                title:"确认删除",
                message:"该条信息删除后,将无法恢复,您确认删除该条信息吗?",
                width:400,
                okFunc:function(){
                    deleteData();
                }
            });
        });
        
        function deleteData(){
        	var text = getSelectedIds();
        	text = text.toString();
            $.ajax({
                url:"${pageContext.request.contextPath }/announcement/deleteAnnouncementForIds",
                data:{
                    "ctid":text
                },
                type: 'POST',
                success:function(data){
                       $.messageBox({message:"删除成功！"});
                       onLoad();
                }
            });
            //onLoad();
        }
        	 
        function hasRowSelected(){
            if(null != $("#announcementList").getGridParam("selrow")){
                return true;
            }
            return false;
        }
        function getSelectedIds(){
        	var rowid = $("#announcementList").getGridParam("selrow");
            var rowData = $("#announcementList").getRowData(rowid);  //1.获取选中行的数据
            var status = rowData.ctid;
            return status;
        }
    });
</script>