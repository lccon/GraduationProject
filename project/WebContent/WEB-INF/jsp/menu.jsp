<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!--头部-->
    <div class="header">
        <div class="container" style="justify-content: space-between;">
            <div>
             <div class="logo fl"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt=""></div>
            <div class="logo-desc fl">
                <h1>北京神经变性病学会</h1>
                <p>BEIJING NEURODEGENERATIVE DISORDERS SOCIETY</p>
            </div>
            </div>
            <div class="search fr">
                <input type="text" id="content" value="">
                <button id="search">搜索</button>
            </div>
        </div>
    </div>
<!--导航  -->
<div class="nav">
	<div class="container">
		<ul id="tab">
			<s:iterator value="#session.category" var="c">
				<li><a href="#1"><s:property value="#c.cname" /></a>
					<div class="sub">
						<s:iterator value="#c.categorySecond" var="cs">
							<p>
								<a href="${pageContext.request.contextPath }/skip_<s:property value="#cs.csid"/>.action?number=<s:property value="#c.cid"/>&csid=<s:property value="#cs.csid" />"><s:property value="#cs.csname" /></a>
							</p>
						</s:iterator>
					</div>
				</li>
			</s:iterator>
		</ul>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$("#search").click(function(){
		var text = $("#content").val();
		if(text != null && text != ''){
			$("#content").val(text);
			window.location.href = "${pageContext.request.contextPath }/announcementInfo/findAnnounInfo?content="+text;
		}
		/* $.ajax({
            url:"${pageContext.request.contextPath }/announcementInfo/findAnnounInfo",
            data:{
                "content":text
            },
            type: 'POST',
           success:function(data){
                if(data != null && data){
                    $.messageBox({message:"删除成功！"});
                    onLoad();
                }else{
                    $.messageBox({message:"删除失败！",level: "error"});
                }
            }  
        }); */
	})
})
</script>


