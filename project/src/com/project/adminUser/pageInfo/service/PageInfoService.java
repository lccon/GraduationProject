package com.project.adminUser.pageInfo.service;

import com.project.domain.PageInfo;

public interface PageInfoService {

	PageInfo getPageInfoByCsid(Integer csid);

	void updatePageInfo(PageInfo pageInfo);

}
