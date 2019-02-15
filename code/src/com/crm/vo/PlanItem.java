package com.crm.vo;

import java.util.Date;

public class PlanItem {
	private String item_id;
	private Plan item_plan;
	private Date item_date;
	private String item_content;
	private String item_result;
	
	public String getItem_id() {
		return item_id;
	}
	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}
	public Date getItem_date() {
		return item_date;
	}
	public void setItem_date(Date item_date) {
		this.item_date = item_date;
	}
	public String getItem_content() {
		return item_content;
	}
	public void setItem_content(String item_content) {
		this.item_content = item_content;
	}
	public Plan getItem_plan() {
		return item_plan;
	}
	public void setItem_plan(Plan item_plan) {
		this.item_plan = item_plan;
	}
	public String getItem_result() {
		return item_result;
	}
	public void setItem_result(String item_result) {
		this.item_result = item_result;
	}

}
