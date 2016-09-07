package com.enjoyStage.dao.impl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.enjoyStage.dao.IUserDAO;
import com.enjoyStage.entity.User;

@Repository
public class UserDaoImpl implements IUserDAO {

	//根据输入的用户名去数据库查找
	private JdbcTemplate jdbcTemplate;
	public List<User> findAll() {
		String sql="select * from user";
		// TODO Auto-generated method stub
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper(User.class));
	}

}
