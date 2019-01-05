package com.project.category.service;

import java.util.List;

import com.project.domain.Category;


public interface CategoryService {

	List<Category> selectCategoryList();

	int totalRecord();

	List<Category> findCategoryForList(String name);

	List<Category> queryByPage(int from, int length, String name);

	Category getCategoryByCid(String cid);

	void updateCategoryInfo(Category category);

	void saveCategory(Category category);

	void deleteCategoryForIds(String cid);

}
