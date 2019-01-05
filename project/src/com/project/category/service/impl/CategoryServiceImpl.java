package com.project.category.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.category.dao.CategoryDao;
import com.project.category.service.CategoryService;
import com.project.domain.Category;
import com.project.domain.User;

@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDao categoryDao;
	@Override
	public List<Category> selectCategoryList() {
		List<Category> list=categoryDao.selectCategoryList();
		return list;
	}
	
	@Override
	public int totalRecord() {
		return categoryDao.totalRecord();
	}

	@Override
	public List<Category> findCategoryForList(String name) {
		List<Category> list = categoryDao.findCategoryForList(name);
		return list;
	}

	@Override
	public List<Category> queryByPage(int from, int length, String name) {
		List<Category> list = categoryDao.queryByPage(from,length,name);
		return list;
	}

	@Override
	public Category getCategoryByCid(String cid) {
		int id = Integer.parseInt(cid);
		Category category = categoryDao.getCategoryByCid(id);
		return category;
	}

	@Override
	public void updateCategoryInfo(Category category) {
		categoryDao.updateCategoryInfo(category);
	}

	@Override
	public void saveCategory(Category category) {
		categoryDao.saveCategory(category);
	}

	@Override
	public void deleteCategoryForIds(String cid) {
		int id = Integer.parseInt(cid);
		categoryDao.deleteCategoryForIds(id);
	}

}
