<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>北京神经变性病学会后台管理中心</title>
<link href="${pageContext.request.contextPath }/css/login.css" rel="stylesheet" data-role="global" />
<link href="${pageContext.request.contextPath }/css/tips.css" rel="stylesheet" data-role="global" />
<link rel="icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
</head>
<body class="background1">
	<div id="login_page" class="content">
		<div id="myModal" class="modal fade in show-shadow" tabindex="-1"
			role="dialog" aria-labelleby="myModallabel" aria-hidden="true"
			style="display: block;">
			<div class="modal-dialog login-modal" id="myModalDialog">
				<div class="modal-content myModalContent">
					<div class="modal-header myModalHeader">
						<p style="margin-top: 120px; width:800px; align:center;margin-left:-220px;">
							<span id="modal-title">北京神经变性病学会后台管理中心</span>
						</p>
					</div>
					<div id="loginInfo">
						<s:actionerror/>
					</div>
					<div class="modal-body myModalBody inner-form-wrapper">
						<form class="no-margin form-login inner-form"
							action="${pageContext.request.contextPath }/adminUser_login.action" method="post" id="loginform-inner"
							novalidate="novalidate">
							<fieldset>
								<div class="form-group form-login">
									<div class="input-group input-group-lg myInputGroup">
										<input id="username" type="text"
											class="form-control input-lg input-transparent"
											placeholder="管理员姓名" name="username">
									</div>
								</div>
								<div class="form-group form-login">
									<div class="input-group input-group-lg myInputGroup">
										<input id="password" type="password"
											class="form-control input-lg input-transparent"
											placeholder="管理员密码" name="password"> <input
											type="submit" class="iconfont loginButton" name="submit"
											id="loginButton" value="">
									</div>
								</div>
								<div class="form-group form-login">
									<div
										class="input-group input-group-lg myInputGroup home-button">
										<div class="remember checkbox field login-f">
											<input type="checkbox" name="remember" id="remember">
											<label class="checkbox-wrapper" for="remember"> <span
												class="check_right_box"> <span
													class="check_right iconfont"></span>
											</span> 记住密码
											</label>
										</div>
										<div class="mobile-inner-footer">
											<a href="javascript:;">忘记密码？</a>
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div class="home-footer mobile-out-footer">
				<p class="copyright">Copyright © 2018-2050 北京神经变性病学会后台管理中心</p>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/js/jquery.base.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jQuery.md5.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/validate.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/formValidate.js"></script>
	<script>
		$.fn.extend({
			dialogtip : function(option) {
				var defaultOption = {
					className : 'tip-error',
					showOn : 'none',
					alignTo : 'target',
					hideTimeout : 0,
					showTimeout : 0,
					alignX : 'center',
					alignY : 'bottom',
					offsetX : 0,
					offsetY : 5
				}
				$.extend(defaultOption, option);
				$(this).poshytip(defaultOption);
			}
		})
		$(function() {
			$("#username").focus();
			$("#username,#password").bind("keydown", function(evt) {
				var evt = window.event ? window.event : evt;
				if (evt.keyCode == 13) {
					$('#loginform-inner').submit();
				}
			});
			$("#remember").toggle(function() {
				$(this).attr('checked', "checked");
				$(this).siblings('.checkbox-wrapper').find('.check_right').show();
			}, function() {
				$(this).attr('checked', false);
				$(this).siblings('.checkbox-wrapper').find('.check_right').hide();
			});
			$("#loginform-inner").formValidate({
				rules : {
					username : {
						required : true
					},
					password : {
						required : true
					}
				},
				messages : {
					username : {
						required : "用户名不能为空！"
					},
					password : {
						required : "密码不能为空！"
					}
				}
			});
		});
	</script>
</body>
</html>