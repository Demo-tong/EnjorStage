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

	public User selectByUsername(String username, String password) {
			String sql = "select * from users where username='" + username + "' and password= '" + password + "'";
			System.out.println("sql" + sql);
			try {
				User result = jdbcTemplate.queryForObject(sql, BeanPropertyRowMapper.newInstance(User.class));
				System.out.println(result);
				return result;
			} catch (Exception e) {
				System.out.println("fghjklkjhgfdfghjkjhgfcdxfghjkjhgfcdxfgyhujk");
				return null;
			}
	}

	public boolean insertUser(String username, String password){
		// ÔÚÓÃ»§±íÖÐÑ°ÕÒ×¢²áÃûÊÇ·ñÒÑ¾­´æÔÚ
		String sql="select * from users where username='"+username+"'";
		
		// ½«Ëù²éÑ¯µÄ½á¹ûÓ³ÉäÔÚlistÖÐ
		List<User> list=jdbcTemplate.query(sql,new BeanPropertyRowMapper(User.class));
						
		if(list.size()==0){
			// listÖÐÃ»ÓÐÐÅÏ¢£¬Ôò±íÃ÷Êý¾Ý¿âÖÐ²»´æÔÚ´ËÓÃ»§Ãû³Æ£¬Òò´Ë´ËÓÃ»§ÃûºÏ·¨
			sql="insert into users(username,password,email,telephone,address) "+"values('"+username+"','"+password+"','123@qq.com','12345','12345')";
			if (jdbcTemplate.update(sql)!=0) {
				// ×¢²á³É¹¦
				return true;
			}
		}
		
		else{
			// Èç¹ûÊý¾Ý¿âÖÐÒÑ¾­´æÔÚ¸ÃÓÃ»§Ãû£¬Ôò²»ÄÜ¹»×¢²á
			// ×¢²áÊ§°Ü
			return false;
		}
		return false;
	}
	
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
}
