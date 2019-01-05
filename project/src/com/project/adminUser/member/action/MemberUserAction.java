package com.project.adminUser.member.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.project.domain.AdminUser;
import com.project.domain.User;
import com.project.user.service.UserService;

@Controller
@Namespace("/memberUser")
@ParentPackage("struts-default")
@Scope("prototype")
public class MemberUserAction extends ActionSupport implements ModelDriven<User>{
	
	@Autowired
	private UserService userService;
	
	private User user = new User();
	
	@Override
	public User getModel() {
		return user;
	}
	 //location="menuManage/gotoMemberMenuPage.action
	@Action(value="updateMemberInfo")
	public String editMemberInfo(){
		User userInfo = userService.updateMemberInfo(user);
		ActionContext.getContext().getValueStack().set("userInfo", userInfo);
		return NONE;
	}
	
}
