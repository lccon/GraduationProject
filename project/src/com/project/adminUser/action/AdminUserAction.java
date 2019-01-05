package com.project.adminUser.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.project.adminUser.service.AdminUserService;
import com.project.domain.AdminUser;

@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Scope("prototype")
public class AdminUserAction extends ActionSupport implements ModelDriven<AdminUser>{
	
	private static final long serialVersionUID = 1L;

	@Autowired
	private AdminUserService adminUserService;
	
	private AdminUser adminUser=new AdminUser();

	@Override
	public AdminUser getModel() {
		return adminUser;
	}
	
	@Action(value="adminUser_login",results={
		@Result(name="loginFail",location="/admin/index.jsp"),
		@Result(name="loginSuccess",location="/admin/home.jsp")
	})
	public String login(){
		AdminUser existAdminUser = adminUserService.login(adminUser);
		if(existAdminUser == null){
			this.addActionError("用户名或密码错误,请重新登陆！");
			return "loginFail";
		}else{
			ActionContext.getContext().getSession().put("username", existAdminUser.getUsername());
			return "loginSuccess";
		}
	}
	
	@Action(value="adminUser_logout",results={
		@Result(name="logoutSuccess",location="/admin/index.jsp")
	})
	public String logout(){
		ActionContext.getContext().getSession().remove("username");
		return "logoutSuccess";
	}
	
}
