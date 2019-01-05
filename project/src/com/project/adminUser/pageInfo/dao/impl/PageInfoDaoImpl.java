package com.project.adminUser.pageInfo.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.adminUser.pageInfo.dao.PageInfoDao;
import com.project.domain.PageInfo;

@Repository("pageInfoDao")
public class PageInfoDaoImpl implements PageInfoDao {
 
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public PageInfo getPageInfoByCsid(Integer csid) {
		String hql = "from PageInfo p where p.categorySecond.csid = ?";
		List<PageInfo> list = sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, csid).list();
		if(list != null && list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public void updatePageInfo(PageInfo pageInfo) {
		sessionFactory.getCurrentSession().update(pageInfo);
	}
	
}
