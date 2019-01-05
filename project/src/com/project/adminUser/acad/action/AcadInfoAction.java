package com.project.adminUser.acad.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.project.content.service.ContentBottomService;
import com.project.domain.ContentBottom;

@Controller
@Namespace("/acadInfo")
@ParentPackage("struts-default")
@Scope("prototype")
public class AcadInfoAction extends ActionSupport implements ModelDriven<ContentBottom>{
	
	@Autowired
	private ContentBottomService contentBottomService;
	
	private ContentBottom contentBottom = new ContentBottom();
	
	private String conbid;

	public String getConbid() {
		return conbid;
	}

	public void setConbid(String conbid) {
		this.conbid = conbid;
	}
	
	@Action(value="editAcadDlg",results={
			@Result(name="editSuccess",location="/acad/editAcadDlg.jsp")
	})
	public String editAcad(){
	    contentBottom = contentBottomService.getContentBottomByCbid(Integer.parseInt(conbid));
		return "editSuccess";
	}

	@Action(value="updateAcadInfo",results={
			@Result(name="updateSuccess",location="/acad/acadList.jsp")
	})
	public String updateAcad(){
		contentBottomService.updateAcad(contentBottom);
		return "updateSuccess";
	}
	
	@Override
	public ContentBottom getModel() {
		return contentBottom;
	}
	
}
