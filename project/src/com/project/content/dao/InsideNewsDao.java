package com.project.content.dao;

import java.util.List;

import com.project.domain.InsideNews;

public interface InsideNewsDao {

	List<InsideNews> getInsideNews();

	InsideNews getInsideNewsByNid(Integer nid);

	int totalRecord();

	List<InsideNews> findUserForList(String name);

	List<InsideNews> queryByPage(int from, int length, String name);

	void deleteIndustryForIds(int nid);

	InsideNews findInsideNewsByNewid(int newId);

	void updateIndustry(InsideNews insideNews);

	List<InsideNews> findByPage(int begin, int limit);

}
