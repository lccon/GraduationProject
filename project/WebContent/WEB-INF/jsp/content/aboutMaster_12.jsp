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
			<div class="aritcle fl" style="min-height:800px; height:100%;">
				<div class="text">
					<div class="textStyle">
						<span class="textFigure">
							--> &nbsp;&nbsp;<s:property value="#session.csName"/>
						</span>
					</div>
					<div class="t-content">
						<%-- <p style=";text-align: left;line-height: 200%"><strong><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">主任委员：</span></strong></p><p style=";text-align: left;line-height: 200%"><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">李延峰</span></p><p style=";text-align: left;line-height: 200%"><strong><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">副主任委员：</span></strong></p><p style=";text-align: left;line-height: 200%"><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">毕齐、 陈生弟、 戴天然、李晓光、刘运海、唐北沙</span></p><p style=";text-align: left;line-height: 200%"><strong><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">常务委员： </span></strong></p><p style=";text-align: left;line-height: 200%"><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">陈加俊、陈军、陈晓春、胡全忠、纪勇、贾建军、李燕梅、刘洪、卢祖能、戚晓昆、钱家强、屈秋民、王延平、肖世富、于普林、
								张巍、张毅、张振馨、赵永波、杜继臣、彭丹涛、原永平、肖卫忠、邢岩、龚涛、王晓东</span></p><p style=";text-align: left;line-height: 200%"><strong><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">委员：</span></strong></p><p style=";text-align: left;line-height: 200%"><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">陈国强、崔芳、崔志刚、方明镜、方琪、郭起浩、黄进瑜、惠颖、霍加、蒋初明、焦劲松、孔德强、李风荣、李修彬、刘文海、刘艺鸣、
								刘尊敬、吕海东、秦斌、邵宏元、申庆民、沈璐、沈霞、沈志卫、覃 莲、田梅、王宝军、王景涛、王新志、王英鹏、吴蕾、吴文斌、
								谢明、薛战尤、晏勇、杨奎、游咏、于文霞、袁英、曾碧翔、张华、张杰文、张颖冬、张勇、张占军、种晓琴、王俊、张宏、陈蕾、
								王铭维、乔立艳、陈宝荣、郑晓风、李宁、冯逢、徐蔚海、于逢春、黄光、卢宏</span></p><p style=";text-align: left;line-height: 200%"><strong><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">青年委员：</span></strong></p><p style=";text-align: left;line-height: 200%"><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">岳伟、陆菁菁、邱峰、王含、邹漳钰、王林</span></p><p style=";text-align: left;line-height: 200%"><strong><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">专委会常务执行机构：</span></strong></p><p style=";text-align: left;line-height: 200%"><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">秘书处</span></p><p style=";text-align: left;line-height: 200%"><strong><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">秘书长：</span></strong></p><p style=";text-align: left;line-height: 200%"><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">原永平</span></p><p style=";text-align: left;line-height: 200%"><strong><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">副秘书长：</span></strong></p><p style=";text-align: left;line-height: 200%"><span style=";line-height: 200%;font-family: 宋体;font-size: 19px">杜继臣、龚涛</span></p><p><br/></p> --%>	
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