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
						<img src="${pageContext.request.contextPath }/images/person.png">
						<div class="t-contents">
						<%-- <p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white">第一任主任委员：李延峰教授
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">北京协和医院神经内科主任医师，教授，神经学博士，硕士生导师。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会理事，《中国神经免疫及神经病学》杂志编委。
							</span>
						</p>
					</div>	
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">1996年博士毕业于北京协和医科大学研究生院，一直在北京协和医院神经内科从事临床与科研工作。
							</span>
						</p>
					</div>	
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">在周围神经病、重症肌无力等方面具有开创性工作，报道首例中国家族性淀粉样周围神经病，并进行深入的分子生物学研究。
							</span>
						</p>
					</div>	
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">承担多项省部级痴呆相关课题，国际国内发表论文40余篇，参与《周围神经病》、《神经康复学》等多部著作编写。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white">主委寄语：
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white">当今，神经变性病、微血管医学做为世界转化医学的重要学科正在兴起和发展，神经变性病专业委员会应运而生。神经系统变性病包括有老年性痴呆、帕金森病、运动神经元病等一大组疾病。由于病因不明，病程持续进展，且没有治愈这些疾病药物，因而是我国中老年人群中最重要的致残和致死原因之一。其中最具代表性的疾病是老年性痴呆，该病又称为阿尔茨海默病，是一种以不可逆转的智能衰退为主要表现的中枢神经系统变性病，其发病率随年龄增加而增加。随着我国人口逐渐老年化，该病越来越受到社会和医学界的广泛关注。有明确证据表明脑微循环障碍所致神经缺血以及代谢产物中的毒性物质的堆积，很可能是老年性痴呆的重要病因。研究微循环障碍与神经变性病，也给最终治愈此类疾病带来希望。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white">中国微循环学会神经变性病专业委员会的成立，使我们神经变性病的研究有了自己的学会，对神经科学界和微循环学会都是一件大事。我们将加强国内外学术交流，致力于推广标准临床治疗规范，定期举行专业学术会议，加强与神经科各专业在临床和基础研究方面的技术新进展和经验沟通；加强多中心合作，配合政府致力于神经变性病防治，解决民生疾苦; 注重年轻医生的培养；加强与其它微循环学科间的合作，努力做好神经变性病与微循环障碍的转化医学研究，为世界神经变性病诊断与治疗技术的发展贡献我们的力量。
							</span>
						</p> --%>
						<input type="hidden" id="pageInfo" value="<s:property value="pageInfo"/>"/>
					</div>
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
	$(".t-contents").html(announInfo);
</script>