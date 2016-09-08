package com.enjoyStage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enjoyStage.dao.IUserDAO;
import com.enjoyStage.entity.User;
import com.enjoyStage.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDAO userDao;

	public boolean selectByUsername(String username, String password) {
		boolean bool = false;
		User user = userDao.selectByUsername(username, password);
		if (user != null) {
			bool = true;
		}
		return bool;
	}

	public boolean insertUser(String username, String password, String password_t) {

		/*
		 * 先判断用户两次输入密码是否一致 通过调用insertUser方法，在其中判断注册名是否合法
		 * 若合法，则插入数据库中，返回true；否则，注册失败返回false
		 */
		if (password.equals(password_t)) {
			return userDao.insertUser(username, password);

		}
		// 密码不一致返回false
		return false;
	}

	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}

}
