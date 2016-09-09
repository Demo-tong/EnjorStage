package com.enjoyStage.dao;

import com.enjoyStage.entity.Alipay;

public interface IOrderDao {
	public Alipay selectByAliuser(String aliuser, String password);
}
