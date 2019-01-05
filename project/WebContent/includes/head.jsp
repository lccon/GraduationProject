<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="topnav" id="topnav">
    <div class="top-panel">
        <h1>
            <a class="logo" href="javascript:;">项目管理</a>
        </h1>
        <ul class="top-menu">
         
            <li><a href="###" data-event="nav" data-hot="header.all">总览</a></li>
                
           		<li data-event="top_submenu" data-menu-type="product">
	           		<a href="javascript:;" style="cursor: default">
	           			服务中心<i class="top-menu-arrows"></i>
	           		</a>
	                <div class="drop-down-layer product-service" id="productService">
	                    <dl class="service-menu" style="">
	                        <dt>
	                            <em>运维平台</em>
	                        </dt>
	                        <dd class="cur">
	                            <a class="all-product-link-item" data-event="nav"
	                                url="${pageContext.request.contextPath }/menuManage/gotoMemberMenuPage"
	                                data-hot="header.service.cvm"><i class="ico-server"></i><span>会员信息管理</span></a>
	                        </dd>
	                        <dd class="cur">
	                            <a class="all-product-link-item" data-event="nav"
	                                url="${pageContext.request.contextPath }/menuManage/gotoCategoryMenuPage"
	                                data-hot="header.service.cvm"><i class="ico-server"></i><span>一级分类管理</span></a>
	                        </dd>
	                        <dd class="cur">
	                            <a class="all-product-link-item" data-event="nav"
	                                url="${pageContext.request.contextPath }/menuManage/gotoCateSecondMenuPage"
	                                data-hot="header.service.cvm"><i class="ico-server"></i><span>二级分类管理</span></a>
	                        </dd>
	                        <dd class="cur">
	                            <a class="all-product-link-item" data-event="nav"
	                                url="${pageContext.request.contextPath }/menuManage/gotoAnnounMenuPage"
	                                data-hot="header.service.cvm"><i class="ico-server"></i><span>通告新闻管理</span></a>
	                        </dd>
	                        <dd class="cur">
	                            <a class="all-product-link-item" data-event="nav"
	                                url="${pageContext.request.contextPath }/menuManage/gotoAcadPage"
	                                data-hot="header.service.cvm"><i class="ico-server"></i><span>学会新闻管理</span></a>
	                        </dd>
	                        <dd class="cur">
	                            <a class="all-product-link-item" data-event="nav"
	                                url="${pageContext.request.contextPath }/menuManage/gotoIndustryPage"
	                                data-hot="header.service.cvm"><i class="ico-server"></i><span>行业新闻管理</span></a>
	                        </dd>
	                    </dl>
	                    <div class="clearfix"></div>
	                </div>
            	</li>
        </ul>
        <ul class="top-menu" style="float: right">
            <li id="userInfo" data-event="top_submenu" data-menu-type="user"
                style="position: relative" class="" data-menu-inited="true">
                <a href="#" data-event="nav"
                data-hot="header.user.center"><b id="showUserName"> <s:property value="#session.username" /> </b><i
                    class="top-menu-arrows"></i></a> 
            </li>
            <li><a href="${pageContext.request.contextPath }/adminUser_logout.action" data-event="logout">退出</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript">
$(function(){
    $("#productService a:first").click();
});
</script>
