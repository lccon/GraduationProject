package com.project.adminUser.categorySecond.action;

import java.util.List;

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
import com.project.adminUser.pageInfo.service.PageInfoService;
import com.project.category.service.CategoryService;
import com.project.categorySecond.service.CategorySecondService;
import com.project.domain.Category;
import com.project.domain.CategorySecond;
import com.project.domain.PageInfo;

@Controller
@Namespace("/categorySecondInfo")
@ParentPackage("struts-default")
@Scope("prototype")
public class CategorySecondInfoAction extends ActionSupport implements ModelDriven<CategorySecond>{
	
	@Autowired
	private CategorySecondService categorySecondService;
	
	@Autowired
	private PageInfoService pageInfoService;
	
	@Autowired
	private CategoryService categoryService;
	
	private String casid;
	
	private String pageContent;
	
	public String getPageContent() {
		return pageContent;
	}

	public void setPageContent(String pageContent) {
		this.pageContent = pageContent;
	}

	public String getCasid() {
		return casid;
	}

	public void setCasid(String casid) {
		this.casid = casid;
	}

	private CategorySecond categorySecond = new CategorySecond();
	
	@Override
	public CategorySecond getModel() {
		return categorySecond;
	}
	
	/*@Action(value="updateCategoryInfo")
	public String editCategoryInfo(){
		categoryService.updateCategoryInfo(category);
		return NONE;
	}*/
	
	/*@Action(value="editCategorySecondDlg",results={
		@Result(name="loginFail",location="/admin/index.jsp"),
		@Result(name="loginSuccess",location="/admin/home.jsp")
	})*/
	
	
	@Action("saveCategorySecondInfo")
	public String saveCategorySecond(){
		categorySecondService.saveCategory(categorySecond);
		return NONE;
	}
	
	@Action(value="editCategorySecondDlg",results={
			@Result(name="editSuccess",location="/categorySecond/editCategorySecondDlg.jsp")
		})
	public String editCategorySecond(){
		categorySecond = categorySecondService.getCategorySecondByCsid(casid);
		
		List<Category> list = categoryService.selectCategoryList();
		ActionContext.getContext().getValueStack().set("list", list);
		
		PageInfo pageInfo = pageInfoService.getPageInfoByCsid(Integer.parseInt(casid));
		if(pageInfo != null){
			ActionContext.getContext().getValueStack().set("pageInfo", pageInfo.getpContent());
		}
		return "editSuccess";
	}
	
	@Action(value="updateCategorySecondInfo")
	public String updateCategorySecond(){
		PageInfo pageInfo = pageInfoService.getPageInfoByCsid(categorySecond.getCsid());
		pageInfo.setpContent(pageContent);
		pageInfoService.updatePageInfo(pageInfo);
		
		categorySecondService.updateCategorySecond(categorySecond);
		
		
		return NONE;
	}
}
