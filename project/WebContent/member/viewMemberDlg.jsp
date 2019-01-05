<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div id="updateBusDlg" class="container_24">
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">姓名：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="32"  value="${user.name}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">性别：</label>
		</div>
		<div class="grid_13">
			<input type="radio" name="sex" id="sex_1" value="1" disabled>男
			<input type="radio" name="sex" id="sex_2" value="2" disabled>女
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right"> 
			<em class="form-req">*</em>
			<label class="form-lb1">出生日期：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" value="${user.data}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">证件类型：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" id="certificates" value="${user.certificates}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">证件号码：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" value="${user.idenNumber}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">联系电话：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" value="${user.phone}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">工作单位：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" value="${user.work}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">所属科室：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" value="${user.department}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">职务：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" value="${user.post}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">职称：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" value="${user.title}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">最高学历：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" id="highEducation" value="${user.highEducation}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">主修专业：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" value="${user.major}" class="form-txt" readonly="readonly">
		</div>
		<div class="clearLine">&nbsp;</div>
		<div class="grid_7 label-right">
			<em class="form-req">*</em>
			<label class="form-lb1">擅长方向：</label>
		</div>
		<div class="grid_13">
			<input type="text" maxlength="11" value="${user.goodDirection}" class="form-txt" readonly="readonly">
		</div>
		<input type="hidden" id="memberSex" value="${user.sex}">
</div>

<script>
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

/* $(document).ready(function(){	
	$("#driverList").jqGridFunction({
		datatype : "local",
		colModel : [ {name : "id",index : "id", sortable : false,hidden : true, frozen : true},
					 {name : "driverName",index : "driverName",label:'司机姓名',sortable : true,align : 'center',width:120},
					 {name : "driverSex",index : "driverSex",label:'司机性别',sortable : true,align : 'center',width:120},
					 {name : "identity",index : "identity",label:'身份证号',sortable : true,align : 'center',width:150},
					 {name : "driverCarAge",index : "driverCarAge",label:'司机车龄',sortable : true,align : 'center',width:90},
		],
		multiselect : false,
		height:220,
		
	});
	
	function onLoad(){
		var text = $('#driverIdList').val();
		var text2=text.substr(0,text.length-1);
		var text3=text2.split(",");
		var text4="";
		for(var i=0;i<text3.length;i++)
		{		
			if(i>0){
				text4=text4+",";
			}
			text4+=text3[i].substr(1);
		}
		var initParam = {
				"driverIdList":text4
		}
		
		$("#driverList").setGridParam({
			url:"${path}/driver/findDriverListForPage",
			datatype: "json",
			page:1
		});
		$("#driverList").setPostData(initParam);
		$("#driverList").trigger("reloadGrid");
	}  	
    onLoad();
}); */
</script>



