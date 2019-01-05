package com.project.domain;

public class ContentBottom {
	private Integer cbid;
	private String bContent;
	public Integer getCbid() {
		return cbid;
	}
	public void setCbid(Integer cbid) {
		this.cbid = cbid;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	@Override
	public String toString() {
		return "ContentBottom [bContent=" + bContent + "]";
	}
	
}
