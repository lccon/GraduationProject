package com.project.adminUser.pageInfo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.adminUser.pageInfo.dao.PageInfoDao;
import com.project.adminUser.pageInfo.service.PageInfoService;
import com.project.domain.PageInfo;

@Service("pageInfoService")
@Transactional
public class PageInfoServiceImpl implements PageInfoService {
	
	@Autowired
	private PageInfoDao pageInfoDao;

	@Override
	public PageInfo getPageInfoByCsid(Integer csid) {
		PageInfo pageInfo = pageInfoDao.getPageInfoByCsid(csid);
		return pageInfo;
	}

	@Override
	public void updatePageInfo(PageInfo pageInfo) {
		pageInfoDao.updatePageInfo(pageInfo);
	}
	
}
