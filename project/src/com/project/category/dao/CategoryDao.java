package com.project.category.dao;

import java.util.List;

import com.project.domain.Category;

public interface CategoryDao {

	List<Category> selectCategoryList();

	int totalRecord();

	List<Category> findCategoryForList(String name);

	List<Category> queryByPage(int from, int length, String name);

	Category getCategoryByCid(int cid);

	void updateCategoryInfo(Category category);

	void saveCategory(Category category);

	void deleteCategoryForIds(int id);

}
