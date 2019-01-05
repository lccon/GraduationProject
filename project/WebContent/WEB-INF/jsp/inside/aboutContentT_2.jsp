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
						<h4 align="center">京-鲁高峰论坛暨第四届神经心理量表培训班第三轮通知<%-- <s:property value="tContent"/> --%></h4>
						<h5 align="center"><!--未找到该标签内容-->&nbsp;&nbsp;2017-11-19 02:26</h5>
						<p><p><br/></p><p style="text-indent: 2em;"><span style="font-size: 16px;">通知详情请下载“</span><img src="http://icrcnpd.com/MCMS/static/plugins/ueditor/1.4.3.1/dialogs/attachment/fileTypeImages/icon_pdf.gif" style="vertical-align: middle; margin-right: 2px;"/><a href="/MCMS/upload/1/editor/1511029538563.pdf" title="第一届京-鲁高峰论坛暨第四届神经心理量表培训班第三轮通知-20171105.pdf" style="color: rgb(0, 102, 204); font-size: 16px; text-decoration: underline;"><span style="font-size: 16px;">第一届京-鲁高峰论坛暨第四届神经心理量表培训班第三轮通知-20171105.pdf</span></a><span style="font-size: 16px; text-indent: 2em;">”。</span></p>
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