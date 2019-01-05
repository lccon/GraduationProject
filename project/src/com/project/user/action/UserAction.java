package com.project.user.action;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
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
import com.project.domain.User;
import com.project.user.service.UserService;

@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Scope("prototype")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	private User user = new User();
	
	@Autowired
	private UserService userService;
	
	@Action(value="user_regis",results={
		@Result(name="index",location="/WEB-INF/jsp/content/aboutMaster_28.jsp"),
		@Result(name="input",location="/WEB-INF/jsp/content/aboutMaster_28.jsp")
	})
	public String regis(){
		//执业许可
		File licensing = user.getLicensing();
		String licensingFileName = user.getLicensingFileName();
		
		//职称证书
		File titleCertificate = user.getTitleCertificate();
		String titleCertificateFileName = user.getTitleCertificateFileName();
		
		if(licensing != null){
			try {
				String path = ServletActionContext.getServletContext().getRealPath("/certificates/licensing");
				File destFile = new File(path, licensingFileName);
				FileUtils.copyFile(licensing, destFile);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		if(titleCertificate != null){
			try {
				String path = ServletActionContext.getServletContext().getRealPath("/certificates/titleCertificate");
				File destFile = new File(path, titleCertificateFileName);
				FileUtils.copyFile(titleCertificate, destFile);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		user.setLicensingFileName("certificates/licensing/"+licensingFileName);
		user.setTitleCertificateFileName("certificates/titleCertificate/"+titleCertificateFileName);
		userService.addUser(user);
		if(user != null){
			this.addActionMessage("注册成功！");
		}else{
			this.addActionMessage("注册失败！");
		}
		return "index";
	}

	
	@Override
	public User getModel() {
		return user;
	}
	
}
