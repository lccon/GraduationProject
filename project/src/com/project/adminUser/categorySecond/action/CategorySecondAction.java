package com.project.adminUser.categorySecond.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.project.category.service.CategoryService;
import com.project.categorySecond.service.CategorySecondService;
import com.project.domain.Category;
import com.project.domain.CategorySecond;
import com.project.utils.JqGridBaseAction;

public class CategorySecondAction extends JqGridBaseAction<CategorySecond>{

	@Autowired
	private CategorySecondService categorySecondService;
	
	@Autowired
	private CategoryService categoryService;
	
	private String csid;
	
	public String getCsid() {
		return csid;
	}

	public void setCsid(String csid) {
		this.csid = csid;
	}

	public String gotoListPage(){
		return "categorySecondList";
	}

	public String findCategorySecondForList(){
		return this.refreshGridModel();
	}
	
	@Override
	public int getResultSize() {
		return categorySecondService.totalRecord();
	}

	@Override
	public List<CategorySecond> listResults(int from, int length, String name) {
		try {
			name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<CategorySecond> results = categorySecondService.findCategorySecondForList(name);  
        
        results = categorySecondService.queryByPage(from, length, name);  
         
        return results; 
	}
	
	public String addCategorySecondDlg(){
		List<Category> list = categoryService.selectCategoryList();
		ActionContext.getContext().getValueStack().set("list", list);
		return "addSuccess";
	}
	
	public String deleteCategorySecondForIds(){
		categorySecondService.deleteCategorySecondForIds(csid);
		return "deleteSuccess";
	}
	
}
