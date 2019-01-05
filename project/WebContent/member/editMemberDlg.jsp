<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="updateBusDlg" class="container_24">
	<form id="maintainForm" method="post" action="${pageContext.request.contextPath }/memberUser/updateMemberInfo.action">
		<input type="hidden" name="uid" value="${user.uid}"/>
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">姓名：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="32" name="name" value="${user.name}" class="form-txt">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">性别：</label>
		</div>
		<div class="grid_13">
			<input type="radio" name="sex" id="sex_1" value="1" checked>男
			<input type="radio" name="sex" id="sex_2" value="2">女
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">出生日期：</label>
		</div>
		<div class="grid_13">
			<input type="text" name="data" id="data" value="${user.data}" class="form-txt">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">证件类型：</label>
		</div>
		<div class="grid_13">
		  <select name="certificates"  id="certificates" class="form-txt" >
	        <option value="1" ${user.certificates==1?'selected':''}>身份证</option>
	        <option value="2" ${user.certificates==2?'selected':''}>军人证</option>
	        <option value="3" ${user.certificates==3?'selected':''}>港澳通行证</option>
	      </select>
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">证件号码：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="18" name="idenNumber" id="idenNumber" value="${user.idenNumber}" onblur="checkIdenNumber();" onfocus="idenFocus();" class="form-txt">
			<span id="idenBox"></span>
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">联系电话：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" name="phone" value="${user.phone}" class="form-txt">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">工作单位：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="20" name="work" value="${user.work}" class="form-txt">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">所属科室：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="20" name="department" value="${user.department}" class="form-txt">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">职务：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="20" name="post" value="${user.post}" class="form-txt">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">职称：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="20" name="title" value="${user.title}" class="form-txt">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">最高学历：</label>
		</div>
		<div class="grid_13">
		<select name="highEducation"  id="highEducation" class="form-txt" >
	        <option value="1" ${user.highEducation==1?'selected':''}>小学</option>
	        <option value="2" ${user.highEducation==2?'selected':''}>初中</option>
	        <option value="3" ${user.highEducation==3?'selected':''}>中专/高中</option>
	        <option value="4" ${user.highEducation==4?'selected':''}>专科</option>
	        <option value="5" ${user.highEducation==5?'selected':''}>本科</option>
	        <option value="6" ${user.highEducation==6?'selected':''}>硕士研究生</option>
	      	<option value="7" ${user.highEducation==7?'selected':''}>博士研究生</option>
	      </select>
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">主修专业：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="20" name="major" value="${user.major}" class="form-txt">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">擅长方向：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="20" name="goodDirection" value="${user.goodDirection}" class="form-txt">
		</div>
		<div  class="grid_24">
			<table id="driverList"> </table>
			<div  style="height: 40px;" id="roleListPager"></div>
		</div>
	</form>
		<input type="hidden" id="memberSex" value="${user.sex}">
</div>

<script>

function checkIdenNumber(){
	var certificates = $("#certificates").val();
	var idenNumber = $("#idenNumber").val();
	var reg1 = /(^\d{15}$)|(^\d{17}([0-9]|X)$)/;
	var reg2 = /^[HMhm]{1}([0-9]{10}|[0-9]{8})$/;
	idenBox.style.display="block";
	var flag = false;
	if("1" == certificates){
		if(idenNumber.length != 18){
			idenBox.innerHTML="<font color='red'>证件号码长度不正确，请检查重新输入！</font>";
			return flag;
		}else if(!reg1.test(idenNumber)){
			idenBox.innerHTML="<font color='red'>证件号码输入的格式不正确！</font>";
			return flag;
		}
	}else if("3" == certificates){
		if(idenNumber.length != 9){
			idenBox.innerHTML="<font color='red'>证件号码长度不正确，请检查重新输入！</font>";
			return flag;
		}else if(!reg2.test(idenNumber)){
			idenBox.innerHTML="<font color='red'>证件号码输入的格式不正确！</font>";
			return flag;
		}
	}
	return true;
}
function idenFocus(){
	idenBox.innerHTML="";
	idenBox.style.display="none";
}

$(document).ready(function(){
	
	var memberSex = $("#memberSex").val();
	if("1" == memberSex){
		$("#sex_1").attr("checked","checked");
	}else if("2" == memberSex){
		$("#sex_2").attr("checked","checked");
	}
	
	var certificates = $("#certificates").val();
	if("1" == certificates){
		$("#certificates").val("身份证");
	}else if("2" == certificates){
		$("#certificates").val("军人证");
	}else if("3" == certificates){
		$("#certificates").val("港澳通行证");
	}
	
	var highEducation = $("#highEducation").val();
	if("1" == highEducation){
		$("#highEducation").val('小学');
	}else if("2" == highEducation){
		$("#highEducation").val('初中');
	}else if("3" == highEducation){
		$("#highEducation").val('中专/高中');
	}else if("4" == highEducation){
		$("#highEducation").val('专科');
	}else if("5" == highEducation){
		$("#highEducation").val('本科');
	}else if("6" == highEducation){
		$("#highEducation").val('硕士研究生');
	}else if("7" == highEducation){
		$("#highEducation").val('博士研究生');
	}
})

 $("#maintainForm").formValidate({
	 rules : {
			name : {
				required : true,
				minlength : 2,
				maxlength : 20
			},
			data : {
				required : true
			},
			idenNumber : {
				required : true
			},
			work : {
				required : true,
				minlength : 2,
				maxlength : 20
			},
			phone : {
				required : true,
				mobile:true,
			},
			department : {
				required : true,
				minlength : 2,
				maxlength : 20
			},
			post : {
				required : true,
				minlength : 2,
				maxlength : 20
			},
			title : {
				required : true,
				minlength : 2,
				maxlength : 20
			},
			major : {
				required : true,
				minlength : 2,
				maxlength : 20
			},
			goodDirection : {
				required : true,
				minlength : 2,
				maxlength : 20
			}
		},
		messages : {
			name : {
				required : "姓名不能为空！",
				minlength : $.format("姓名至少需要输入{0}个字符"),
				maxlength : $.format("姓名最多只能输入{0}个字符")
			},
			data : {
				required : "出生日期不能为空！"
			},
			idenNumber : {
				required : "证件号码不能为空！"
			},
			phone : {
				required : "联系电话不能为空！",
				mobile:"联系电话输入的格式不正确！"
			},
			work : {
				required : "工作单位不能为空！",
				minlength : $.format("工作单位至少需要输入{0}个字符"),
				maxlength : $.format("工作单位最多只能输入{0}个字符")
			},
			department : {
				required : "所属科室不能为空！",
				minlength : $.format("所属科室至少需要输入{0}个字符"),
				maxlength : $.format("所属科室最多只能输入{0}个字符")
			},
			post : {
				required : "职务不能为空！",
				minlength : $.format("职务至少需要输入{0}个字符"),
				maxlength : $.format("职务最多只能输入{0}个字符")
			},
			title : {
				required : "职称不能为空！",
				minlength : $.format("职称至少需要输入{0}个字符"),
				maxlength : $.format("职称最多只能输入{0}个字符")
			},
			major: {
				required : "主修专业不能为空！",
				minlength : $.format("主修专业至少需要输入{0}个字符"),
				maxlength : $.format("主修专业最多只能输入{0}个字符")
			},
			goodDirection : {
				required : "擅长方向不能为空！",
				minlength : $.format("擅长方向至少需要输入{0}个字符"),
				maxlength : $.format("擅长方向最多只能输入{0}个字符")
			}
			},
	        submitHandler: function(form) {
	            $(form).ajaxSubmit({
	                success: function(data){
	                    $("#memberList").trigger("reloadGrid");
	                    $.messageBox({message:"修改成功!"});
	                    $("#memberDialog").dialog("close");
	                },
	                error: function(XMLHttpRequest, textStatus, errorThrown){
	                    alert("提交数据时发生错误");
	                }
	            });
	        }
	 }); 
</script>



