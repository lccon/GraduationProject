package com.project.adminUser.announcement.action;

import java.io.UnsupportedEncodingException;
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
import com.project.categorySecond.service.CategorySecondService;
import com.project.content.service.ContentTopService;
import com.project.domain.CategorySecond;
import com.project.domain.ContentTop;

@Controller
@Namespace("/announcementInfo")
@ParentPackage("struts-default")
@Scope("prototype")
public class AnnouncementInfoAction extends ActionSupport implements ModelDriven<ContentTop>{
	
	private ContentTop contentTop = new ContentTop();
	
	private String contid;
	
	public String getContid() {
		return contid;
	}

	public void setContid(String contid) {
		this.contid = contid;
	}
	
	private String content;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Autowired
	private ContentTopService contentTopService;
	
	@Autowired
	private CategorySecondService categorySecondService;
	
	@Action(value="editAnnouncementDlg",results={
		@Result(name="editSuccess",location="/announcement/editAnnouncementDlg.jsp")
	})
	public String editAnnouncement(){
		contentTop = contentTopService.findNoticeBullByCtid(Integer.parseInt(contid));
		return "editSuccess";
	}
	
	@Action(value="updateAnnouncementInfo")
	public String updateAnnouncement(){
		contentTopService.updateAnnouncement(contentTop);
		return NONE;
	}
	
	@Action(value="findAnnounInfo",results={
			@Result(name="findSuccess",location="/WEB-INF/jsp/content/aboutMaster_5.jsp")
		})
	public String findAnnoun(){
		String cont = null;
		try {
			cont = new String(content.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<ContentTop> contentTop = contentTopService.findAnnoun(cont);
		if(contentTop != null && contentTop.size() > 0){
			ActionContext.getContext().getValueStack().set("contentTop", contentTop);
		}else{
			ActionContext.getContext().getValueStack().set("flag", true);
			this.addActionMessage("没有找到相关信息！");
		}
		
		List<CategorySecond> list=categorySecondService.findCategorySecondByCid(2);
		ActionContext.getContext().getSession().put("list", list);
		
		return "findSuccess";
	}

	@Override
	public ContentTop getModel() {
		return contentTop;
	}
	
}
