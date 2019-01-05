package com.project.adminUser.category.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.project.category.service.CategoryService;
import com.project.domain.Category;

@Controller
@Namespace("/categoryInfo")
@ParentPackage("struts-default")
@Scope("prototype")
public class CategoryInfoAction extends ActionSupport implements ModelDriven<Category>{
	
	@Autowired
	private CategoryService categoryService;	
	
	private Category category = new Category();
	
	@Override
	public Category getModel() {
		return category;
	}
	
	@Action(value="updateCategoryInfo")
	public String editCategoryInfo(){
		categoryService.updateCategoryInfo(category);
		return NONE;
	}
	
	
	@Action("saveCategoryInfo")
	public String saveCategory(){
		categoryService.saveCategory(category);
		return NONE;
	}
}
