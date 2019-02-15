package com.crm.vo;

public class User {
	private String user_id;
	private String user_nickname;
	private String user_password;
	private String user_icon;
	private Role user_role;
	private String user_email;
	public User(){
		
	}
	public User(String id) {
		this.user_id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_icon() {
		return user_icon;
	}
	public void setUser_icon(String user_icon) {
		this.user_icon = user_icon;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public Role getUser_role() {
		return user_role;
	}
	public void setUser_role(Role user_role) {
		this.user_role = user_role;
	}

}
