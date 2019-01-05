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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css"/>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/article.css"/>
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
				<%@include file="../attach.jsp"%>
			</div>
			<div class="aritcle fl">
				<div class="text">
					<div class="textStyle">
						<span class="textFigure">
							--> &nbsp;&nbsp;<s:property value="#session.csName"/>
						</span>
					</div>
					<%-- <div class="t-content">
						<p style="text-indent:28px">
							<span style="font-family:黑体;color:#333333;background:white;text-align:center;font-size:20px;">培养尖端医疗人才  践行中国健康梦
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会肩负历史使命，承担促进我国神经变性病诊治规范发展与全面进步的重任，立志打造我国神经变性病领域第一专业学会，共筑中国医疗健康梦。专委会“未来计划”将提供实习平台，利用专委会庞大的协助体系和丰富的专家导师资源，为有志于神经变性病科研与临床发展方向的硕士研究生、博士研究生以及青年医生提供专业培养与进修机会，倾力培养中国自己的最高水平的行业发展后续梯队。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">如果你勤勉聪颖，对神经变性病领域有浓厚兴趣或独到想法；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">如果你胸怀远大，对中国医疗崛起抱有同样的热忱；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">如果你锐意进取，做中国未来医疗发展的领航者；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">专委会诚邀您加入！
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">一、申请者条件
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">1、医学专业大学本科计划考研、硕士研究生计划考博或博士研究生计划深造的在校学生；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">2、致力于从事神经变性病科研或临床专业方向。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">二、培养方式
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">1、推荐导师；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">2、推荐实习医院或实验室；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">3、参与课题研究；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">4、推荐就业。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">三、申请方式
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">1、将个人简历发送至app@chinanddc.org，在简历中注明“未来计划”字样；
							</span>
						</p>
					</div> --%>
					<div class="t-content">
						<%-- <p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">2、邮寄个人简历至北京市朝阳区朝外大街18号丰联广场A2108  专委会秘书处收。信件中注明“未来计划”字样。邮政编码：100103
							</span>
						</p> --%>
						<input type="hidden" id="pageInfo" value="<s:property value="pageInfo"/>"/>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<%@include file="../footer.jsp"%>
	</div>

</body>

</html>
<script>
	var announInfo = $("#pageInfo").val();
	$(".t-content").html(announInfo);
</script>