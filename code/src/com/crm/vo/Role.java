package com.crm.vo;

public class Role {
	private String role_id;
	private String role_name;
	
	public Role(String id) {
		role_id = id;
		role_name = "";
	}
	
	public Role(){
		
	}
	
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}

}
