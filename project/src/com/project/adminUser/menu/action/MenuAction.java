package com.project.adminUser.menu.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Controller
@Namespace("/menuManage")
@ParentPackage("struts-default")
@Scope("prototype")
public class MenuAction {
	
	@Action(value="gotoMemberMenuPage",results={
		@Result(name="memberMenu",location="/member/memberMenu.jsp")
	})
	public String memberMenuPage(){
		return "memberMenu";
	}
	
	
	@Action(value="gotoCategoryMenuPage",results={
			@Result(name="categoryMenu",location="/category/categoryMenu.jsp")
	})
	public String categoryMenuPage(){
		return "categoryMenu";
	}
	
	
	@Action(value="gotoCateSecondMenuPage",results={
			@Result(name="cateSecondMenu",location="/categorySecond/categorySecondMenu.jsp")
	})
	public String cateSecondMenuPage(){
		return "cateSecondMenu";
	}
	
	@Action(value="gotoAnnounMenuPage",results={
			@Result(name="announMenu",location="/announcement/announcementMenu.jsp")
	})
	public String announMenuPage(){
		return "announMenu";
	}
	
	@Action(value="gotoAcadPage",results={
			@Result(name="acadMenu",location="/acad/acadMenu.jsp")
	})
	public String acadPage(){
		return "acadMenu";
	}
	
	@Action(value="gotoIndustryPage",results={
			@Result(name="industryMenu",location="/industry/industryMenu.jsp")
	})
	public String gotoIndustryPage(){
		return "industryMenu";
	}
}
