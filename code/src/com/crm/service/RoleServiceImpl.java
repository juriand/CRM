package com.crm.service;

import java.util.List;

import com.crm.dao.RoleAuthorDao;
import com.crm.dao.RoleDao;
import com.crm.dao.UserDao;
import com.crm.vo.Authority;
import com.crm.vo.Role;
import com.crm.vo.RoleAuthorRelation;


public class RoleServiceImpl implements RoleService{
	private RoleDao roleDao;
	private RoleAuthorDao roleAuthorDao;

	@Override
	public List findAll() {
		List list = roleDao.findAll();
		return list;
	}

	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}

	public void setRoleAuthorDao(RoleAuthorDao roleAuthorDao) {
		this.roleAuthorDao = roleAuthorDao;
	}

	@Override
	public Role view(String id) {
		Role role = roleDao.view(id);
		return role;
	}

	@Override
	public void update(Role role) {
		roleDao.update(role);
	}

	@Override
	public void delete(Role role) {
		roleDao.delete(role);
	}

	@Override
	public void add(Role role) {
		roleDao.add(role);
	}
	
	@Override
	public void addRelation(RoleAuthorRelation realtion) {
		roleAuthorDao.addRelation(realtion);
	}

	@Override
	public boolean confirm(String role_id, String author) {
		return roleAuthorDao.confirm(role_id,author);
	}

	@Override
	public List getAllAuthorByRole(String role_id) {
		// TODO Auto-generated method stub
		return roleAuthorDao.getAllAuthorByRole(role_id);
	}

	@Override
	public void deleteRelation(RoleAuthorRelation roleAuthorRelation) {
		roleAuthorDao.deleteRelation(roleAuthorRelation);
	}


}
