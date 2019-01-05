package com.project.announInfo.controller;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.project.content.service.ContentTopService;

@Controller
@Namespace("/announ")
@ParentPackage("struts-default")
@Scope("prototype")
public class AnnounInfoAction extends ActionSupport{
	
	@Autowired
	private ContentTopService contentTopService;
	
	
	
	
}
