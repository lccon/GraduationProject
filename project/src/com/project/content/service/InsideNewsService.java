package com.project.content.service;

import java.util.List;

import com.project.domain.InsideNews;
import com.project.utils.PageBean;

public interface InsideNewsService {

	PageBean<InsideNews> getInsideNews(Integer page);

	InsideNews getInsideNewsByNid(Integer nid);

	int totalRecord();

	List<InsideNews> findUserForList(String name);

	List<InsideNews> queryByPage(int from, int length, String name);

	void deleteIndustryForIds(int parseInt);

	InsideNews findInsideNewsByNewid(int parseInt);

	void updateIndustry(InsideNews insideNews);

}
