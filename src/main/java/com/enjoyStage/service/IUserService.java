package com.enjoyStage.service;

import java.util.List;

import com.enjoyStage.entity.User;

public interface IUserService {

	public boolean selectByUsername(String username, String password);

	public boolean insertUser(String username, String password, String password_t);

	public List<User> findAll();
}
