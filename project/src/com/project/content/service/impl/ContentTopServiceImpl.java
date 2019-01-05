package com.project.content.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.content.dao.ContentTopDao;
import com.project.content.service.ContentTopService;
import com.project.domain.ContentTop;
import com.project.utils.PageBean;

@Service("contentTopService")
@Transactional
public class ContentTopServiceImpl implements ContentTopService {
	
	@Autowired
	private ContentTopDao contentTopDao;

	@Override
	public PageBean<ContentTop> getContentTopForList(Integer page) {
		PageBean<ContentTop> pageBean = new PageBean<ContentTop>();

		pageBean.setPage(page);
		int limit = 3;
		pageBean.setLimit(limit);
		int totalCount = contentTopDao.totalRecord();
		pageBean.setTotalCount(totalCount);
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		int begin = (page - 1) * limit;
		List<ContentTop> list = contentTopDao.findByPage(begin,limit);
		pageBean.setList(list);
		return pageBean;
		//return contentTopDao.getContentTopForList();
		
	}

	@Override
	public ContentTop findNoticeBullByCtid(Integer anno) {
		
		return contentTopDao.findNoticeBullByCtid(anno);
		
	}

	@Override
	public int totalRecord() {
		return contentTopDao.totalRecord();
	}

	@Override
	public List<ContentTop> findCategoryForList(String name) {
		return contentTopDao.findCategoryForList(name);
	}

	@Override
	public List<ContentTop> queryByPage(int from, int length, String name) {
		return contentTopDao.queryByPage(from,length,name);
	}

	@Override
	public void deleteAnnouncementForIds(int ctid) {
		contentTopDao.deleteAnnouncementForIds(ctid);
	}

	@Override
	public void updateAnnouncement(ContentTop contentTop) {
		contentTopDao.updateAnnouncement(contentTop);
	}

	@Override
	public List<ContentTop> findAnnoun(String content) {
		List<ContentTop> contentTop = contentTopDao.findAnnoun(content);
		return contentTop;
	}
	
}
