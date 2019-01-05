package com.project.adminUser.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.adminUser.dao.AdminUserDao;
import com.project.adminUser.service.AdminUserService;
import com.project.domain.AdminUser;

@Service("adminUserService")
public class AdminUserServiceImpl implements AdminUserService {
	
	@Autowired
	private AdminUserDao adminUserDao;

	@Override
	public AdminUser login(AdminUser adminUser) {
		return adminUserDao.login(adminUser);
	}
	
}
