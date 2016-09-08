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
	public boolean selectByUsername(String username, String password){
		boolean bool=false;
		User user=userDao.selectByUsername(username, password);
		if(user!=null){
			bool=true;
		}
		System.out.println("bool"+bool);
		return bool;
	}
	
	public boolean insertUser(String username, String password, String password_t){
		//ÏÈÅÐ¶ÏÓÃ»§Á½´ÎÊäÈëÃÜÂëÊÇ·ñÒ»ÖÂ
		if(password.equals(password_t) == false){
			// ÃÜÂë²»Ò»ÖÂ´íÎó
			return false;
		}else{
			/*
			 * Í¨¹ýµ÷ÓÃinsertUser·½·¨£¬ÔÚÆäÖÐÅÐ¶Ï×¢²áÃûÊÇ·ñºÏ·¨¡£
			 * ÈôºÏ·¨£¬Ôò²åÈëÊý¾Ý¿âÖÐ£¬·µ»Øtrue£»·ñÔò£¬×¢²áÊ§°Ü·µ»Øfalse¡£
			 */
			return userDao.insertUser(username, password);
		}
		
	}
	
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}

}
