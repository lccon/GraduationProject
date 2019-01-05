<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>北京神经变性病学会</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css"/>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/article.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/textStyle.css"/>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<link rel="icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<script src="${pageContext.request.contextPath }/js/SuperSlide.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui-1.9.2.custom.min.css"/>
<script src="${pageContext.request.contextPath }/js/jquery-ui-1.9.2.custom.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jquery.base.js"></script> 

<script src="${pageContext.request.contextPath}/js/validate.js"></script>
 <script src="${pageContext.request.contextPath}/js/formValidate.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.ui.datepicker-zh-CN.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script> 

<script type="text/javascript">
	function PreviewImage(obj, imgPreviewId, divPreviewId) {
	    var allowExtention = ".jpg,.bmp,.gif,.png"; //,允许上传文件的后缀名  
	    var extention = obj.value.substring(obj.value.lastIndexOf(".") + 1).toLowerCase(); 
	    var browserVersion = window.navigator.userAgent.toUpperCase();  
	    if (allowExtention.indexOf(extention) > -1) {  
	        if (browserVersion.indexOf("MSIE") > -1) {  
	            if (browserVersion.indexOf("MSIE 6.0") > -1) {//ie6  
	                document.getElementById(imgPreviewId).setAttribute("src", obj.value);  
	            } else {//ie[7-8]、ie9  
	                obj.select();  
	                var newPreview = document.getElementById(divPreviewId + "New");  
	                if (newPreview == null) {  
	                    newPreview = document.createElement("div");  
	                    newPreview.setAttribute("id", divPreviewId + "New");  
	                    newPreview.style.width = 160;  
	                    newPreview.style.height = 170;  
	                    newPreview.style.border = "solid 1px #d2e2e2";  
	                }  
	                newPreview.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale',src='" + document.selection.createRange().text + "')";  
	                var tempDivPreview = document.getElementById(divPreviewId);  
	                tempDivPreview.parentNode.insertBefore(newPreview, tempDivPreview);  
	                tempDivPreview.style.display = "none";  
	            }  
	        } else if (browserVersion.indexOf("FIREFOX") > -1) {//firefox  
	            var firefoxVersion = parseFloat(browserVersion.toLowerCase().match(/firefox\/([\d.]+)/)[1]);  
	            if (firefoxVersion < 7) {//firefox7以下版本  
	                document.getElementById(imgPreviewId).setAttribute("src", obj.files[0].getAsDataURL());  
	            } else {//firefox7.0+                      
	                document.getElementById(imgPreviewId).setAttribute("src", window.URL.createObjectURL(obj.files[0]));  
	            }  
	        } else if (obj.files) {  
	            //兼容chrome、火狐等，HTML5获取路径                     
	            if (typeof FileReader !== "undefined") {  
	                var reader = new FileReader();  
	                reader.onload = function (e) {  
	                    document.getElementById(imgPreviewId).setAttribute("src", e.target.result);  
	                }  
	                reader.readAsDataURL(obj.files[0]);  
	            } else if (browserVersion.indexOf("SAFARI") > -1) {  
	                alert("暂时不支持Safari浏览器!");  
	            }  
	        } else {  
	            document.getElementById(divPreviewId).setAttribute("src", obj.value);  
	        }  
	    } else {  
	        alert("仅支持" + allowSuffix + "为后缀名的文件!");  
	        obj.value = ""; //清空选中文件  
	        if (browserVersion.indexOf("MSIE") > -1) {  
	            obj.select();  
	            document.selection.clear();  
	        }  
	        obj.outerHTML = obj.outerHTML;  
	    }  
	} 
</script>
<script type="text/javascript">
$(function(){	
	$("#entryTime").datepicker({
		width:50,
		changeMonth : true,
		dateFormat : "yy-mm-dd",
		maxDate: -1,
		changeMonth: true,
        changeYear: true,
        yearRange:"1980:2050"
	}); 
	
})
</script>
<style type="text/css">
	.ui-datepicker .ui-datepicker-prev span, .ui-datepicker .ui-datepicker-next span{
		background:white;
	}
	.ui-datepicker select.ui-datepicker-month, .ui-datepicker select.ui-datepicker-year{
		width:35%;
	}
	.form-txt{
	    border: 1px solid #ccc;
	    border-radius: 3px;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	    width: 20%;
	    height: 30px;
	    line-height: 1.4;
	    color: #464a4c;
	    background-color: #fff;
	    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
	    transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
	    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
	    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
	    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
	}
	.tip-error{
	 color:red;
	 background:#fff;	 
	 text-align:center;
	 font-size:12px;
	 padding:1px 8px;
	 border-radius:5px;
	 border:1px solid red;
	 
	}
	.p-bar{
	margin-top:10px;
	}
	.form-radio{
		width:3%;	
	}
	.form-sex{
		display:inline-block;
		position:absolute;
		left:368px;
	}
	.form-sub{
		margin:20px 0;
		display:inline-block;
		width:60px;
		height:36px;
		text-align:center;
		line-height:36px;
		border-radius:4px;
		border:none;
		outline:none;
		background-color:#ccc;
		
	}
</style>
</head>

<body>
	<%@include file="../menu.jsp"%>
	<!--内容  -->
	<div class="section slide">
		<div class="container">
			<div class="right fl">
				<%@include file="../attach.jsp"%>
			</div>
			<div class="aritcle fl">
				<div class="text">
					<div class="textStyle">
						<span class="textFigure">
							--> &nbsp;&nbsp;<s:property value="#session.csName"/>
						</span>
					</div>
					<p>
						<%-- <p style="text-align: justify;"><span style="color:#000000;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">我们竭诚欢迎每一位有志于神经变性病科研与临床的医疗工作者加入北京神经变性病学会的大家庭，深入探讨神经变性病的致病原因、发病机理、临床诊治、预防控制、药品研发、诊疗技术等问题，踊跃交流、相互学习国内外神经变性病研究的新观点、新成果，深化学科协作与技术创新，以实现百家争鸣、吐故纳新，促进我国神经变性病的临床诊疗规范与科学发展。</span></span></span></p>
						<h3>北京神经变性病学会入会申请表<span>（填写完成后，请发送至学会邮箱nddc2016@163.com）</span></h3> --%>
					<div class="t-content">
						<input type="hidden" id="pageInfo" value="<s:property value="#session.regist"/>"/>
					</div>
						<h1 align="center">在线申请</h1>
						<span align="center" style="color:red;">
							<s:actionmessage/>
						</span>
					<form align="center" style="position:relative;left:0px;top:20px" id="memberInfoForm" action="${pageContext.request.contextPath }/user_regis.action" method="post" enctype="multipart/form-data" onsubmit="return formValidate()">
						<p class="p-bar">&nbsp;&nbsp;&nbsp;<span>姓名: </span>&nbsp;&nbsp;&nbsp; <s:textfield name="name" id="name" maxlength="20" class="form-txt"/> </p>
						
						<p class="p-bar">
							<span class="form-sex">性别: </span>
							<s:radio name="sex" class="form-radio"  list="#{'1':'男','2':'女'}" value="1"/>
						</p>
						
						<p class="p-bar"><span>出生日期: </span><s:textfield id="entryTime" name="data" readonly= "true" class="form-txt"/> </p>
<%-- 						<p class="p-bar"><span>出生日期: </span><input type="date" id="entryTimes" name="data" class="form-txt"/> </p> --%>
						<p class="p-bar"><span>证件类型: </span><s:select class="form-txt" name="certificates" id="certificates" list="#{'1':'身份证','2':'军人证','3':'港澳通行证'}" label="证件类型" headerKey=""></s:select></p>
						
						<p class="p-bar"><span>证件号码: </span><s:textfield name="idenNumber" id="idenNumber" maxlength="18" class="form-txt" onfocus="idenFocus();"/>
						<span id="idenBox"  class="tip-error" style="position:absolute;left:420px;top:181px;display:none;"></span></p>
						
						<p class="p-bar"><span>联系电话: </span><s:textfield name="phone" id="phone" maxlength="11" class="form-txt"/></p>
						
						<p class="p-bar"><span>工作单位: </span><s:textfield name="work" id="work" maxlength="20" class="form-txt"/> </p>
						
						<p class="p-bar"><span>所属科室: </span><s:textfield name="department" id="department" maxlength="20" class="form-txt"/></p>
						
						<p class="p-bar">&nbsp;&nbsp;&nbsp;<span>职务: </span>&nbsp;&nbsp;&nbsp; <s:textfield name="post" id="post" maxlength="20" class="form-txt"/></p>
						
						<p class="p-bar">&nbsp;&nbsp;&nbsp;<span>职称: </span>&nbsp;&nbsp;&nbsp; <s:textfield name="title" id="title" maxlength="20" class="form-txt"/></p>
						
						<p class="p-bar"><span>最高学历: </span><s:select name="highEducation" id="highEducation" class="form-txt" list="#{'1':'小学','2':'初中','3':'中专/高中','4':'专科','5':'本科','6':'硕士研究生','7':'博士研究生'}" label="最高学历" headerKey=""></s:select></p>
						
						<p class="p-bar"><span>主修专业: </span><s:textfield name="major" id="major" maxlength="20" class="form-txt"/></p>
						
						<p class="p-bar"><span>擅长方向: </span><s:textfield name="goodDirection" id="goodDirection" maxlength="20" class="form-txt"/></p>
						
						<%-- <p>
						<span>执业许可: </span>
       					<input type="file" name="licensing" class="file"  value='浏览...' onchange="PreviewImage(this,'viewLicensing','pic_preview')" />
						<img id="viewLicensing" src=""  alt="" style="height:50px;width:50px;"/>  
						</p>
						
						<p>
						<span>职称证书: </span>
						<input type="file" name="titleCertificate" class="file"  value='浏览...' onchange="PreviewImage(this,'viewTitleCertificate','pic_preview')" />
						<img id="viewTitleCertificate" src=""  alt="" style="height:50px;width:50px;"/>
						</p> --%>
						<input class="form-sub" type="submit" value="提交">
						<input class="form-sub" type="button" id="reset" value="重置">
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<%@include file="../footer.jsp"%>
	</div>
	<script type="text/javascript">
	
	var announInfo = $("#pageInfo").val();
	$(".t-content").html(announInfo);
	
	$("#reset").click(function(){
		$("#name").val("");
		$("#entryTimes").val("");
		$("#idenNumber").val("");
		$("#work").val("");
		$("#phone").val("");
		$("#department").val("");
		$("#post").val("");
		$("#title").val("");
		$("#major").val("");
		$("#goodDirection").val("");
	})
	
	function formValidate(){
		var flag = checkIdenNumber();
		return flag;
	}
	function checkIdenNumber(){
		var certificates = $("#certificates").val();
		var idenNumber = $("#idenNumber").val();
		var reg1 = /(^\d{15}$)|(^\d{17}([0-9]|X)$)/;
		var reg2 = /^[HMhm]{1}([0-9]{10}|[0-9]{8})$/;
		var flag = false;
		if(idenNumber.length > 0 && idenNumber !== null){
			if("1" == certificates){
				if(idenNumber.length != 18){
					idenBox.style.display="block";
					idenBox.innerHTML="<font color='red'>证件号码长度不正确，请检查重新输入！</font>";
					return flag;
				}else if(!reg1.test(idenNumber)){
					idenBox.style.display="block";
					idenBox.innerHTML="<font color='red'>证件号码输入的格式不正确！</font>";
					return flag;
				}
			}else if("3" == certificates){
				if(idenNumber.length != 9){
					idenBox.style.display="block";
					idenBox.innerHTML="<font color='red'>证件号码长度不正确，请检查重新输入！</font>";
					return flag;
				}else if(!reg2.test(idenNumber)){
					idenBox.style.display="block";
					idenBox.innerHTML="<font color='red'>证件号码输入的格式不正确！</font>";
					return flag;
				}
			}
		}
		return true;
	}
	function idenFocus(){
		idenBox.innerHTML="";
		idenBox.style.display="none";
	}
	$(document).ready(function() {
		
		onLoad();
		
		function onLoad(){
			$("#name").val("");
			$("#entryTime").val("");
			$("#idenNumber").val("");
			$("#work").val("");
			$("#phone").val("");
			$("#department").val("");
			$("#post").val("");
			$("#title").val("");
			$("#major").val("");
			$("#goodDirection").val("");
		}
		
		$.fn.extend({
			dialogtip : function(option) {
				var defaultOption = {
					className : 'tip-error',
					showOn : 'none',
					alignTo : 'target',
					hideTimeout : 0,
					showTimeout : 0,
					alignX : 'right',
					alignY : 'bottom',
					
					offsetX :20,
					offsetY : 0
				}
				$.extend(defaultOption, option);
				$(this).poshytip(defaultOption);
			}
		})
	 $("#memberInfoForm").formValidate({
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
			}
		});  
	})
	</script>
	
</body>
</html>
<script>
	var announInfo = $("#pageInfo").val();
	$(".t-content").html(announInfo);
</script>