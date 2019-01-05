`<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="menu" id="leftMenu">
    <h2>行业新闻管理</h2>
    <hr class="line-mod">
    <dl class="menu-list def-scroll keyboard-focus-obj">
        <dd> 
            <a class="menu-lv2 " data-event="nav"
                url="${pageContext.request.contextPath }/industry/gotoListPage" href="###"><span>行业新闻管理</span></a>
        </dd>
    </dl>
</div>
<script type="text/javascript">
$(function(){
	$("#leftMenu dd a").click(function(){
        var url=$(this).attr("url");
        asyncOpen(this,url);
        $(this).addClass("on").parents("dd").siblings().find("a").removeClass("on");
    });
    
    $("#leftMenu a:first").click();
    
});
</script>
