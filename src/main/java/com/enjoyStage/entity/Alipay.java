package com.enjoyStage.entity;

public class Alipay {
	private String aliuser;
	private String password;
	private Integer money;
	
	public Alipay() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Alipay(String aliuser, String password, Integer money) {
		super();
		this.aliuser = aliuser;
		this.password = password;
		this.money = money;
	}

	public String getAliuser() {
		return aliuser;
	}

	public void setAliuser(String aliuser) {
		this.aliuser = aliuser;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getMoney() {
		return money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}
	
}
