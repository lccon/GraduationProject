package com.project.category.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.category.dao.CategoryDao;
import com.project.domain.Category;

@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Category> selectCategoryList() {
		String hql="from Category";
		List<Category> list=sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public int totalRecord() {
		String hql = "select count(*) from Category";
		List<Long> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list != null){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<Category> findCategoryForList(String name) {
		String hql = "from Category where cname is not null and cname like concat('%',?,'%')";
		List<Category> list = sessionFactory.getCurrentSession().createQuery(hql).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public List<Category> queryByPage(int from, int length, String name) {
		String hql = "from Category where cname is not null and cname like concat('%',?,'%') order by cid asc";
		List<Category> list = sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(from).setMaxResults(length).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public Category getCategoryByCid(int cid) {
		String hql = "from Category where cid = ?";
		Category category = (Category) sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, cid).uniqueResult();
		return category;
	}

	@Override
	public void updateCategoryInfo(Category category) {
		String hql = "update Category set cname = ? where cid = ?";
		sessionFactory.getCurrentSession().createQuery(hql).setString(0,category.getCname()).setInteger(1, category.getCid()).executeUpdate();
	}

	@Override
	public void saveCategory(Category category) {
		sessionFactory.getCurrentSession().save(category);
	}

	@Override
	public void deleteCategoryForIds(int id) {
		String hqlO = "delete from CategorySecond cs where cs.category.cid = ?";
		sessionFactory.getCurrentSession().createQuery(hqlO).setInteger(0, id).executeUpdate();
		String hql = "delete from Category where cid = ?";
		sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	
}
