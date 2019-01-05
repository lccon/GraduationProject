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
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">一、神经变性病发展现状与探索
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">神经变性病临床多隐袭起病，病程缓慢进展，可持续多年甚至十几年或更长，部分病例可有家族遗传史。治疗尚无成熟有效的方法，部分症状（如帕金森病的症状）可因有经验的治疗而缓解，但总体病程不断进展。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">近年来，神经变性病在世界范围内发病呈逐年上升趋势，国人也有同样的现象，已不再是少见病，随着社会人口的自然老化，患病人数逐年增多。国内外研究者对神经变性病的致病基因和易感基因进行了大量的研究，另外环境污染的日益加剧也使人们更多地关注并研究环境因素在发病中的作用。随着人们对疾病认识的逐渐深入，很多神经系统疾病均归属于神经变性病的范畴，对其病因和发病机制的研究已成为国际神经科学领域的热点。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">中国微循环学会神经变性病专业委员会作为我国神经变性病的专门研究机构，我们在不断完善和改进现有治疗理论和方法的同时，亦在积极探索新的治疗技术和手段。干细胞作为目前国际医学研究的重点方向和再生医学发展的最前沿，正在逐渐进入我们的视野，并必将成为临床治疗神经变性病的重要手段之一。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">二、干细胞治疗神经变性病理论可行性
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">组成人体的全部细胞，都是由一个细胞---受精卵发育而来的，之后逐渐形成人体的组织和器官。干细胞具有强大的损伤修复功能。但是，随着人类机体不断发育成熟和岁数增长，绝大部分细胞丧失了干细胞的功能，只有数量极少的干细胞散在分布于人体组织，而且其修复能力随着年龄的增长而不断弱化。当我们的神经系统发病或者受到伤害之后，由于内源性的干细胞数量有限、功能老化，因此自我修复能力差。如果通过医学的方法将外部大量培养和扩增的干细胞移植进入神经系统内，则可以显著增强神经系统的修复能力，改善损伤的神经功能。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">在已知的神经变性病发病原因中，神经元变性、凋亡等是最主要的诱因。干细胞基础理论研究和临床实验均表明，经医学移植进入人体的干细胞确实能够分化产生大量的神经元组织细胞与细胞因子，并实现对损伤和凋亡细胞的修复与替代。因此，干细胞移植存在对神经变性病临床治疗的理论可行性。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">三、干细胞治疗神经变性病的临床实验研究
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;font-size:16px;">1、干细胞无毒性研究
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;font-size:16px;">1、干细胞无毒性研究
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">全球范围内和我们委托的实验室均通过大量的动物实验表明了干细胞的无毒性。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;font-size:16px;">2、干细胞伦理学研究
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">目前，合理、成熟的干细胞来源途径（新生儿脐带、脐带血、脂肪、外周血等）获得了包括美国FDA、WHO以及各级各类监管或科研机构的伦理认可。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;font-size:16px;">3、干细胞治疗神经变性病人体临床实验研究
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">在过去的10年时间里，全球范围内（尤其是中国）至少进行了超过2000例以上有据可查的干细胞治疗神经变性病的临床实验研究，但由于缺乏科学、统一的行业标准与监管手段，很多数据采集均不规范，无法形成有效的临床证据，为我们的统计研究带来大量困难。从已知的数据采集来看，干细胞移植治疗神经变性病具有以下特点：
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">（1）干细胞移植属微创治疗，基本无痛苦和不良反应，且临床风险较低，大部分患者（尤其是老年患者）更易于接受；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">（2）干细胞移植治疗术前术后对比，患者疾病的外显症状改善明显，如帕金森氏病患者的震颤、僵直等症状改善，痴呆患者的视力、听力、记忆力、行动能力等症状改善，从而有助于患者或其家属建立治疗信心，提高患者依从性；
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white">（3）在进行临床治疗过程中，干细胞的种类、数量以及进入人体的方式等因素对治疗效果的影响较大。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">四、干细胞治疗神经变性病的临床研究价值
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;">干细胞作为五项生物技术之一，已确立为未来十五年我国前沿技术的重点研究领域，其无毒性、微创伤、显效果的技术特点越来越成为人们关注的焦点。目前，干细胞技术的研究在脑和脊髓疾病（神经外科）的损伤修复领域已取得了丰硕的成果，我国的多个临床研究课题在美国等发达国家得到广泛认可。我专业委员会开展干细胞治疗神经变性病的临床研究，目的是结合国际医学的前沿技术以创新、丰富和规范我国神经变性病的治疗手段，以精准医疗的态度，为广大患者探索和寻找新生的希望。
							</span>
						</p>
					</div>
					<br>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:黑体;color:#333333;background:white;font-size:20px;">五、干细胞移植治疗神经变性病的研究方向
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;font-size:16px;">1、干细胞制成品的属性、类别、计量标准与质量控制标准
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;">我国干细胞制成品目前尚无清晰定论可确定其属性，生产制备多在实验室完成，因为缺乏有效的临床支撑，其类别、计量方式和质量控制等均未实现标准化和统一化，给临床应用带来诸多困扰和乱象。因此，我们研究的方向之一是在现有干细胞制成品的基础上，通过临床实验反推的方式，以临床效果为导向，逐渐形成一整套规范的干细胞计量与质量控制标准。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;font-size:16px;">2、干细胞进入人体的路径、方式、临床风险控制与应急预案
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;">已知的干细胞进入人体的路径包括立体定向脑内注射、腰椎穿刺蛛网膜下腔注射、静脉内注射、CT引导下脊髓内移植、血管内介入移植等五种方式，每种方法都有其优点和缺点。我们的研究方向是针对不同疾病、不同患者，应如何因人而异，扬长避短，为患者制定出最适合的临床路径，并合理控制由此可能引发的临床风险，预先完成应急预案。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;font-size:16px;">3、干细胞治疗神经变性病患者的临床诊断与纳排标准
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;">干细胞作为一种新型的生物治疗手段，并不适用于所有的神经变性病患者，我们的研究方向是如何建立神经变性病干细胞移植治疗的临床诊断依据体系，并需要通过临床对比试验，寻找出最佳的适应证，形成科学的纳排标准。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;font-size:16px;">4、干细胞治疗神经变性病的安全性、有效性评价体系与方法
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;">我国目前对于干细胞治疗的临床安全性与有效性的评价多通过显效对比完成，缺乏科学、系统且具有公信力的评价体系。我们的研究方向是通过课题式临床对照实验，结合现代主流医学理论，分病种建立干细胞治疗神经变性病的安全性与有效性评价方法，以规范临床治疗路径。
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;font-size:16px;">5、干细胞结合其他方式综合治疗神经变性病的可行性与临床实验研究
							</span>
						</p>
					</div>
					<div class="t-content">
						<p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;">神经变性病经过多年临床实践探索，已经形成其独特、稳定的治疗手段和体系，干细胞作为新兴生物技术，如何结合其他治疗手段并与之有效融合是我们需要面对的现实问题之一。因此我们的研究方向即是在现有治疗体系的基础上如何合理、规范地结合干细胞技术开展临床治疗。
							</span>
						</p>
					</div>
					<br> --%>
					<div class="t-content">
						<%-- <p style="text-indent:28px">
							<span style=";font-family:宋体;color:#333333;background:white;">当然，由于干细胞是一种新生的生物医学技术，起步研究较晚，我国目前尚缺乏有效的行业引导与监管，政策方向不明，为我们开展临床研究和应用带来很大阻力。但我们相信，随着干细胞治疗的作用和成果被越来越多地证实，我们一定会迎来干细胞技术发展的美好明天。
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