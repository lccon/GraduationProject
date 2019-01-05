package com.project.categorySecond.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.categorySecond.dao.CategorySecondDao;
import com.project.categorySecond.service.CategorySecondService;
import com.project.domain.CategorySecond;

@Transactional
@Service("categorySecondService")
public class CategorySecondServiceImpl implements CategorySecondService {
	
	@Autowired
	private CategorySecondDao categorySecondDao;

	@Override
	public List<CategorySecond> findCategorySecondByCid(Integer number) {
		return categorySecondDao.findCategorySecondByCid(number);
	}

	@Override
	public String findCategorySecondNameByCsid(Integer csid) {
		return categorySecondDao.findCategorySecondNameByCsid(csid);
	}

	@Override
	public int totalRecord() {
		return categorySecondDao.totalRecord();
	}

	@Override
	public List<CategorySecond> findCategorySecondForList(String name) {
		return categorySecondDao.findCategorySecondForList(name);
		
	}

	@Override
	public List<CategorySecond> queryByPage(int from, int length, String name) {
		return categorySecondDao.queryByPage(from,length,name);
	}

	@Override
	public void saveCategory(CategorySecond categorySecond) {
		categorySecondDao.saveCategory(categorySecond);
	}

	@Override
	public void deleteCategorySecondForIds(String csid) {
		int id = Integer.parseInt(csid);
		categorySecondDao.deleteCategorySecondForIds(id);
	}

	@Override
	public CategorySecond getCategorySecondByCsid(String casid) {
		int id = Integer.parseInt(casid);
		return categorySecondDao.getCategorySecondByCsid(id);

	}

	@Override
	public void updateCategorySecond(CategorySecond categorySecond) {
		categorySecondDao.upateCategorySecond(categorySecond);
	}
	
}
