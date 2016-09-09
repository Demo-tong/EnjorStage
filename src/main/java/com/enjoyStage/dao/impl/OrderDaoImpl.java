package com.enjoyStage.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.enjoyStage.dao.IOrderDao;
import com.enjoyStage.entity.Alipay;

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
			Alipay result = jdbcTemplate.queryForObject(sql, BeanPropertyRowMapper.newInstance(Alipay.class));
			System.out.println(result);
			return result;
		} catch (Exception e) {
			return null;
		}
	}
}
