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
        <td align="center" valign="top">
        <table width="688" border="0" cellspacing="0" cellpadding="0">
          
          <tr>
            <td align="center">&nbsp;</td>
          </tr>
          
          <tr>
            <td height="40" align="center"><table width="660" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <%-- <tr>
                    <td align="left" valign="top">北京神经变性病学会<br/>
					                      地址：北京市西城区长椿街45号宣武医院<br/>
					电话：<span t="7" onclick="return false;" data="025-83272369" isout="1">+86 10-83198277</span><br />
					                      邮件：csm_nj@126.com<br />
					                      联系人：秘书处</td>
                  </tr> --%>
                  	<div class="box">
						<input type="hidden" id="pageInfo" value="<s:property value="pageInfo"/>"/>
					</div>
                  <tr>
                    <td height="48" align="left" valign="middle">&nbsp;</td>
                  </tr>
                </table></td>
                <td width="361" align="right"><img src="${pageContext.request.contextPath }/images/host.png" width="361" height="370" style="margin-left:-171px"/></td>
              </tr>
              <tr>
                <td height="300" colspan="2" align="center" valign="bottom"><img src="http://www.microcirculation.org.cn/statics/images/wxh/xs_dq.gif" width="582" height="239" /></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="40" align="center"></td>
          </tr>
      </table>
         </td>
      </tr>
    </table></td>
  </tr>
</table>
					
					
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
	$(".box").html(announInfo);
</script>