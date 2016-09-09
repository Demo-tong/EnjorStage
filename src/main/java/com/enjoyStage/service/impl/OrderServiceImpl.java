package com.enjoyStage.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enjoyStage.dao.IOrderDao;
import com.enjoyStage.entity.Alipay;
import com.enjoyStage.service.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService {

	@Autowired
	private IOrderDao orderDao;

	public boolean selectByAliuser(String aliuser, String password) {

		// TODO Auto-generated method stub
		Alipay alipay = orderDao.selectByAliuser(aliuser, password);
		if (alipay != null) {
			return true;
		}

		return false;
	}

	public boolean insertOrder(String username) {
		// TODO Auto-generated method stub
		
		boolean bool = orderDao.insertOrder(username);
		if(bool){
			
		}
		return false;
	}
	
}
