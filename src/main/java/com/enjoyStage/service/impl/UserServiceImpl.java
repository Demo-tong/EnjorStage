package com.enjoyStage.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.enjoyStage.dao.IUserDAO;
import com.enjoyStage.entity.User;
import com.enjoyStage.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	private IUserDAO userDao;
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}

}
