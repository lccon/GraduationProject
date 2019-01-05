<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="updateCategoryDlg" class="container_24">
	<form id="maintainForm" method="post" action="${pageContext.request.contextPath }/categorySecondInfo/updateCategorySecondInfo.action">
		<input type="hidden" name="csid" value="<s:property value="model.csid"/>"/>
		<div class="grid_5 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">二级分类名：</label>
		</div>
		<div class="grid_5">
			<input type="text" maxlength="32" name="csname" value="<s:property value="model.csname"/>" class="form-txt">
		</div>
		<div class="grid_5 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">所属一级分类：</label>
		</div>
		<div class="grid_5">
			<select name="category.cid" class="form-txt">
				<s:iterator value="list" var="l">
					<option value="<s:property value="#l.cid"/>"<s:if test="#l.cid == model.category.cid">selected</s:if>><s:property value="#l.cname" /></option>
				</s:iterator>
			</select>
		</div>
		<div class="grid_5 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">页面内容修改：</label>
		</div>
		<div class="grid_5">
			<input type="hidden" id="pageInfo" value="<s:property value="pageInfo"/>"/>
			<%@include file="../index.html"%>
			<input type="hidden" name="pageContent" id="pageContent" value=""/>
			<%-- <input type="text" name="tContent" value="<s:property value="model.tContent"/>" class="form-txt"> 
			<textarea rows="200" cols="100" name="pageContent" id="pageInfo" style="height:200px">
					<s:property value="pageInfo"/>
			</textarea> --%>
		</div>
	</form>
</div>

<script>
$(function(){
	
	onLoad();
	
	function onLoad(){
		var pageInfo = $("#pageInfo").val();
    	var text = myTrim(pageInfo);
    	$("#pageInfo").val(text);
	}
})
 $("#maintainForm").formValidate({
	 rules : {
		    csname : {
				required : true,
				minlength : 2,
				maxlength : 32
			}
		},
		messages : {
			csname : {
				required : "二级分类名不能为空！",
				minlength : $.format("二级分类名至少需要输入{0}个字符"),
				maxlength : $.format("二级分类名最多只能输入{0}个字符")
			}
		},
        submitHandler: function(form) {
        	var ue = UE.getEditor('editor')
        	$("#pageContent").val(ue.getContent());
            $(form).ajaxSubmit({
                success: function(data){
                    $("#categorySecondList").trigger("reloadGrid");
                    $.messageBox({message:"修改成功!"});
                    $("#categorySecondDialog").dialog("close");
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



