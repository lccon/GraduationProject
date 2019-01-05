package com.project.content.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.content.dao.InsideNewsDao;
import com.project.domain.ContentBottom;
import com.project.domain.InsideNews;

@Repository("insideNewsDao")
public class InsideNewsDaoImpl implements InsideNewsDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<InsideNews> getInsideNews() {
		String hql="from InsideNews";
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}

	@Override
	public InsideNews getInsideNewsByNid(Integer nid) {
		String hql = "from InsideNews where nid = ?";
		InsideNews insideNews = (InsideNews) sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, nid).uniqueResult();
		return insideNews;
	}

	@Override
	public int totalRecord() {
		String hql="select count(*) from InsideNews";
		List<Long> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list != null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
	
	@Override
	public List<InsideNews> findUserForList(String name) {
		String hql = "from InsideNews where newsContent is not null and newsContent like concat('%',?,'%')";
		List<InsideNews> list= sessionFactory.getCurrentSession().createQuery(hql).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public List<InsideNews> queryByPage(int from, int length, String name) {
		String hql = "from InsideNews where newsContent is not null and newsContent like concat('%',?,'%') order by nid desc";
		List<InsideNews> list = sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(from).setMaxResults(length).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}
	
	@Override
	public List<InsideNews> findByPage(int begin, int limit) {
		String hql = "from InsideNews";
		List<InsideNews> list = sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(begin).setMaxResults(limit).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public void deleteIndustryForIds(int nid) {
		String hql = "delete from InsideNews where nid = ?";
		sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, nid).executeUpdate();
	}

	@Override
	public InsideNews findInsideNewsByNewid(int newId) {
		String hql = "from InsideNews where nid = ?";
		InsideNews insideNews = (InsideNews) sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, newId).uniqueResult();
		return insideNews;
	}

	@Override
	public void updateIndustry(InsideNews insideNews) {
		sessionFactory.getCurrentSession().update(insideNews);
	}
	
}
