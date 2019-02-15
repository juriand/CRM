package com.crm.service;

import java.util.List;

import com.crm.vo.Authority;
import com.crm.vo.Role;
import com.crm.vo.RoleAuthorRelation;
import com.crm.vo.User;

public interface RoleService {
	public List findAll();
	public Role view(String id);
	public void update(Role role);
	public void delete(Role role);
	public void add(Role role);
	public void addRelation(RoleAuthorRelation realtion);
	public boolean confirm(String role_id, String author);
	public List getAllAuthorByRole(String role_id);
	public void deleteRelation(RoleAuthorRelation roleAuthorRelation);
}
