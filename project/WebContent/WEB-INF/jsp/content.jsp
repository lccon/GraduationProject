<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<ul style="min-height:200px;">
	<s:iterator value="#session.InsideNewsList.list" var="i">
		<li class="zw"><a href="${pageContext.request.contextPath }/trade_<s:property value="#i.nid"/>.action?nid=<s:property value="#i.nid"/>"><s:property value="#i.newsContent" /></a></li>
	</s:iterator>
</ul>
