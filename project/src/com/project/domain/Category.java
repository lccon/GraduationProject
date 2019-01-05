package com.project.domain;

import java.util.HashSet;
import java.util.Set;

public class Category {
	private Integer cid;
	private String cname;
	private Set<CategorySecond> categorySecond=new HashSet<CategorySecond>();
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Set<CategorySecond> getCategorySecond() {
		return categorySecond;
	}
	public void setCategorySecond(Set<CategorySecond> categorySecond) {
		this.categorySecond = categorySecond;
	}
	
}
