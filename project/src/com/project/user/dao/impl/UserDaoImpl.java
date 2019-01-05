package com.project.user.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.domain.User;
import com.project.user.dao.UserDao;

@Repository("userDao")
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addUser(User user) {
		sessionFactory.getCurrentSession().save(user);
	}

	@Override
	public List<User> findUserForList(String name) {
		String hql = "from User where name is not null and name like concat('%',?,'%')";
		List<User> list= sessionFactory.getCurrentSession().createQuery(hql).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public int totalRecord() {
		String hql = "select count(*) from User";
		List<Long> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list != null){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<User> queryByPage(int from, int length, String name) {
		String hql = "from User where name is not null and name like concat('%',?,'%') order by uid desc";
		List<User> list = sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(from).setMaxResults(length).setString(0, name).list();
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public User getMemberByUid(int uid) {
		String hql = "from User where uid = ?";
		User user = (User) sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, uid).uniqueResult();
		return user;
	}
	
	@Override
	public void deleteMemberForIds(int uid) {
		String hql = "delete from User where uid = ?";
		sessionFactory.getCurrentSession().createQuery(hql).setInteger(0, uid).executeUpdate();
		//sessionFactory.getCurrentSession().delete(User.class);
	}

	@Override
	public void updateMemberInfo(User user) {
		sessionFactory.getCurrentSession().update(user);
	}

}
