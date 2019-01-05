package com.project.pageBean.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.project.content.service.ContentBottomService;
import com.project.content.service.ContentTopService;
import com.project.content.service.InsideNewsService;
import com.project.domain.ContentBottom;
import com.project.domain.ContentTop;
import com.project.domain.InsideNews;
import com.project.utils.PageBean;

@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Scope("prototype")
public class PageAction {

	@Autowired
	private ContentTopService contentTopService;
	
	@Autowired
	private ContentBottomService contentBottomService;
	
	@Autowired
	private InsideNewsService insideNewsService;
	
	private Integer page;
	
	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	@Action(value="adminContentTop_findAll",results={
		@Result(name="topSuccess",location="/WEB-INF/jsp/content/aboutMaster_5.jsp")
	})
	public String contentTopPage(){
		PageBean<ContentTop> contentToplist=contentTopService.getContentTopForList(page);
		ActionContext.getContext().getSession().put("contentToplist", contentToplist);
		return "topSuccess";
	}
	
	@Action(value="adminContentBottom_findAll",results={
		@Result(name="bottomSuccess",location="/WEB-INF/jsp/content/aboutMaster_6.jsp")
	})
	public String contentBottomPage(){
		PageBean<ContentBottom> contentBottomlist=contentBottomService.getContentBottomForList(page);
		ActionContext.getContext().getSession().put("contentBottomlist", contentBottomlist);
		return "bottomSuccess";
	}
	
	@Action(value="adminInsideNews_findAll",results={
		@Result(name="insideNewsSuccess",location="/WEB-INF/jsp/content/aboutMaster_7.jsp")
	})
	public String insideNewsPage(){
		PageBean<InsideNews> InsideNewsList=insideNewsService.getInsideNews(page);
		ActionContext.getContext().getSession().put("InsideNewsList", InsideNewsList);
		return "insideNewsSuccess";
	}
}
