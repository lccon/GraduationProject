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
						<h4 align="center">京-珠老年医学高峰论坛暨第四届神经心理量表培训班第一轮通知<%-- <s:property value="tContent"/> --%></h4>
						<h5 align="center">&nbsp;&nbsp;2017-11-24 03:20</h5>
						<p><p><br/></p><p style="text-indent: 2em;"><span style="text-indent: 32px;">通知详<span style="text-indent: 32px; font-size: 16px;">情请下载“</span></span><img src="http://icrcnpd.com/MCMS/static/plugins/ueditor/1.4.3.1/dialogs/attachment/fileTypeImages/icon_pdf.gif" style="vertical-align: middle; margin-right: 2px;"/><a href="/MCMS/upload/1/editor/1511508010595.pdf" title="京珠老年医学高峰论坛暨第四届神经心理量表培训班第一轮通知.pdf" style="color: rgb(0, 102, 204); font-size: 16px; text-decoration: underline;"><span style="font-size: 16px;">京珠老年医学高峰论坛暨第四届神经心理量表培训班第一轮通知.pdf</span></a><span style="font-size: 16px;"><span style="font-size: 16px; text-indent: 2em;"></span>”<span style="font-size: 16px; text-indent: 2em;">。</span></span></p> 
						<%-- <input type="hidden" id="announInfo" value="<s:property value="announInfo"/>"/> --%>
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
<script>
var announInfo = $("#announInfo").val();
$(".t-content").html(announInfo);
</script>