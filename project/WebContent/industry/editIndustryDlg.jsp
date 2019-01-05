<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="updateAcadDlg" class="container_24">
	<form id="maintainForm" method="post" action="${pageContext.request.contextPath }/industryInfo/updateIndustryInfo.action">
		<input type="hidden" name="nid" value="<s:property value="model.nid"/>"/>
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">学会新闻内容：</label>
		</div>
		<div class="grid_13">
			<%-- <input type="text" name="tContent" value="<s:property value="model.tContent"/>" class="form-txt">  --%>
			<textarea rows="200" cols="100" name="newsContent" id="newsContent" style="height:50px">
				<s:property value="model.newsContent"/>
			</textarea>
		</div>
		
	</form>
</div>

<script>
$(function(){
	onLoad();
	
	function onLoad(){
		var newsContent = $("#newsContent").val();
    	var text = myTrim(newsContent);
    	$("#newsContent").val(text);
	}
})
 $("#maintainForm").formValidate({
	 rules : {
		 newsContent : {
				required : true,
				minlength : 2,
				maxlength : 100
			}
		},
		messages : {
			newsContent : {
				required : "行业新闻内容不能为空！",
				minlength : $.format("行业新闻内容至少需要输入{0}个字符"),
				maxlength : $.format("行业新闻内容最多只能输入{0}个字符")
			}
		},
        submitHandler: function(form) {
            $(form).ajaxSubmit({
                success: function(data){
                    $("#industryList").trigger("reloadGrid");
                    $.messageBox({message:"修改成功!"});
                    $("#industryDialog").dialog("close");
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



