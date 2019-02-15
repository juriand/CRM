package com.crm.vo;

import java.util.Date;

public class LoseRecord {
	private String lose_id;
	private Date lose_lastorder_date;
	private Client lose_client;
	private String lose_status;
	private String lose_reason;
	private Date lose_verify_date;
	private String lose_measure;
	
	
	public String getLose_id() {
		return lose_id;
	}
	public void setLose_id(String lose_id) {
		this.lose_id = lose_id;
	}
	public Date getLose_lastorder_date() {
		return lose_lastorder_date;
	}
	public void setLose_lastorder_date(Date lose_lastorder_date) {
		this.lose_lastorder_date = lose_lastorder_date;
	}
	public Client getLose_client() {
		return lose_client;
	}
	public void setLose_client(Client lose_client) {
		this.lose_client = lose_client;
	}
	public String getLose_status() {
		return lose_status;
	}
	public void setLose_status(String lose_status) {
		this.lose_status = lose_status;
	}
	public String getLose_reason() {
		return lose_reason;
	}
	public void setLose_reason(String lose_reason) {
		this.lose_reason = lose_reason;
	}
	public Date getLose_verify_date() {
		return lose_verify_date;
	}
	public void setLose_verify_date(Date lose_verify_date) {
		this.lose_verify_date = lose_verify_date;
	}
	public String getLose_measure() {
		return lose_measure;
	}
	public void setLose_measure(String lose_measure) {
		this.lose_measure = lose_measure;
	}
	
	
}
