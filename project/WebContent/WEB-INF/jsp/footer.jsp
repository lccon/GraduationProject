<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<style>
	.second:hover{
		color:#ccc;
	}
</style>
<div class="container"  style="flex-direction:column">
	<ul >
		<s:iterator value="#session.category" var="c">
			<li>
				<dl>
					<dt style="width:120px;text-align:center;margin-left:-9px;">
						<a href="#1"><s:property value="#c.cname" /></a>
					</dt>
					<s:iterator value="#c.categorySecond" var="cs">
						<dd style="width:100px;text-align:center;">
							<a class="second" href="${pageContext.request.contextPath }/skip_<s:property value="#cs.csid"/>.action?number=<s:property value="#c.cid"/>&csid=<s:property value="#cs.csid" />"><s:property value="#cs.csname" /></a>
						</dd>
					</s:iterator>
				</dl>
			</li>
		</s:iterator>
	</ul>
	<br>
	<br>
	<p>技术支持：河北科技师范学院系统实验室   &nbsp;&nbsp;  邮箱：488789589@qq.com
	</p>
	<p>秘书处地址：北京市西城区长椿街45号宣武医院   &nbsp;&nbsp;  邮编：100053  &nbsp;&nbsp;   电话：+86 10-83198277   &nbsp;&nbsp;  版权所有：北京神经变性病学会   &nbsp;&nbsp;  ICP备案号：京ICP备17061211号	
	</p>
	<p>京公网安备&nbsp;&nbsp;11010602060164号 </p>
	<!-- <a href="http://localhost:8080/project/admin/index.jsp">进入后台管理</a> -->
</div>
