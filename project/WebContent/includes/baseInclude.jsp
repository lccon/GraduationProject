<%@ page language="java" pageEncoding="UTF-8"%>
<%
/* String path = request.getContextPath();
request.setAttribute("path",path);
String resource_path=path;
if("production".equals(GlobalValue.environment)){
    resource_path=GridProperties.RESOURCE_PATH;
}
request.setAttribute("resource_path",resource_path);
request.setAttribute("current_project","");
request.setAttribute("currentSession","");
if(ThreadVariable.getUser()!=null){
    request.setAttribute("USER_ORG_ID","");
} */
%>

<script type="text/javascript">
var PATH='${path}';
var RESOURCE_PATH='${resource_path}';
var USER_ORG_ID='${USER_ORG_ID}';
var listUrl;
</script>