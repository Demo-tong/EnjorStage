package com.enjoyStage.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enjoyStage.dao.IGoodDAO;
import com.enjoyStage.entity.Good;
import com.enjoyStage.service.IGoodService;

@Service
public class GoodServiceImpl implements IGoodService {

	@Autowired
	private IGoodDAO goodDao;

	public Good selectGoodById(int id) {
		return goodDao.selectByGoodId(id);
	}

}
