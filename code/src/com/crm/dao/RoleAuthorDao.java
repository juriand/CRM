package com.crm.dao;

import java.util.List;

import com.crm.vo.Authority;
import com.crm.vo.Role;
import com.crm.vo.RoleAuthorRelation;

public interface RoleAuthorDao {
	public void addRelation(RoleAuthorRelation realtion);
	public boolean confirm(String role_id, String author);
	public List getAllAuthorByRole(String role_id);
	public void deleteRelation(RoleAuthorRelation roleAuthorRelation);
}
