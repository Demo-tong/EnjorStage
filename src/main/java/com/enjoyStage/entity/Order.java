package com.enjoyStage.entity;

public class Order {
	private String orderID;
	private String userID;
	private String goodID;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(String orderID, String userID, String goodID) {
		super();
		this.orderID = orderID;
		this.userID = userID;
		this.goodID = goodID;
	}

	public String getOrderID() {
		return orderID;
	}

	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getGoodID() {
		return goodID;
	}

	public void setGoodID(String goodID) {
		this.goodID = goodID;
	}

}
