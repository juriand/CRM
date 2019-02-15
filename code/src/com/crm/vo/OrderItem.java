package com.crm.vo;

public class OrderItem {
    private String item_id;
    private int item_amount;
    private double item_totalnum;
    private Product item_product;
    private Order item_order;
    
	public String getItem_id() {
		return item_id;
	}
	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}
	
	public int getItem_amount() {
		return item_amount;
	}
	public void setItem_amount(int item_amount) {
		this.item_amount = item_amount;
	}
	public double getItem_totalnum() {
		return item_totalnum;
	}
	public void setItem_totalnum(double item_totalnum) {
		this.item_totalnum = item_totalnum;
	}
	public Product getItem_product() {
		return item_product;
	}
	public void setItem_product(Product item_product) {
		this.item_product = item_product;
	}
	public Order getItem_order() {
		return item_order;
	}
	public void setItem_order(Order item_order) {
		this.item_order = item_order;
	}
    
    
    
}
