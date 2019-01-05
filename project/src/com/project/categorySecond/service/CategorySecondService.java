package com.project.categorySecond.service;

import java.util.List;

import com.project.domain.CategorySecond;

public interface CategorySecondService {

	List<CategorySecond> findCategorySecondByCid(Integer number);

	String findCategorySecondNameByCsid(Integer csid);

	int totalRecord();

	List<CategorySecond> findCategorySecondForList(String name);

	List<CategorySecond> queryByPage(int from, int length, String name);

	void saveCategory(CategorySecond categorySecond);

	void deleteCategorySecondForIds(String csid);

	CategorySecond getCategorySecondByCsid(String casid);

	void updateCategorySecond(CategorySecond categorySecond);

}
