package com.project.adminUser.category.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.project.category.service.CategoryService;
import com.project.domain.Category;
import com.project.domain.User;
import com.project.utils.JqGridBaseAction;

public class CategoryAction extends JqGridBaseAction<Category>{

	@Autowired
	private CategoryService categoryService;
	
	private String cid;
	
	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String gotoListPage(){
		return "categoryList";
	}
	
	 public String findCategoryForList() { 
	        return this.refreshGridModel();  
	    } 
		
		@Override
		public int getResultSize() {
			return categoryService.totalRecord();
		}

		@Override
		public List<Category> listResults(int from, int length, String name) {
			try {
				name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			List<Category> results = categoryService.findCategoryForList(name);  
	        
	        results = categoryService.queryByPage(from, length, name);  
	         
	        return results; 
		}
		
		public String editCategoryDlg(){
			Category category = categoryService.getCategoryByCid(cid);
			ActionContext.getContext().getValueStack().set("category", category);
			return "editSuccess";
		}
		
		public String addCategoryDlg(){
			return "addSuccess";
		}
		
		public String deleteCategoryForIds(){
			categoryService.deleteCategoryForIds(cid);
			return "deleteSuccess";
		}
}
