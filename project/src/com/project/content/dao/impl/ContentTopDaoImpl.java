package com.project.content.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.content.dao.ContentTopDao;
import com.project.domain.ContentTop;
import com.project.domain.User;

@Repository("contentTopDao")
public class ContentTopDaoImpl implements ContentTopDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ContentTop> getContentTopForList() {
		String hql="from ContentTop";
		List<ContentTop> list=sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public ContentTop findNoticeBullByCtid(Integer anno) {
		String hql = "from ContentTop where ctid = ?";
		ContentTop contentTop = (ContentTop) sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, anno).uniqueResult();
		if(contentTop != null){
			return contentTop;
		}
		return null;
	}

	@Override
	public int totalRecord() {
		String hql="select count(*) from ContentTop";
		List<Long> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list != null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<ContentTop> findCategoryForList(String name) {
		String hql = "from ContentTop where tContent is not null and tContent like concat('%',?,'%')";
		List<ContentTop> list= sessionFactory.getCurrentSession().createQuery(hql).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public List<ContentTop> queryByPage(int from, int length, String name) {
		String hql = "from ContentTop where tContent is not null and tContent like concat('%',?,'%') order by ctid desc";
		List<ContentTop> list = sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(from).setMaxResults(length).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}
	
	@Override
	public List<ContentTop> findByPage(int from, int length) {
		String hql = "from ContentTop";
		List<ContentTop> list=sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(from).setMaxResults(length).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}
	
	@Override
	public void deleteAnnouncementForIds(int ctid) {
		String hql = "delete from ContentTop where ctid = ?";
		sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, ctid).executeUpdate();
	}

	@Override
	public void updateAnnouncement(ContentTop contentTop) {
		sessionFactory.getCurrentSession().update(contentTop);
	}

	@Override
	public List<ContentTop> findAnnoun(String content) {
		String hql = "from ContentTop where tContent is not null and tContent like concat('%',?,'%')";
		List<ContentTop> list = sessionFactory.getCurrentSession().createQuery(hql).setString(0, content).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}
	
}
