package com.enjoyStage.service;

public interface IOrderService {
	public boolean selectByAliuser(String aliuser, String password);
	public boolean insertOrder(String username);
}
