<%-- <%@ page language="java" pageEncoding="UTF-8"%>
<link rel="icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
		body
		{
			SCROLLBAR-ARROW-COLOR: #ffffff;  SCROLLBAR-BASE-COLOR: #dee3f7;
		}
    </style>
  </head>
  
<frameset rows="103,*,43" frameborder="1" border="1" framespacing="0">
  <frame src="${pageContext.request.contextPath}/admin/top.jsp" name="topFrame" scrolling="NO" noresize>
  <frameset cols="159,*" frameborder="1" border="1" framespacing="0">
		<frame src="${pageContext.request.contextPath}/admin/left.jsp" name="leftFrame" noresize scrolling="YES">
		<frame src="${pageContext.request.contextPath}/admin/welcome.jsp" name="mainFrame">
  </frameset>
  <frame src="${pageContext.request.contextPath}/admin/bottom.jsp" name="bottomFrame" scrolling="NO"  noresize>
</frameset>
</html> --%>

<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>北京神经变性病学会后台管理中心</title>
<link rel="icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<jsp:include page="${path}/includes/baseInclude.jsp" />
<jsp:include page="${path}/includes/jsInclude.jsp" />
</head>
<body>
<div id="pageWrapper">
    <div class="header">
        <jsp:include page="${path}/includes/head.jsp" />
    </div>
    <div class="container" id="container" style="left: 0px;">
        <div class="aside" id="sidebar">
        </div>
		<div class="main" id="appArea">
		</div>
    </div>
    <jsp:include page="${path}/includes/foot.jsp" />
</div>
<div id="baseLine"></div>
</body>
