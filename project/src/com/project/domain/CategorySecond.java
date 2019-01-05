package com.project.domain;

import java.util.HashSet;
import java.util.Set;

public class CategorySecond {
	private Integer csid;
	private String csname;
	private Category category;
	
	private Set<PageInfo> pageInfo=new HashSet<PageInfo>();
	
	public Integer getCsid() {
		return csid;
	}
	public void setCsid(Integer csid) {
		this.csid = csid;
	}
	public String getCsname() {
		return csname;
	}
	public void setCsname(String csname) {
		this.csname = csname;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Set<PageInfo> getPageInfo() {
		return pageInfo;
	}
	public void setPageInfo(Set<PageInfo> pageInfo) {
		this.pageInfo = pageInfo;
	}
	@Override
	public String toString() {
		return "CategorySecond [csid=" + csid + ", csname=" + csname + ", category=" + category + ", pageInfo="
				+ pageInfo + "]";
	}
	
}
