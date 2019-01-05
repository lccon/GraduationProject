package com.project.categorySecond.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.categorySecond.dao.CategorySecondDao;
import com.project.domain.Category;
import com.project.domain.CategorySecond;

@Repository("categorySecondDao")
public class CategorySecondDaoImpl implements CategorySecondDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<CategorySecond> findCategorySecondByCid(Integer number) {
		String hql="from CategorySecond cs where cs.category.cid=?";
		List<CategorySecond> list=sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, number).list();
		if(list !=null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public String findCategorySecondNameByCsid(Integer csid) {
		String hql="select csname from CategorySecond where csid=?";
		String csname=(String)sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, csid).uniqueResult();
		return csname;
	}

	@Override
	public int totalRecord() {
		String hql = "select count(*) from CategorySecond";
		List<Long> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list != null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<CategorySecond> findCategorySecondForList(String name) {
		String hql = "from CategorySecond where csname is not null and csname like concat('%',?,'%')";
		List<CategorySecond> list = sessionFactory.getCurrentSession().createQuery(hql).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}
	
	@Override
	public List<CategorySecond> queryByPage(int from, int length, String name) {
		String hql = "from CategorySecond where csname is not null and csname like concat('%',?,'%') order by cid asc";
		List<CategorySecond> list = sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(from).setMaxResults(length).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public void saveCategory(CategorySecond categorySecond) {
		sessionFactory.getCurrentSession().save(categorySecond);
	}

	@Override
	public void deleteCategorySecondForIds(int id) {
		String hql = "delete from CategorySecond where csid = ?";
		sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}

	@Override
	public CategorySecond getCategorySecondByCsid(int csid) {
		String hql = "from CategorySecond where csid = ?";
		CategorySecond categorySecond = (CategorySecond) sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, csid).uniqueResult();
		return categorySecond;
	}

	@Override
	public void upateCategorySecond(CategorySecond categorySecond) {
		String hql = "update CategorySecond cs set cs.csname = ?, cs.category.cid = ? where cs.csid = ?";
		sessionFactory.getCurrentSession().createQuery(hql).setString(0, categorySecond.getCsname()).setInteger(1, categorySecond.getCategory().getCid()).setInteger(2, categorySecond.getCsid()).executeUpdate();
	}
}
