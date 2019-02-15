package com.crm.dao;

import java.util.List;

import com.crm.vo.Authority;
import com.crm.vo.Role;

public interface RoleDao {
	public List findAll();
	public void update(Role role);
	public void delete(Role role);
	public Role view(String id);
	public void add(Role role);

}
