package com.crm.vo;

import java.util.Date;
import java.util.Set;

public class Order {
     private String order_id;
     private Date order_date;
     private String order_address;
     private double order_totalnum;
     private String order_status;
     private Client order_client;
     private Set<OrderItem> orderitems;
     
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public double getOrder_totalnum() {
		return order_totalnum;
	}
	public void setOrder_totalnum(double order_totalnum) {
		this.order_totalnum = order_totalnum;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public Client getOrder_client() {
		return order_client;
	}
	public void setOrder_client(Client order_client) {
		this.order_client = order_client;
	}
	public Set<OrderItem> getOrderitems() {
		return orderitems;
	}
	public void setOrderitems(Set<OrderItem> orderitems) {
		this.orderitems = orderitems;
	}
	
	
	
     
     
     
     
}
