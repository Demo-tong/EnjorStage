package com.enjoyStage.entity;
/**
 * 类说明
 * @time Sep 9, 2016
 */
public class Good {

	private String goodID;
	private String goodname;
	private double price;
	private int storagerate;
	private String img;

	public String getGoodID() {
		return goodID;
	}

	public void setGoodID(String goodID) {
		this.goodID = goodID;
	}

	public String getGoodname() {
		return goodname;
	}

	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStoragerate() {
		return storagerate;
	}

	public void setStoragerate(int storagerate) {
		this.storagerate = storagerate;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}
