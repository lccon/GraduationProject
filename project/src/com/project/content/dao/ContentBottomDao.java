package com.project.content.dao;

import java.util.List;

import com.project.domain.ContentBottom;

public interface ContentBottomDao {

	List<ContentBottom> getContentBottomForList();

	ContentBottom getContentBottomByCbid(Integer cbid);

	int totalRecord();

	List<ContentBottom> findCategoryForList(String name);

	List<ContentBottom> queryByPage(int from, int length, String name);

	void deleteacadForIds(int cbid);

	void updateAcad(ContentBottom contentBottom);

	List<ContentBottom> findByPage(int begin, int limit);

}
