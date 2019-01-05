package com.project.announInfo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.announInfo.dao.AnnounInfoDao;
import com.project.announInfo.service.AnnounInfoService;
import com.project.domain.AnnounInfo;

@Service("announInfoService")
public class AnnounInfoServiceImpl implements AnnounInfoService{
	
	@Autowired
	private AnnounInfoDao announInfoDao;

	@Override
	public AnnounInfo getContentTopByAnno(Integer anno) {
		return announInfoDao.getContentTopByAnno(anno);
	}
	
}
