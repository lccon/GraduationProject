package com.project.content.service;

import java.util.List;

import com.project.domain.ContentBottom;
import com.project.utils.PageBean;

public interface ContentBottomService {

	PageBean<ContentBottom> getContentBottomForList(Integer page);

	ContentBottom getContentBottomByCbid(Integer cbid);

	int totalRecord();

	List<ContentBottom> findCategoryForList(String name);

	List<ContentBottom> queryByPage(int from, int length, String name);

	void deleteacadForIds(int parseInt);

	void updateAcad(ContentBottom contentBottom);

}
