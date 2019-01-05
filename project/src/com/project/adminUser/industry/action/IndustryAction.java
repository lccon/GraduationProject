package com.project.adminUser.industry.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.content.service.InsideNewsService;
import com.project.domain.InsideNews;
import com.project.utils.JqGridBaseAction;

public class IndustryAction extends JqGridBaseAction<InsideNews>{

	@Autowired
	private InsideNewsService insideNewsService;
	
	private String nid;
	
	public String getNid() {
		return nid;
	}

	public void setNid(String nid) {
		this.nid = nid;
	}

	public String gotoListPage(){
		return "industryList";
	}
	
    public String findIndustryForList() { 
        return this.refreshGridModel();  
    } 
	
	@Override
	public int getResultSize() {
		return insideNewsService.totalRecord();
	}

	@Override
	public List<InsideNews> listResults(int from, int length, String name) {
		try {
			name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<InsideNews> results = insideNewsService.findUserForList(name);  
        
        results = insideNewsService.queryByPage(from, length, name);  
         
        return results; 
	}
	
	public String deleteIndustryForIds(){
		insideNewsService.deleteIndustryForIds(Integer.parseInt(nid));
		return NONE;
	}
	
}
