package com.project.adminUser.member.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.project.domain.User;
import com.project.user.service.UserService;
import com.project.utils.JqGridBaseAction;


@Controller
public class MemberAction extends JqGridBaseAction<User>{
	
	
	@Autowired
	private UserService userService;
	
	private String uid;
	
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	
	public String gotoListPage(){
		return "memeberList";
	}
	
    public String findMemberForList() { 
        return this.refreshGridModel();  
    } 
	
	@Override
	public int getResultSize() {
		return userService.totalRecord();
	}

	@Override
	public List<User> listResults(int from, int length, String name) {
		try {
			name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<User> results = userService.findUserForList(name);  
        
        results = userService.queryByPage(from, length, name);  
         
        return results; 
	}

	public String deleteMemberForIds() {
		userService.deleteMemberForIds(uid);
		ActionContext.getContext().getSession().put("flag", true);
		return "deleteSuccess";
	}
	
	public String showMemberDlg(){
		User user = userService.getMemberByUid(uid);
		ActionContext.getContext().getValueStack().set("user", user);
		return "selectSuccess";
	}
	
	public String editMemberDlg(){
		User user = userService.getMemberByUid(uid);
		ActionContext.getContext().getValueStack().set("user", user);
		return "editSuccess";
	}

}
