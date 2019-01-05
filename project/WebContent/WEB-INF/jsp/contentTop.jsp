<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<style>
	#topContent:hover{
		color:#008800;
	}
</style>
<ul style="min-height:200px;">
	<s:iterator value="#session.contentToplist.list" var="ct">
		<li class="zw"><a id="topContent" href="${pageContext.request.contextPath }/inside_<s:property value="#ct.ctid" />.action?anno=<s:property value="#ct.ctid" />"><s:property value="#ct.tContent" /></a></li>
	</s:iterator>
</ul>