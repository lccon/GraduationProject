package com.project.announInfo.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.announInfo.dao.AnnounInfoDao;
import com.project.domain.AnnounInfo;

@Repository("announInfoDao")
public class AnnounInfoDaoImpl implements AnnounInfoDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public AnnounInfo getContentTopByAnno(Integer anno) {
		String hql = "from AnnounInfo a where a.contentTop.ctid = ?";
		AnnounInfo announInfo = (AnnounInfo) sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, anno).uniqueResult();
		return announInfo;
	}
	
}
