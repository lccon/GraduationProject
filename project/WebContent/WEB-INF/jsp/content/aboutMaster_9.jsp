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
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会章程（草案）
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white">第一章&nbsp; 总&nbsp; 则
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第一条&nbsp;&nbsp; 本会的名称为:中国微循环环学会神经变性病专业委员会，英文名称为
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">Neuro-Degenerative Disease Committee, China Society of Microcirculation
							</span>
							<span style=";font-family:宋体;color:#333333;background:white">,缩写为
							</span>
							<span style=";font-family:&#39;Times New Roman&#39;,&#39;serif&#39;;color:#333333;background:white">NDDC
							</span>
							<span style=";font-family:宋体;color:#333333;background:white">。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第二条&nbsp;&nbsp; 神经变性病专业委员会是中国微循环学会领导下的二级学会，是由全国相关专业的医学科学技术工作者和医学管理工作者自愿结成的，依法登记成立的学术性、公益性、非营利性的学术团体，是从事神经变性病基础和临床工作者进行学术交流、促进本专业学术发展的重要学术平台，是联系其它医学专业和政府各职能部门的桥梁和纽带，是关爱神经变性病患者、重视疾病防治的重要医学力量。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第三条&nbsp;&nbsp; 本会的宗旨是遵守宪法、法律、法规和国家政策，坚持民主办会原则，充分发扬学术民主，提高本专业工作者的业务水平，促进神经变性病相关的医学科学的繁荣、发展、普及和推广，促进本专业医学科技人才和医学管理人才的成长和素质的提高。为学会提供各种专业服务。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第四条&nbsp;&nbsp; 本会贯彻执行中国微循环学会工作方针政策，围绕有关任务和科学技术研究重点开展工作。坚持实事求是的科学态度和优良学风，倡导"创新、求实、协作"的科学精神。实行普及与提高相结合，医学基础研究与医疗实践相结合。开展继续医学教育。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第五条&nbsp;&nbsp; 本会接受业务主管单位中国微循环学会的领导和监督管理。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第六条&nbsp;&nbsp; 专业委员会设主任委员、副主任委员、常务委员、委员。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第七条&nbsp;&nbsp; 专业委员会主任委员由中国微循环学会任命。副主任委员、常务委员、委员由主任委员结合我国各地神经变性病专业实力、地域分布、专业平衡等原则进行推选。每5年换届一次，主任委员从国内各大医院知名专家教授产生，副主任委员从常委中产生，常委从委员中产生。秘书长和秘书由主任委员根据工作需要推选。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第八条&nbsp;&nbsp; 本会会址设在北京航天总医院内。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第九条&nbsp;&nbsp; 本会的业务范围。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white">第二章&nbsp; 业务范围
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">一、&nbsp; 开展本专业领域的学术交流，组织各种形式的学术交流活动、重点学术课题探讨和科学考察活动，加强学科间和学术团体间的横向联系与协作；
											二、&nbsp; 编辑出版医学学术期刊、医学科学普及读物、医学书籍、论文汇编、医学信息资料及医学音像制品；
											三、&nbsp; 开展继续医学教育,鼓励和组织会员努力学习和不断更新科学技术知识，提高会员和广大医学科技工作者的业务水平；
											四、&nbsp; 加强神经变性疾病科普工作，提高社会对于神经变性病的认知度，与社会团体、慈善机构相互合作，组织关爱患者的各种活动，为全国神经变性病患者提供医疗服务以及咨询服务。
											五、 &nbsp; 加强同相关专业的国外医学学术团体和医学科学技术工作者的联系和交往，开展国际间的医学学术交流；
											六、 &nbsp; 组织和募集各种社会资金，资助本专业的医学工作者进修学习、科技攻关以及论文发表；
											七、&nbsp; 评选和奖励优秀医学科技成果、学术论文和科普作品，宣传、奖励本学会的优秀人材；
											九、&nbsp; 兴办为学会宗旨服务的社会公益事业和经济实体；
							</span>
						</p>
					</div>
				
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white">第三章&nbsp; 学会细则
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第一条&nbsp;&nbsp;定期开展学术会议，加强交流
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">学会每年将面向全国开展专业学术会议一次，鼓励各地神经科轮流主办，鼓励各地神经科医生积极参与。每次大会将提出1-2个主题，会议内容将密切围绕该主题展开，以密切结合临床、实用为特点。同时还要加强对此类疾病的临床规范的继续教育，以尽快提高基层神经科的诊治水平。学会将定期邀请国内外著名专家进行神经变性病的新进展讲座和交流。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第二条&nbsp;&nbsp;致力于重大神经变性疾病如阿尔茨海默病、帕金森病和运动神经病的流行病学调查和治疗
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">神经变性疾病是中老年常见疾病，随着社会老龄化，发病率越来越高，得到政府和社会的重视。学会将结合这一现状，以这些疾病为基础，在国内积极组织基层医院进行筛查、早期诊断和治疗，为政府减少大量医疗财政投入。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">第三条&nbsp;&nbsp;鼓励培养年轻医生，建设人才梯队
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">神经变性疾病患者众多。由于我国地域发展水平的差异，各地诊治水平很不平衡，因此及时培养年轻医生，尤其是基层医院的年轻医生是一项任重道远的长期规划。学会将通过网络、进修学习等方式致力于为年轻医生提供学习交流的平台和机会。
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