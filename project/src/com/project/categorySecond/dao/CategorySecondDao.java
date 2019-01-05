package com.project.categorySecond.dao;

import java.util.List;

import com.project.domain.CategorySecond;

public interface CategorySecondDao {

	List<CategorySecond> findCategorySecondByCid(Integer number);

	String findCategorySecondNameByCsid(Integer csid);

	int totalRecord();

	List<CategorySecond> findCategorySecondForList(String name);

	List<CategorySecond> queryByPage(int from, int length, String name);

	void saveCategory(CategorySecond categorySecond);

	void deleteCategorySecondForIds(int id);

	CategorySecond getCategorySecondByCsid(int id);

	void upateCategorySecond(CategorySecond categorySecond);

}
