package com.project.adminUser.announcement.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.content.service.ContentTopService;
import com.project.domain.ContentTop;
import com.project.utils.JqGridBaseAction;

public class AnnouncementAction extends JqGridBaseAction<ContentTop>{

	@Autowired
	private ContentTopService contentTopService;
	
	private String ctid;
	
	public String getCtid() {
		return ctid;
	}

	public void setCtid(String ctid) {
		this.ctid = ctid;
	}

	public String gotoListPage(){
		return "announcementList";
	}
	
	public String findAnnouncementForList(){
		 return this.refreshGridModel();  
	}
	
	@Override
	public int getResultSize() {
		return contentTopService.totalRecord();
	}

	@Override
	public List<ContentTop> listResults(int from, int length, String name) {
		try {
			name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<ContentTop> results = contentTopService.findCategoryForList(name);  
        
        results = contentTopService.queryByPage(from, length, name);  
         
        return results; 
	}
	
	public String deleteAnnouncementForIds(){
		contentTopService.deleteAnnouncementForIds(Integer.parseInt(ctid));
		return NONE;
	}
	
}
