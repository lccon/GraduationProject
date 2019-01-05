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
					<%-- <div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会是一家非营利性学术机构，为确保委员会各项工作的顺利开展，现面向社会接受企业或个人的公益捐助。本学会承诺：接受的公益捐助将全部用于开展各类学术交流活动、社区公益巡讲或义诊活动、印制公益科普宣传资料、资助学会医疗创新或临床试验以及其它与神经变性病有关的公益慈善活动等。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">学会将本着公开、公平、公正的原则使用社会捐赠，接受捐赠者与社会监督。衷心感谢所有关心和支持本学会发展的社会各界善心企业与人士。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">捐赠形式：货币
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">收款账户：0200001009014432313
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">开户银行：中国工商银行北京东四南支行
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">账户名称：中国微循环学会
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">温馨提醒：请注明“神经变性病公益捐助”字样
							</span>
						</p>
					</div>
					<br> --%>
					<div class="t-content">
						<!-- <p style="text-indent:28px">
							<h3>特别感谢</h3>
						</p> -->
						<input type="hidden" id="pageInfo" value="<s:property value="pageInfo"/>"/>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<%@include file="../footer.jsp"%>
	</div>

</body>

</html>
<script>
	var announInfo = $("#pageInfo").val();
	$(".t-content").html(announInfo);
</script>