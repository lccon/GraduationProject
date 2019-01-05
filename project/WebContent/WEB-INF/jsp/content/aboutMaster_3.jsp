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
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">2013
							</span>
							<span style=";font-family:宋体;color:#333333;background:white">年
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会在中国首都北京创会成立，北京协和医院神经科李延峰教授担任第一届主任委员，同时召开成立大会、新闻发布会暨第一届学术年会，标志着我国又一个国家级神经变性病专业学术研讨与交流机构扬帆起航。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会第一家临床会诊与教学中心落户北京航天总医院。同年，第二家临床会诊与教学中心落户北京航空总医院。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">2014
							</span>
							<span style=";font-family:宋体;color:#333333;background:white">年
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会第二届学术年会暨阿尔茨海默病分子发病机制和神经网络国际学术交流会在湖南长沙成功举办。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会常务委员会召开，完成常务委员、委员和青年委员增补，专委会会员总人数突破
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">300
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">人。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">2015
							</span>
							<span style=";font-family:宋体;color:#333333;background:white">年
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会在首都医科大学附属北京安贞医院成功发起主办《北京痴呆国际研讨会》。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会发起主办的“神经变性疾病防治临床教育中国行”在南华大学附属第一医院首讲成功。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会第三家临床会诊与教学中心落户南华大学附属第一医院。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会联合中卫华医医疗技术有限公司共同成立首个细胞医学实验室落户北京航天总医院。
							</span>
						</p>
					</div> --%>
					<%-- <div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family: 宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会第三届学术年会即将于
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">2015
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">年
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">10
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">月
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">23
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">日~
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">25
							</span>
							<span style=";font-family: 宋体;color:#333333;background:white">日在中国天津拉开帷幕……
							</span>
						</p>--%>
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