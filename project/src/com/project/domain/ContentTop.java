package com.project.domain;

import java.util.HashSet;
import java.util.Set;

public class ContentTop {
	private Integer ctid;
	private String tContent;
	private Set<AnnounInfo> announInfo=new HashSet<AnnounInfo>();
	public Integer getCtid() {
		return ctid;
	}
	public void setCtid(Integer ctid) {
		this.ctid = ctid;
	}
	public String gettContent() {
		return tContent;
	}
	public void settContent(String tContent) {
		this.tContent = tContent;
	}
	public Set<AnnounInfo> getAnnounInfo() {
		return announInfo;
	}
	public void setAnnounInfo(Set<AnnounInfo> announInfo) {
		this.announInfo = announInfo;
	}
	
}
