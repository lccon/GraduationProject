package com.project.content.dao;

import java.util.List;

import com.project.domain.ContentTop;

public interface ContentTopDao {

	List<ContentTop> getContentTopForList();

	ContentTop findNoticeBullByCtid(Integer anno);

	int totalRecord();

	List<ContentTop> findCategoryForList(String name);

	List<ContentTop> queryByPage(int from, int length, String name);
	
	List<ContentTop> findByPage(int from, int length);

	void deleteAnnouncementForIds(int ctid);

	void updateAnnouncement(ContentTop contentTop);

	List<ContentTop> findAnnoun(String content);

}
