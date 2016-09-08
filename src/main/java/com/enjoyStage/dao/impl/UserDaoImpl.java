package com.enjoyStage.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.enjoyStage.dao.IUserDAO;
import com.enjoyStage.entity.User;

@Repository
public class UserDaoImpl implements IUserDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	/*
	 * 功能：在用户表中查找用户是否存在，密码是否正确
	 *  参数： username and password
	 */
	public User selectByUsername(String username, String password) {
		String sql = "select * from users where username='" + username + "' and password= '" + password + "'";
		try {
			User result = jdbcTemplate.queryForObject(sql, BeanPropertyRowMapper.newInstance(User.class));
			return result;
		} catch (Exception e) {
			return null;
		}
	}

	/*
	 * 功能：在用户表中查找用户注册名是否已经存在 
	 * 参数：username and password
	 * @see com.enjoyStage.dao.IUserDAO#insertUser(java.lang.String,
	 * java.lang.String)
	 */
	public boolean insertUser(String username, String password) {
		// 在用户表中查找注册是否已经存在
		String sql = "select * from users where username='" + username + "'";

		// 将所查询到的结果映射到list中
		List<User> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper(User.class));

		if (list.size() == 0) {
			// list中没有信息，则表明数据库中不存在此用户名，因此该用户名合法
			sql = "insert into users(username,password) " + "values('" + username + "','"
					+ password + "')";
			if (jdbcTemplate.update(sql) != 0) {
				// 注册成功
				return true;
			}
			
			return false;
		}

		/*
		 * 注册失败 如果数据库中已经存在该用户名，则不能注册
		 */
		return false;
	}

	public List<User> findAll() {
		String sql = "select * from users";
		// TODO Auto-generated method stub
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper(User.class));
	}
}
