<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<div class="moule" style="width:190px;margin-top:6px;">
	<div class="m-title">
		<s:iterator value="#session.list" var="s" status="l">
			<s:if test="#l.first">
				<h2>
					<s:property value="#s.category.cname" />
				</h2>
			</s:if>
		</s:iterator>
	</div>
	<div class="m-content">
		<ul>
			<s:iterator value="#session.list" var="l">
				<li class="zw" style="position:relative">
					&nbsp;
					<image style="width:16px;height:16px;display:inline-block;position:absolute;top:7px;" src="${pageContext.request.contextPath }/images/arrow.png" />
					&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath }/turn_<s:property value="#l.csid"/>.action?csid=<s:property value="#l.csid" />">
						<s:property value="#l.csname" />
					</a>
					
				</li>
			</s:iterator>
		</ul>
	</div>
</div>