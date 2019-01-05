<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="updateCategoryDlg" class="container_24">
	<form id="maintainForm" method="post" action="${pageContext.request.contextPath }/announcementInfo/updateAnnouncementInfo.action">
		<input type="hidden" name="ctid" value="<s:property value="model.ctid"/>"/>
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">通知公告新闻内容：</label>
		</div>
		<div class="grid_13">
			<%-- <input type="text" name="tContent" value="<s:property value="model.tContent"/>" class="form-txt">  --%>
			<textarea rows="200" cols="100" name="tContent" id="tContent" style="height:50px">
				<s:property value="model.tContent"/>
			</textarea>
		</div>
		
	</form>
</div>

<script>
$(function(){
	onLoad();
	
	function onLoad(){
		var tContent = $("#tContent").val();
    	var text = myTrim(tContent);
    	$("#tContent").val(text);
	}
})
 $("#maintainForm").formValidate({
	 rules : {
		 tContent : {
				required : true,
				minlength : 2,
				maxlength : 100
			}
		},
		messages : {
			tContent : {
				required : "通知公告新闻内容不能为空！",
				minlength : $.format("通知公告新闻内容至少需要输入{0}个字符"),
				maxlength : $.format("通知公告新闻内容最多只能输入{0}个字符")
			}
		},
        submitHandler: function(form) {
            $(form).ajaxSubmit({
                success: function(data){
                    $("#announcementList").trigger("reloadGrid");
                    $.messageBox({message:"修改成功!"});
                    $("#announcementDialog").dialog("close");
                },
                error: function(XMLHttpRequest, textStatus, errorThrown){
                    alert("提交数据时发生错误");
                }
            });
        }
		
 }); 
	function myTrim(x) {
	    return x.replace(/^\s+|\s+$/gm,'');
	}
</script>



