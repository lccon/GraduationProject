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
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
	<style type="text/css">
		.more:hover{
			color:black;
			font-weight:bold;
		}
		.host:hover{
			color:#008800;
		}
	</style>
</head>

<body>
<script type="text/javascript" color="0,0,255" opacity="0.7" zindex="-2" count="99" src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
    <%@include file="menu.jsp" %>
    <!--banner  -->
    <div class="banner">
        <div class="container">
            <div class="moule fl">
                <div class="m-title">
                    <h2>学会信息</h2>
                    <a href="${pageContext.request.contextPath }/skip_1.action?number=1&csid=1" class="more">更多</a>
                </div>
                <div class="m-content" style="background-color: #F5FFFA;">
                    <p style="font-size:16px;margin-left:15px;margin-right:10px;line-height:28px;">中国微循环学会神经变性病专业委员会<span style="font-size:13px;">（Chinese Society of Microcirculation Neurodegenerative Diseases Committee,</span>简称<span style="font-size:12px;">CSMNDDC）</span>是由中国微循环学会依法批准设立的二级专业学会，致力于神经变性病领域的学术研讨、技术创新、临床实践以及交流协作等，以提高我国神经变性病的应对能力和治疗水平，更好地服务于人民健康。</p>
                </div>
                <div class="m-content"  style="background-color: #F5FFFA;">
                	<p style="font-size:16px;margin-left:15px;margin-right:10px;line-height:28px;">中国微循环学会是从事微循环领域相关研究和学术交流的国家一级学会，发起成立于1993年，英文名称<span style="font-size:15px;">Chinese Society of Microcirculation（</span>简称<span style="font-size:13px;">CSM）</span>。</p>
                	<br/>
                	<br/>
                </div>
            </div>
            <div class="banner-slider ui-slider fr">
                <div class="ui-slider-wrap clearfix">
                    <a href="#" class="item"><img src="images/banner_1.jpg" alt=""></a>
                    <a href="#" class="item"><img src="images/banner_2.jpg" alt=""></a>
                    <a href="#" class="item"><img src="images/banner_3.jpg" alt=""></a>
                </div>
                <div class="ui-slider-arrow">
                    <a href="#l" class="item left">&nbsp;</a>
                    <a href="#r" class="item right">&nbsp;</a>
                </div>
                <div class="ui-slider-process">
                    <a href="#0" class="item item_focus">&nbsp;</a>
                    <a href="#1" class="item">&nbsp;</a>
                    <a href="#2" class="item">&nbsp;</a>

                </div>
            </div>
        </div>
    </div>

    <!--内容  -->
    <div class="section">
        <div class="container">
            <div class="left fl">
                <div class="moule">
                    <div class="m-title">
                        <h2>专家委员</h2>
                        <a href="${pageContext.request.contextPath }/skip_12.action?number=3&csid=12" class="more">更多</a>
                    </div>
                    <div class="m-content" style="background-color: #F5FFFA;">
                        <ul>
                            <li class="zw">主任委员</li>
                            <li><span>李延峰</span></li>
                            <li class="zw">副主任委员</li>
                            <li><span>毕齐</span>&nbsp;&nbsp;<span>陈生弟</span>&nbsp;&nbsp;<span>戴天然</span>&nbsp;&nbsp;<span>...</span></li>
                            <li class="zw">常务委员</li>
                            <li><span>陈加俊</span>&nbsp;&nbsp;<span>陈军</span>&nbsp;&nbsp;<span>陈晓春</span>&nbsp;&nbsp;<span>...</span></li>
                            <li class="zw">委员</li>
                            <li><span>陈国强</span>&nbsp;&nbsp;<span>崔芳</span>&nbsp;&nbsp;<span>崔志刚</span>&nbsp;&nbsp;<span>...</span></li>
                            <li class="zw">青年委员</li>
                            <li><span>岳伟</span>&nbsp;&nbsp;<span>陆菁菁</span>&nbsp;&nbsp;<span>邱峰</span>&nbsp;&nbsp;<span>...</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="middle fl">
	            <div class="moule">
					<div class="m-title">
						<h2>通知公告</h2>
						<a href="${pageContext.request.contextPath }/skip_5.action?number=2&csid=5" class="more">更多</a>
					</div>
					<div class="m-content" style="background-color: #F5FFFA;">
               			<%@include file="contentTop.jsp" %>
               		</div>
				</div>
				<div class="moule">
					<div class="m-title">
						<h2>学会新闻</h2>
						<a href="${pageContext.request.contextPath }/skip_6.action?number=2&csid=6" class="more">更多</a>
					</div>
					<div class="m-content" style="background-color: #F5FFFA;">
               			<%@include file="contentBottom.jsp" %>
               		</div>
          		</div>
            </div>
            <div class="right fl">
                <div class="moule">
                    <div class="m-title">
                        <h2>友情链接</h2>
                    </div>
                    <div class="m-content">
                        <ul>
                            <li class="zw"><a class="host" href="http://www.microcirculation.org.cn/">中国微循环学会</a></li>
                            <li class="zw"><a class="host" href="http://www.pumch.cn/">北京协和医院</a></li>
                            <li class="zw"><a class="host" href="http://www.anzhen.org/">北京安贞医院</a></li>
                            <li class="zw"><a class="host" href="http://www.711hospital.com/">北京航天总医院</a></li>
                            <li class="zw"><a class="host" href="http://www.hkzyy.com.cn/">北京航空总医院</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--footer  -->
    <div class="footer">
        <%@include file="footer.jsp" %>
    </div>

</body>

</html>