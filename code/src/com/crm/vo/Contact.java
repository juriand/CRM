package com.crm.vo;

public class Contact {
    private String contact_id;
    private String contact_name;
    private String contact_gender;
    private String contact_position;
    private String contact_officephone;
    private String contact_telephone;
    private String contact_memo;
    private Client contact_client;
    
	public Client getContact_client() {
		return contact_client;
	}
	public void setContact_client(Client contact_client) {
		this.contact_client = contact_client;
	}
	public String getContact_id() {
		return contact_id;
	}
	public void setContact_id(String contact_id) {
		this.contact_id = contact_id;
	}
	public String getContact_name() {
		return contact_name;
	}
	public void setContact_name(String contact_name) {
		this.contact_name = contact_name;
	}
	public String getContact_gender() {
		return contact_gender;
	}
	public void setContact_gender(String contact_gender) {
		this.contact_gender = contact_gender;
	}
	public String getContact_position() {
		return contact_position;
	}
	public void setContact_position(String contact_position) {
		this.contact_position = contact_position;
	}
	public String getContact_officephone() {
		return contact_officephone;
	}
	public void setContact_officephone(String contact_officephone) {
		this.contact_officephone = contact_officephone;
	}
	public String getContact_telephone() {
		return contact_telephone;
	}
	public void setContact_telephone(String contact_telephone) {
		this.contact_telephone = contact_telephone;
	}
	public String getContact_memo() {
		return contact_memo;
	}
	public void setContact_memo(String contact_memo) {
		this.contact_memo = contact_memo;
	}
    
    
    
}
