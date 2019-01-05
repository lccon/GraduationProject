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
				<%@include file="../attach.jsp" %>
			</div>
			<div class="aritcle fl">
				<div class="text">
					<div class="textStyle">
						<span class="textFigure">
							<s:if test="#session.csName != null">
							--> &nbsp;&nbsp;<s:property value="#session.csName"/>
							</s:if>
							<s:else>
							--> &nbsp;&nbsp;搜索信息
							</s:else>
						</span>
					</div>
					<div class="t-content">
			
						<s:if test="contentTop.size() > 0">
							<ul>
								<s:iterator value="contentTop" var="ct">
									<li class="zw"><a href="${pageContext.request.contextPath }/inside_<s:property value="#ct.ctid" />.action?anno=<s:property value="#ct.ctid" />"><s:property value="#ct.tContent" /></a></li>
									
								</s:iterator>
							</ul>
						</s:if>
						<s:elseif test="flag == true">
							<s:actionmessage/>
						</s:elseif>
						<s:else>
							<%@include file="../contentTop.jsp" %>
							<table style="margin-left:388px;" >
								<tr align="center">
									<td colspan="4">
										第<s:property value="#session.contentToplist.page"/>/<s:property value="#session.contentToplist.totalPage"/>页  
										<s:if test="#session.contentToplist.page != 1">
											<a href="${pageContext.request.contextPath }/adminContentTop_findAll.action?page=1">首页</a> |
											<a href="${pageContext.request.contextPath }/adminContentTop_findAll.action?page=<s:property value="#session.contentToplist.page-1"/>">上一页</a> |
										</s:if>
										<s:if test="#session.contentToplist.page != #session.contentToplist.totalPage">
											<a href="${pageContext.request.contextPath }/adminContentTop_findAll.action?page=<s:property value="#session.contentToplist.page+1"/>">下一页</a> |
											<a href="${pageContext.request.contextPath }/adminContentTop_findAll.action?page=<s:property value="#session.contentToplist.totalPage"/>">尾页</a> 
										</s:if>
									</td>
								</tr>
							</table>
						</s:else>
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
<%-- <script>
	onLoad()
	function onLoad(){
		var aa = $("#vv").val();
		alert(typeof aa);
	}
</script> --%>