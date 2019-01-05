<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<style>
	#bottomContent:hover{
		color:#008800;
	}
</style>
<ul style="min-height:200px;">
	<s:iterator value="#session.contentBottomlist.list" var="cb">
		<li class="zw"><a id="bottomContent" href="${pageContext.request.contextPath }/new_<s:property value="#cb.cbid"/>.action?cbid=<s:property value="#cb.cbid"/>"><s:property value="#cb.bContent" /></a></li>
	</s:iterator>
</ul>
