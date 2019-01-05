package com.project.adminUser.pageInfo.dao;

import com.project.domain.PageInfo;

public interface PageInfoDao {

	PageInfo getPageInfoByCsid(Integer csid);

	void updatePageInfo(PageInfo pageInfo);

}
