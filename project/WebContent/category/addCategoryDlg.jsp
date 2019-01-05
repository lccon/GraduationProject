<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="updateCategoryDlg" class="container_24">
	<form id="maintainForm" method="post" action="${pageContext.request.contextPath }/categoryInfo/saveCategoryInfo.action">
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">一级分类名：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="32" name="cname" value="" class="form-txt">
		</div>
	</form>
</div>

<script>

 $("#maintainForm").formValidate({
	 rules : {
			cname : {
				required : true,
				minlength : 2,
				maxlength : 32
			}
		},
		messages : {
			cname : {
				required : "一级分类名不能为空！",
				minlength : $.format("一级分类名至少需要输入{0}个字符"),
				maxlength : $.format("一级分类名最多只能输入{0}个字符")
			}
		},
        submitHandler: function(form) {
            $(form).ajaxSubmit({
                success: function(data){
                    $("#categoryList").trigger("reloadGrid");
                    $.messageBox({message:"修改成功!"});
                    $("#categoryDialog").dialog("close");
                },
                error: function(XMLHttpRequest, textStatus, errorThrown){
                    alert("提交数据时发生错误");
                }
            });
        }
 }); 
</script>



