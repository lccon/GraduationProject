package com.project.content.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.content.dao.ContentBottomDao;
import com.project.content.service.ContentBottomService;
import com.project.domain.ContentBottom;
import com.project.domain.ContentTop;
import com.project.utils.PageBean;

@Service("contentBottomService")
@Transactional
public class ContentBottomServiceImpl implements ContentBottomService {
	
	@Autowired
	private ContentBottomDao contentBottomDao;

	@Override
	public PageBean<ContentBottom> getContentBottomForList(Integer page) {
		PageBean<ContentBottom> pageBean = new PageBean<ContentBottom>();

		pageBean.setPage(page);
		int limit = 3;
		pageBean.setLimit(limit);
		int totalCount = contentBottomDao.totalRecord();
		pageBean.setTotalCount(totalCount);
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		int begin = (page - 1) * limit;
		List<ContentBottom> list = contentBottomDao.findByPage(begin,limit);
		pageBean.setList(list);
		return pageBean;
		
	}

	@Override
	public ContentBottom getContentBottomByCbid(Integer cbid) {
		ContentBottom contentBottom = contentBottomDao.getContentBottomByCbid(cbid);
		return contentBottom;
	}

	@Override
	public int totalRecord() {
		return contentBottomDao.totalRecord();
	}

	@Override
	public List<ContentBottom> findCategoryForList(String name) {
		return contentBottomDao.findCategoryForList(name);
	}

	@Override
	public List<ContentBottom> queryByPage(int from, int length, String name) {
		return contentBottomDao.queryByPage(from, length, name);
	}

	@Override
	public void deleteacadForIds(int cbid) {
		contentBottomDao.deleteacadForIds(cbid);
	}

	@Override
	public void updateAcad(ContentBottom contentBottom) {
		contentBottomDao.updateAcad(contentBottom);
	}
	
}
