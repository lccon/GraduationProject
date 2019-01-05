package com.project.index.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


import com.opensymphony.xwork2.ActionContext;
import com.project.category.service.CategoryService;
import com.project.content.service.ContentBottomService;
import com.project.content.service.ContentTopService;
import com.project.content.service.InsideNewsService;
import com.project.domain.Category;
import com.project.domain.ContentBottom;
import com.project.domain.ContentTop;
import com.project.domain.InsideNews;
import com.project.utils.PageBean;

@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Scope("prototype")
public class IndexAction {

	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ContentTopService contentTopService;
	
	@Autowired
	private ContentBottomService contentBottomService;
	
	@Autowired
	private InsideNewsService insideNewsService;
	
	private Integer page = 1;

	@Action(value="index",results={
		@Result(name="index",location="/WEB-INF/jsp/index.jsp")
	})
	public String boss(){
		List<Category> category=categoryService.selectCategoryList();
		ActionContext.getContext().getSession().put("category", category);
		PageBean<ContentTop> contentToplist=contentTopService.getContentTopForList(page);
		ActionContext.getContext().getSession().put("contentToplist", contentToplist);
		PageBean<ContentBottom> contentBottomlist=contentBottomService.getContentBottomForList(page);
		ActionContext.getContext().getSession().put("contentBottomlist", contentBottomlist);
		PageBean<InsideNews> InsideNewsList=insideNewsService.getInsideNews(page);
		ActionContext.getContext().getSession().put("InsideNewsList", InsideNewsList);
		return "index";
	}
	
	
}
