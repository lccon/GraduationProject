package com.project.adminUser.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.adminUser.dao.AdminUserDao;
import com.project.domain.AdminUser;

@Repository("adminUserDao")
public class AdminUserDaoImpl implements AdminUserDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public AdminUser login(AdminUser adminUser) {
		String hql="from AdminUser where username = ? and password = ?";
		List<AdminUser> list=sessionFactory.getCurrentSession().createQuery(hql).setString(0, adminUser.getUsername()).setString(1, adminUser.getPassword()).list();
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		return null;
	}
	
}
