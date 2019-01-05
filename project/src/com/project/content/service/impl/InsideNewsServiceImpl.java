package com.project.content.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.content.dao.InsideNewsDao;
import com.project.content.service.InsideNewsService;
import com.project.domain.ContentBottom;
import com.project.domain.InsideNews;
import com.project.utils.PageBean;

@Service("insideNewsService")
@Transactional
public class InsideNewsServiceImpl implements InsideNewsService {
	
	@Autowired
	private InsideNewsDao insideNewsDao;

	@Override
	public PageBean<InsideNews> getInsideNews(Integer page) {
		PageBean<InsideNews> pageBean = new PageBean<InsideNews>();

		pageBean.setPage(page);
		int limit = 3;
		pageBean.setLimit(limit);
		int totalCount = insideNewsDao.totalRecord();
		pageBean.setTotalCount(totalCount);
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		int begin = (page - 1) * limit;
		List<InsideNews> list = insideNewsDao.findByPage(begin,limit);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public InsideNews getInsideNewsByNid(Integer nid) {
		InsideNews insideNews = insideNewsDao.getInsideNewsByNid(nid);
		return insideNews;
	}

	@Override
	public int totalRecord() {
		return insideNewsDao.totalRecord();
	}

	@Override
	public List<InsideNews> findUserForList(String name) {
		return insideNewsDao.findUserForList(name);
	}

	@Override
	public List<InsideNews> queryByPage(int from, int length, String name) {
		return insideNewsDao.queryByPage(from, length, name);
	}

	@Override
	public void deleteIndustryForIds(int nid) {
		insideNewsDao.deleteIndustryForIds(nid);
	}

	@Override
	public InsideNews findInsideNewsByNewid(int newId) {
		return insideNewsDao.findInsideNewsByNewid(newId);
	}

	@Override
	public void updateIndustry(InsideNews insideNews) {
		insideNewsDao.updateIndustry(insideNews);
	}
	
	
}
