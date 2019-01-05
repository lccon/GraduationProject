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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/article.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/textStyle.css"/>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<link rel="icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
</head>

<body>
	<script type="text/javascript" color="0,0,255" opacity="0.7" zindex="-2" count="99" src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
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
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会（
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">Chinese Society of Microcirculation Neurodegenerative Diseases Committee
							</span>
							<span style=";font-family:宋体;color:#333333;background:white">，
							</span>
							<span style=";font-family:宋体;color:#333333;background:white">简称
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">CSMNDDC
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">）是由中国微循环学会依法批准设立的二级专业学会，致力于神经变性病领域的学术研讨、技术创新、临床实践以及交流协作等，以提高我国神经变性病的应对能力和治疗水平，更好地服务于人民健康。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">中国微循环学会是从事微循环领域相关研究和学术交流的国家一级学会，发起成立于
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">1993
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">年，英文名称
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">Chinese Society of Microcirculation
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">（简称
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">CSM
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">），首任理事长由时任国际微循环学会联合会常委、亚洲微循环联盟主席、中国医学科学院微循环研究所所长修瑞娟教授担任，并于同年加入了亚洲微循环联盟以及世界微循环学会联合会。现任理事长为中国工程院院士、中国医学科学院协和医科大学副院校长、分子肿瘤学国家重点实验室主任詹启敏教授。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会于
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">2013
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">年，在学会的直接指导，尤其是詹启敏理事长的关怀和支持下顺利成立，北京协和医院神经科李延峰教授当选为第一届主任委员。本着严谨求实、科学进步和人道关爱的医学理念，专业委员会全体会员将在人类神经变性病的临床防治、技术创新等领域贡献自己的力量。
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