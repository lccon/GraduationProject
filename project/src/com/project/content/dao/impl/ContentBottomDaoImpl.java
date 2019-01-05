package com.project.content.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.content.dao.ContentBottomDao;
import com.project.domain.ContentBottom;
import com.project.domain.ContentTop;

@Repository("contentBottomDao")
public class ContentBottomDaoImpl implements ContentBottomDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ContentBottom> getContentBottomForList() {
		String hql="from ContentBottom";
		List<ContentBottom> list=sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public ContentBottom getContentBottomByCbid(Integer cbid) {
		String hql = "from ContentBottom where cbid = ?";
		ContentBottom contentBottom = (ContentBottom) sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, cbid).uniqueResult();
		return contentBottom;
	}

	@Override
	public int totalRecord() {
		String hql = "select count(*) from ContentBottom";
		List<Long> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list != null && list.size() > 0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<ContentBottom> findCategoryForList(String name) {
		String hql = "from ContentBottom where bContent is not null and bContent like concat('%',?,'%')";
		List<ContentBottom> list= sessionFactory.getCurrentSession().createQuery(hql).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public List<ContentBottom> queryByPage(int from, int length, String name) {
		String hql = "from ContentBottom where bContent is not null and bContent like concat('%',?,'%') order by cbid desc";
		List<ContentBottom> list = sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(from).setMaxResults(length).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public List<ContentBottom> findByPage(int begin, int limit) {
		String hql = "from ContentBottom";
		List<ContentBottom> list = sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(begin).setMaxResults(limit).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}
	
	
	@Override
	public void deleteacadForIds(int cbid) {
		String hql = "delete from ContentBottom where cbid = ?";
		sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, cbid).executeUpdate();
	}

	@Override
	public void updateAcad(ContentBottom contentBottom) {
		sessionFactory.getCurrentSession().update(contentBottom);
	}

	
}
