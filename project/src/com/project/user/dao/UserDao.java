package com.project.user.dao;

import java.util.List;

import com.project.domain.User;

public interface UserDao {

	void addUser(User user);

	List<User> findUserForList(String name);

	int totalRecord();

	List<User> queryByPage(int from, int length, String name);

	User getMemberByUid(int id);
	
	void deleteMemberForIds(int id);

	void updateMemberInfo(User user);


}
