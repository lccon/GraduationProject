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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/article.css">
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
				<%@include file="../attach.jsp" %>
			</div>
			<div class="aritcle fl">
				<div class="text">
					<div class="t-content">
						<h4 align="center">北京神经变性病学会门户网站第二版正式上线，欢迎大家访问！</h4>
					<h5 align="center"><!--未找到该标签内容-->&nbsp;&nbsp;2017-06-01 12:00</h5>
					<p><p><br/></p><p style="text-indent: 2em; line-height: 2em;"><a href="http://icrcnpd.com" _src="http://icrcnpd.com" style="text-decoration: underline; font-size: 16px;"></a><span style="font-size: 16px;">&nbsp;请大家多提意见（意见可以发到这个邮箱：2248950919@qq.com），我们将在该门户网站的第二版升级上考虑大家的修改建议，谢谢大家！</span></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--footer  -->
	<div class="footer">
		<%@include file="../footer.jsp"%>
	</div>

</body>

</html>