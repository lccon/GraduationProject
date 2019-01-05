package com.project.content.service;

import java.util.List;

import com.project.domain.ContentTop;
import com.project.utils.PageBean;

public interface ContentTopService {

	PageBean<ContentTop> getContentTopForList(Integer page);

	ContentTop findNoticeBullByCtid(Integer anno);

	int totalRecord();

	List<ContentTop> findCategoryForList(String name);

	List<ContentTop> queryByPage(int from, int length, String name);

	void deleteAnnouncementForIds(int ctid);

	void updateAnnouncement(ContentTop contentTop);

	List<ContentTop> findAnnoun(String content);

}
