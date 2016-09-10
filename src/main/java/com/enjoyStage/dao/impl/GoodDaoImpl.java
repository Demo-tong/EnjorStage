package com.enjoyStage.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.enjoyStage.dao.IGoodDAO;
import com.enjoyStage.entity.Good;

@Repository
public class GoodDaoImpl implements IGoodDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public Good selectByGoodId(int id){
		String sql = "select * from goods where goodID='"+id+"'";
		try{
			Good result = jdbcTemplate.queryForObject(sql, BeanPropertyRowMapper.newInstance(Good.class));
			System.out.println("result+++++++++++++++++"+result);
			return result;
		}catch (Exception e){
			return null;
		}
	}
}
