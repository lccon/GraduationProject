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
					<%-- <div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会临床会诊与教学系统是专委会进行远程会诊、流动教学、学术共建以及临床实践的综合性交互平台。专委会通过该平台实现对会员医疗机构和基层医疗机构的技术扶持与资源共享，提高系统内协作医疗机构的神经变性病诊治水平，提高优势医疗专家与资源利用率，为尽可能多的神经变性病患者提供最高水准诊断与治疗服务。
							</span>
						</p>
					</div>
					<br><br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">临床会诊与教学点设立条件
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">1、二甲以上公立综合医疗机构或二级以上神经专科医院；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">2、科室副主任以上医务人员为专委会委员以上职称；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">3、自愿遵守专委会对临床会诊与教学点的管理规定。
							</span>
						</p>
					</div>
					<br><br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">临床会诊与教学点工作范围
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">1、开展神经变性类疑难疾病远程会诊；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">2、开展神经变性类疾病临床观摩与诊疗教学；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">3、开展专委会统一安排的学术主题演讲或交流活动；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">4、开展专委会发起的课题申报、多中心研究等；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">5、开展神经变性病义诊、巡诊、社区教育等公益活动。
							</span>
						</p>
					</div>
					<br><br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">临床会诊与教学点申报流程
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">1、申请医院下载《中国微循环学会神经变性病专业委员会临床会诊与教学点申请表》（点击下载），认真填写并加盖医院公章后，（1）扫描发送至电子邮件app@chinanddc.org；（2）或邮寄至北京市朝阳区朝外大街18号丰联广场A2108  专委会秘书处收。邮政编码：100103
							</span>
						</p>
					</div> --%>
					<div class="t-content">
						<%-- <p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">2、专委会收到申请资料15个工作日内将审核情况书面回复至申请医院，若通过审核，则与专委会签订合作协议，并取得授权牌，在专委会指导下开展相应工作。
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