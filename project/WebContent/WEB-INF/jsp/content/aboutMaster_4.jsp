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
							<span style=";font-family:宋体;color:#333333;background:white">总体目标
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">建设成为专业化、实用化及国际化的神经变性病学术交流平台
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">专业化发展方向
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">随着我国老年社会提前到来，神经变性病患病率均呈逐年上升趋势，已经发展成为影响人们生命和健康的重大病种，对我国的经济发展产生极为不利的影响。中国微循环学会神经变性病专业委员会立足我国医疗实际需求，走专业化发展之路，力争在神经变性病的发病机理、临床治疗、综合防治等领域取得突破性进展，以降低发病几率，提高治疗效果。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">实用化发展方向
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">神经变性病多数发生在中老年，且随着年龄增加，发病率成倍数增加，临床表现多隐袭起病，病程缓慢进展且不可逆，可持续多年甚至十几年或更长，目前尚无可以阻滞病情进展的有效药物治疗。中国微循环学会神经变性病专业委员会立足我国神经变性病诊疗现状，重视学术创新与转化医学相结合，积极推进诊疗学术与技术的实用化发展，通过开设神经变性病会诊中心、组织发起深入社区的神经变性病自查预防公益巡讲和医疗义诊慈善活动等手段，提高我国神经变性病的诊治能力，降低疾病危害。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">国际化发展方向
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">神经变性病的诊治是一个世界性的难题，各个国家的医疗工作者均为此付出了大量的劳动和工作。我国神经变性病专业化研究由于起步较晚，与发达国家之间存在一定差距。中国微循环学会神经变性病专业委员会在立足实际的同时，坚持走国际化发展之路。我们致力于搭建连接国内外神经变性病医学工作者的交流平台，加强国际学术交流与合作，并以学术交流为纽带建立健全学会海外合作机制，形成常态化合作。
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