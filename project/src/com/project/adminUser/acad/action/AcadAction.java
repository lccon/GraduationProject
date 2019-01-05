package com.project.adminUser.acad.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.content.service.ContentBottomService;
import com.project.domain.ContentBottom;
import com.project.domain.ContentTop;
import com.project.utils.JqGridBaseAction;

public class AcadAction extends JqGridBaseAction<ContentBottom>{

	@Autowired
	private ContentBottomService contentBottomService;
	
	private String cbid;
	
	public String getCbid() {
		return cbid;
	}

	public void setCbid(String cbid) {
		this.cbid = cbid;
	}

	public String gotoListPage(){
		return "acadList";
	}
	
	public String findAcadForList(){
		 return this.refreshGridModel();  
	}
	
	@Override
	public int getResultSize() {
		return contentBottomService.totalRecord();
	}

	@Override
	public List<ContentBottom> listResults(int from, int length, String name) {
		try {
			name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<ContentBottom> results = contentBottomService.findCategoryForList(name);  
        
        results = contentBottomService.queryByPage(from, length, name);  
         
        return results; 
	}
	
	public String deleteacadForIds(){
		contentBottomService.deleteacadForIds(Integer.parseInt(cbid));
		return NONE;
	}
	
}
