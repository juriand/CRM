package com.crm.vo;

import java.util.Date;

public class Opportunity {
	private String oppo_id;
	private String oppo_source;
	private String oppo_clientName;
	private int oppo_probability;
	private String oppo_outline;
	private String oppo_contact;
	private String oppo_contactPhone;
	private String oppo_content;
	private User oppo_creator;
	private Date oppo_createTime;
	private User oppo_clientManage;
	private Date oppo_assignDate;
	private String oppo_status;
	private Plan oppo_plan;
	
	
	public String getOppo_id() {
		return oppo_id;
	}
	public void setOppo_id(String oppo_id) {
		this.oppo_id = oppo_id;
	}
	public String getOppo_source() {
		return oppo_source;
	}
	public void setOppo_source(String oppo_source) {
		this.oppo_source = oppo_source;
	}
	public String getOppo_clientName() {
		return oppo_clientName;
	}
	public void setOppo_clientName(String oppo_clientName) {
		this.oppo_clientName = oppo_clientName;
	}
	public int getOppo_probability() {
		return oppo_probability;
	}
	public void setOppo_probability(int oppo_probability) {
		this.oppo_probability = oppo_probability;
	}
	public String getOppo_outline() {
		return oppo_outline;
	}
	public void setOppo_outline(String oppo_outline) {
		this.oppo_outline = oppo_outline;
	}
	public String getOppo_contact() {
		return oppo_contact;
	}
	public void setOppo_contact(String oppo_contact) {
		this.oppo_contact = oppo_contact;
	}
	public String getOppo_contactPhone() {
		return oppo_contactPhone;
	}
	public void setOppo_contactPhone(String oppo_contactPhone) {
		this.oppo_contactPhone = oppo_contactPhone;
	}
	public String getOppo_content() {
		return oppo_content;
	}
	public void setOppo_content(String oppo_content) {
		this.oppo_content = oppo_content;
	}

	public Date getOppo_createTime() {
		return oppo_createTime;
	}
	public void setOppo_createTime(Date oppo_createTime) {
		this.oppo_createTime = oppo_createTime;
	}

	public Date getOppo_assignDate() {
		return oppo_assignDate;
	}
	public void setOppo_assignDate(Date oppo_assignDate) {
		this.oppo_assignDate = oppo_assignDate;
	}
	public String getOppo_status() {
		return oppo_status;
	}
	public void setOppo_status(String oppo_status) {
		this.oppo_status = oppo_status;
	}
	public User getOppo_creator() {
		return oppo_creator;
	}
	public void setOppo_creator(User oppo_creator) {
		this.oppo_creator = oppo_creator;
	}
	public User getOppo_clientManage() {
		return oppo_clientManage;
	}
	public void setOppo_clientManage(User oppo_clientManage) {
		this.oppo_clientManage = oppo_clientManage;
	}
	public Plan getOppo_plan() {
		return oppo_plan;
	}
	public void setOppo_plan(Plan oppo_plan) {
		this.oppo_plan = oppo_plan;
	}
	

}
