package com.project.user.service;

import java.util.List;

import com.project.domain.User;

public interface UserService {
	
	User addUser(User user);

	List<User> findUserForList(String name);

	int totalRecord();

	List<User> queryByPage(int from, int length, String name);

	void deleteMemberForIds(String uid);

	User getMemberByUid(String uid);

	User updateMemberInfo(User user);
	
}
