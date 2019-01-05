<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="updateAcadDlg" class="container_24">
	<form id="maintainForm" method="post" action="${pageContext.request.contextPath }/acadInfo/updateAcadInfo.action">
		<input type="hidden" name="cbid" value="<s:property value="model.cbid"/>"/>
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">学会新闻内容：</label>
		</div>
		<div class="grid_13">
			<%-- <input type="text" name="tContent" value="<s:property value="model.tContent"/>" class="form-txt">  --%>
			<textarea rows="200" cols="100" name="bContent" id="bContent" style="height:50px">
				<s:property value="model.bContent"/>
			</textarea>
		</div>
		
	</form>
</div>

<script>
$(function(){
	onLoad();
	
	function onLoad(){
		var bContent = $("#bContent").val();
    	var text = myTrim(bContent);
    	$("#bContent").val(text);
	}
})
 $("#maintainForm").formValidate({
	 rules : {
		 bContent : {
				required : true,
				minlength : 2,
				maxlength : 100
			}
		},
		messages : {
			bContent : {
				required : "学会新闻内容不能为空！",
				minlength : $.format("学会新闻内容至少需要输入{0}个字符"),
				maxlength : $.format("学会新闻内容最多只能输入{0}个字符")
			}
		},
        submitHandler: function(form) {
            $(form).ajaxSubmit({
                success: function(data){
                    $("#acadList").trigger("reloadGrid");
                    $.messageBox({message:"修改成功!"});
                    $("#acadDialog").dialog("close");
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



