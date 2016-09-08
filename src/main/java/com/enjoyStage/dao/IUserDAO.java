package com.enjoyStage.dao;

import java.util.List;

import com.enjoyStage.entity.User;

public interface IUserDAO {

	public User selectByUsername(String username, String password);
	public boolean insertUser(String username, String password);
	public List<User> findAll();
}
