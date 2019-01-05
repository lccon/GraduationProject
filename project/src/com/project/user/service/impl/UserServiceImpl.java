package com.project.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.domain.User;
import com.project.user.dao.UserDao;
import com.project.user.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public User addUser(User user) {
		userDao.addUser(user);
		return user;
	}

	@Override
	public List<User> findUserForList(String name) {
		List<User> list = userDao.findUserForList(name);
		return list;
	}

	@Override
	public int totalRecord() {
		int totalRecord = userDao.totalRecord();
		if(totalRecord > 0){
			return totalRecord;
		}
		return 0;
	}

	@Override
	public List<User> queryByPage(int from, int length, String name) {
		List<User> list = userDao.queryByPage(from,length, name);
		return list;
	}

	@Override
	public void deleteMemberForIds(String uid) {
		int id = Integer.parseInt(uid);
		userDao.deleteMemberForIds(id);
	}

	@Override
	public User getMemberByUid(String uid) {
		int id = Integer.parseInt(uid);
		return userDao.getMemberByUid(id);
	}

	@Override
	public User updateMemberInfo(User user) {
		userDao.updateMemberInfo(user);
		return user;
	}

}
