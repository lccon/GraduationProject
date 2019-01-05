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
							--> &nbsp;&nbsp;<s:property value="#session.csName"/>
						</span>
					</div>
					<div class="t-content">
						<%-- <p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">神经变性病(
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">Neurodegenerative Diseases
							</span>
							<span style=";font-family:宋体;color:#333333;background:white">) 是指由于神经元变性、凋亡所导致的神经系统退行性疾病。神经变性病主要有痴呆类疾病，包括阿尔茨海默病及各种类型痴呆；运动障碍疾病包括帕金森病及帕金森综合征或叠加综合征；运动神经元疾病如肌萎缩侧缩硬化等，以及其它各种遗传代谢相关的神经系统变性病。这些疾病多数发生在中老年，且随着年龄增加，发病率成倍数增加，临床表现多隐袭起病，病程缓慢进展且不可逆，可持续多年甚至十几年或更长，目前尚无可以阻滞病情进展的有效药物治疗，因而给患者家庭和社会带来严重的经济和日常生活负担。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">随着我国老年社会提前到来，神经变性病患病率均呈逐年上升趋势，已经发展成为影响人们生命和健康的重大病种，对我国的经济发展产生极为不利的影响。近年来，中国微循环学会神经变性病专业委员立足于世界神经医学发展的现状，借鉴无数医疗先驱者宝贵的科研与临床经验，力争在神经变性病的发病机理、临床治疗、综合防治等领域取得突破性进展，探索出一条适合于我国医疗体制的创新发展之路。
							</span>
						</p> --%>
						<input type="hidden" id="pageInfo" value="<s:property value="pageInfo"/>"/>
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
	var announInfo = $("#pageInfo").val();
	$(".t-content").html(announInfo);
</script>