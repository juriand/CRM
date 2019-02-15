package com.crm.vo;

import java.util.Date;

public class CommuHistory {
    private String commuHistory_id;
    private Date commuHistory_date;
    private String commuHistory_location;
    private String commuHistory_outline;
    private String commuHistory_memo;
    private String commuHistory_detail;
    private Client commuHistory_client;
    
	public String getCommuHistory_id() {
		return commuHistory_id;
	}
	public void setCommuHistory_id(String commuHistory_id) {
		this.commuHistory_id = commuHistory_id;
	}
	
	public Date getCommuHistory_date() {
		return commuHistory_date;
	}
	public void setCommuHistory_date(Date commuHistory_date) {
		this.commuHistory_date = commuHistory_date;
	}
	public String getCommuHistory_location() {
		return commuHistory_location;
	}
	public void setCommuHistory_location(String commuHistory_location) {
		this.commuHistory_location = commuHistory_location;
	}
	public String getCommuHistory_outline() {
		return commuHistory_outline;
	}
	public void setCommuHistory_outline(String commuHistory_outline) {
		this.commuHistory_outline = commuHistory_outline;
	}
	public String getCommuHistory_memo() {
		return commuHistory_memo;
	}
	public void setCommuHistory_memo(String commuHistory_memo) {
		this.commuHistory_memo = commuHistory_memo;
	}
	public String getCommuHistory_detail() {
		return commuHistory_detail;
	}
	public void setCommuHistory_detail(String commuHistory_detail) {
		this.commuHistory_detail = commuHistory_detail;
	}
	public Client getCommuHistory_client() {
		return commuHistory_client;
	}
	public void setCommuHistory_client(Client commuHistory_client) {
		this.commuHistory_client = commuHistory_client;
	}
    
    
}
