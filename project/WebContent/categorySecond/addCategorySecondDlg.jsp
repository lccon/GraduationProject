<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="updateCategoryDlg" class="container_24">
	<form id="maintainForm" method="post" action="${pageContext.request.contextPath }/categorySecondInfo/saveCategorySecondInfo.action">
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">二级分类名：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="32" name="csname" value="" class="form-txt">
		</div>
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">所属一级分类：</label>
		</div>
		<div class="grid_13">
			<select name="category.cid" class="form-txt">
				<s:iterator value="list" var="l">
					<option value="<s:property value="#l.cid"/>"><s:property value="#l.cname" /></option>
				</s:iterator>
			</select>
		</div>
		
	</form>
</div>

<script>

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
            $(form).ajaxSubmit({
                success: function(data){
                    $("#categorySecondList").trigger("reloadGrid");
                    $.messageBox({message:"添加成功!"});
                    $("#categorySecondDialog").dialog("close");
                },
                error: function(XMLHttpRequest, textStatus, errorThrown){
                    alert("提交数据时发生错误");
                }
            });
        }
 }); 
</script>



