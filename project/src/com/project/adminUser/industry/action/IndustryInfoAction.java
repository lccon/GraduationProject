package com.project.adminUser.industry.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.project.content.service.InsideNewsService;
import com.project.domain.InsideNews;

@Controller
@Namespace("/industryInfo")
@ParentPackage("struts-default")
@Scope("prototype")
public class IndustryInfoAction extends ActionSupport implements ModelDriven<InsideNews>{

	@Autowired
	private InsideNewsService insideNewsService;
	
	private InsideNews insideNews = new InsideNews();
	
	private String newid;
	
	public String getNewid() {
		return newid;
	}

	public void setNewid(String newid) {
		this.newid = newid;
	}

	@Override
	public InsideNews getModel() {
		// TODO Auto-generated method stub
		return insideNews;
	}
	
	@Action(value="editIndustryDlg",results={
			@Result(name="editSuccess",location="/industry/editIndustryDlg.jsp")
		})
		public String editIndustry(){
			insideNews = insideNewsService.findInsideNewsByNewid(Integer.parseInt(newid));
			return "editSuccess";
		}

	@Action(value="updateIndustryInfo",results={
			@Result(name="updateSuccess",location="/industry/industryList.jsp")
		})
		public String updateIndustry(){
			insideNewsService.updateIndustry(insideNews);
			return "updateSuccess";
		}
}
