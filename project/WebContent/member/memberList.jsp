<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ include file="/includes/baseInclude.jsp"%>
<%@ include file="/includes/jsInclude.jsp"%>
<div id="member">
	<div class="manage-area">
		<div class="manage-area-title">
			<h2>会员信息管理</h2>
		</div>
		<div class="manage-area-main">
			<div id="memberButton">
				<div class="tc-15-action-panel">
					<div data-role="qc-search" style="" class="tc-15-search tc-15-multi-search">
					  <input type="text" id="searchText" data-input="" class="tc-15-search-words" placeholder="请输入姓名"/>
					  <button  id="serach" data-search="" class="tc-15-btn weak m search"></button>
					</div>
					<button id="delete" type="button" class="tc-15-btn m  btn-update">删除</button>
					<button id="update" type="button" class="tc-15-btn m  btn-update">修改</button>
					<button id="view" type="button" class="tc-15-btn m  btn-update">查看</button>
					<button id="reload" type="button" class="tc-15-btn m  btn-update">刷新</button>
				</div>
			</div>
			<div style="width: 100%;">
				<table id="memberList"> </table>
				<div id="memberListPager"></div>
			</div>
			<div id="memberDialog"></div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
    	$("#memberList").jqGridFunction({
    		url:"${pageContext.request.contextPath }/member/findMemberForList?name="+$('#searchText').val(),
            datatype : "json",
            mtype: "GET",  
            autowidth: true,
            colModel : [ 
            			 {name : "uid",index : "uid", sortable : false,hidden : true, frozen : true},
                         {name : "name",index : "name",label:'姓名',sortable : false,align : 'center'},
                         {name : "sex",index : "sex",label:'性别',sortable : true,align : 'center',formatter:sex},
                         {name : "data",index : 'data',label : '出生日期',sortable : false,align : 'center',formatter:birthday}, 
						 {name : "certificates",index : 'certificates',label : '证件类型',sortable : true,align : 'center',formatter:certificates},
						 {name : "idenNumber",index : 'idenNumber',label : '证件号码',sortable : false,align : 'center'},
						 {name : "phone",index : 'phone',label : '电话号码',sortable : false,align : 'center'},
						 {name : "work",index : 'work',label : '工作单位',sortable : false,align : 'center'},
						 {name : "department",index : 'department',label : '所属科室',sortable : false,align : 'center'},
						 {name : "post",index : 'post',label : '职务',sortable : false,align : 'center'},
						 {name : "title",index : 'title',label : '职称',sortable : false,align : 'center'},
						 {name : "highEducation",index : 'highEducation',label : '最高学历',sortable : false,align : 'center',formatter:highEducation},
						 {name : "major",index : 'major',label : '主修专业',sortable : false,align : 'center'},
						 {name : "goodDirection",index : 'goodDirection',label : '擅长方向',sortable : false,align : 'center'}
						/*  {name : "licensing",index : 'licensing',label : '执业许可',sortable : false,align : 'center'},
						 {name : "titleCertificate",index : 'titleCertificate',label : '职称证书',sortable : false,align : 'center'} */
						 
            ],
            multiselect : true,
            height:$(document).height()-$("div.manage-area-title").height()-$("#memberButton").height()-140,
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
            pager: "#memberListPager",   
            hidegrid: false,
            beforeSelectRow: function (rowid, e) {
                $("#memberList").jqGrid('resetSelection');
                return (true);
            },
			onSelectAll: function(aRowids,status){
            	
            	$("#memberList").jqGrid('resetSelection');
            	
            	var selectedId = $("#memberList").jqGrid("getGridParam", "selarrrow");
                if (selectedId.length != 1) {
                    $.messageBox({
                        level: "warn",
                        message: "请选择一条数据再进行操作！"
                    });
                    return;
                }
            },
            ondblClickRow: showMember
        });
    	
    	 function showMember(rowId,iRow,iCol,e){
			$('#memberDialog').createDialog({
            	width: 500,                            
                height: 500,
                title:'查看会员信息详情',
                url:'${pageContext.request.contextPath }/member/showMemberDlg?uid='+getSelectedIds(),
                buttons: {
                    "关闭" : function(){
                        $(this).dialog("close");
                   }
                }
            });
        }
    	
    	 function highEducation(el, options, rowData){
   		 	if("1" == rowData.sex){
    			return "小学";
    		}else if("2" == rowData.sex){
    			return "初中";
    		}else if("3" == rowData.sex){
    			return "中专/高中";
    		}else if("4" == rowData.sex){
    			return "专科";
    		}else if("5" == rowData.sex){
    			return "本科";
    		}else if("6" == rowData.sex){
    			return "硕士研究生";
    		}else if("7" == rowData.sex){
    			return "博士研究生";
    		}
   	 	 }
    	
    	 function sex(el, options, rowData){
    		 if("1" == rowData.sex){
     			return "男";
     		}else if("2" == rowData.sex){
     			return "女";
     		}
    	 }
    	
    	 function birthday(el, options, rowData) {
    		 var arr = rowData.data;
    		 var str = arr.replace('T', ' ');
    		 return str;
   	      }
    	 
    	 function certificates(el, options, rowData) {
    		if("1" == rowData.certificates){
    			return "身份证";
    		}else if("2" == rowData.certificates){
    			return "军人证";
    		}else if("3" == rowData.certificates){
    			return "港澳通行证";
    		}
   	      }
    	
		  function showBus(rowId,iRow,iCol,e){
			$('#memberDialog').createDialog({
            	width: 600,                            
                height: 500,
                title:'查看车辆',
                url:'/bus/dispatch?mode=view&id='+rowId,
                buttons: {
                    "关闭" : function(){
                        $(this).dialog("close");
                   }
                }
            });
        }  
		
    	function onLoad(){
    		var text = $('#searchText').val();
            if(text=="请输入姓名"){
            	text="";
            }
            $("#memberList").setGridParam({
                url:"${pageContext.request.contextPath }/member/findMemberForList?name="+text,
                datatype: "json",
                page:1
            });
            $("#memberList").trigger("reloadGrid");
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
            var selectedIds = $("#memberList").jqGrid("getGridParam", "selarrrow");
            if (selectedIds.length !== 1) {
                $.messageBox({
                    level : 'warn',
                    message : '能且只能选择一条数据进行操作！'
                });
                return;
            }
            $('#memberDialog').createDialog({      
            	width: 600,                            
                height: 500,
                title:'查看会员信息详情',
                url:'${pageContext.request.contextPath }/member/showMemberDlg?uid='+getSelectedIds(),  
                buttons: {
                    "关闭" : function(){
                        $(this).dialog("close");
                   }
                }
            });
        });
    	
    	$("#update").click(function(){
    		var selectedIds = $("#memberList").jqGrid("getGridParam", "selarrrow");
            if (selectedIds.length !== 1) {
                $.messageBox({
                    level : 'warn',
                    message : '能且只能选择一条数据进行操作！'
                });
                return;
            }
            $('#memberDialog').createDialog({      
            	width: 600,                            
                height: 500,
                title:'修改会员信息详情',
                url:'${pageContext.request.contextPath }/member/editMemberDlg?uid='+getSelectedIds(),
                buttons: {
                    "保存" : function(){
                        $("#maintainForm").submit();
                    },
                    "关闭" : function(){
                        $(this).dialog("close");
                        $("#memberList").trigger("reloadGrid");
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
                url:"${pageContext.request.contextPath }/member/deleteMemberForIds",
                data:{
                    "uid":text
                },
                type: 'POST',
                success:function(data){
                    if(data != null && data){
                        $.messageBox({message:"删除成功！"});
                        onLoad();
                    }else{
                        $.messageBox({message:"删除失败！",level: "error"});
                    }
                }
            });
            //onLoad();
        }
        	 
        function hasRowSelected(){
            if(null != $("#memberList").getGridParam("selrow")){
                return true;
            }
            return false;
        }
        function getSelectedIds(){
        	var rowid = $("#memberList").getGridParam("selrow");
            var rowData = $("#memberList").getRowData(rowid);  //1.获取选中行的数据
            var status = rowData.uid;
            return status;
        }
    });
</script>