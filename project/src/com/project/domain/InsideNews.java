package com.project.domain;

public class InsideNews {
	private Integer nid;
	private String newsContent;
	public Integer getNid() {
		return nid;
	}
	public void setNid(Integer nid) {
		this.nid = nid;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	@Override
	public String toString() {
		return "InsideNews [newsContent=" + newsContent + "]";
	}
	
}
