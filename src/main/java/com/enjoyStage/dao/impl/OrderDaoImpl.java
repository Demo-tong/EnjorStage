package com.enjoyStage.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.enjoyStage.dao.IOrderDao;
import com.enjoyStage.entity.Alipay;
import com.enjoyStage.entity.User;

@Repository
public class OrderDaoImpl implements IOrderDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public Alipay selectByAliuser(String aliuser, String password) {
		// TODO Auto-generated method stub

		// 定义sql语句
		String sql = "select * from alipay where aliuser = '" + aliuser + "' and password = '" + password + "'";

		// 在数据库中查找支付宝账户，查找到返回找到的对象，否则返回null
		try {
			return jdbcTemplate.queryForObject(sql, BeanPropertyRowMapper.newInstance(Alipay.class));
		} catch (Exception e) {
			return null;
		}
	}

	public boolean insertOrder(String username) {
		// TODO Auto-generated method stub

		// 查询该用户是否在数据库中
		String querySql = "select userID from users where username = '" + username + "'";
		// 将所查询到的结果映射到list中
		List<User> list = jdbcTemplate.queryForObject(querySql, new BeanPropertyRowMapper(User.class));

		if (list.size() != 0) {
			// list中没有信息，则表明数据库中不存在此用户名，因此该用户名合法
			String insertSql = "insert into orders(userID) " + "values('" + username + "')";
			if (jdbcTemplate.update(insertSql) != 0) {
				// 写入订单信息成功
				return true;
			}

			return false;
		}

		return false;
	}
}
