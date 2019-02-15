package com.crm.vo;

public class RoleAuthorRelation {
	private String id;
	private Role role;
	private Authority authority;
	
	public RoleAuthorRelation() {

	}
	
	public RoleAuthorRelation(Role role) {
		this.role = role;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public Authority getAuthority() {
		return authority;
	}
	public void setAuthority(Authority authority) {
		this.authority = authority;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	

}
