<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>北京神经变性病学会管理中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath }/css/general.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<link rel="icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<style type="text/css">
	body {
	  color: white;
	}
</style>
<script>
	function formValidate(){
		var name = $("#name").val();
		var pass = $("#pass").val();
		var flag=true;
		if(name == ""){
			var nameBox = document.getElementById("nameBox");
			nameBox.innerHTML="<font color='red'>管理员姓名不能为空!</font>";
			flag=false;
		}else if(pass == ""){
			var passBox = document.getElementById("passBox");
			passBox.innerHTML="<font color='red'>管理员密码不能为空!</font>";
			flag=false;
		}
		return flag;
	}
	
	function addName(){
		var nameBox = document.getElementById("nameBox");
		nameBox.innerHTML="";
	}
	
	function addPass(){
		var passBox = document.getElementById("passBox");
		passBox.innerHTML="";
	}
</script>
</head>
<body style="background: #278296">
<h2 style="text-align:center;margin-left:40px;position:relative;top:80px;">北京神经变性病学会后台管理中心</h2>
<form method="post" action="${pageContext.request.contextPath }/adminUser_login.action" target="_parent" onsubmit="return formValidate()">
  <table cellspacing="0" cellpadding="0" style="margin-top: 100px" align="center">
  <tr>
    <td style="padding-left: 50px">
		<center style="color:red"><s:actionerror /></center>
  		<br>
      <table>
      <tr>
        <td>管理员姓名：</td>
        <td>
        	<input type="text" id="name" name="username" onfocus="addName();"/>
        </td>
        <td>
        	<span id="nameBox" style="position:absolute;right:360px;top:173px;"></span>
        </td>
      </tr>
      <tr>
        <td>管理员密码：</td>
        <td>
        	<input type="password" id="pass" name="password" onfocus="addPass();"/>
        </td>
        <td>
        	<span id="passBox" style="position:absolute;right:360px;top:199px;"></span>
        </td>
      </tr>
      <tr><td>&nbsp;</td><td><input type="submit" value="进入管理中心"/></td></tr>
      </table>
    </td>
  </tr>
  </table>
</form>
</body>
