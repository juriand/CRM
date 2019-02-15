package com.crm.service;

import java.util.List;

import com.crm.dao.AuthorDao;
import com.crm.dao.RoleDao;
import com.crm.dao.UserDao;
import com.crm.vo.Authority;

public class AuthorServiceImpl implements AuthorService{
	private AuthorDao authorDao;

	@Override
	public List findAll() {
		List list = authorDao.findAll();
		return list;
	}

	public void setAuthorDao(AuthorDao authorDao) {
		this.authorDao = authorDao;
	}

	@Override
	public Authority find(String authority_id) {
		Authority a = authorDao.find(authority_id);
		return a;
	}

	@Override
	public void add(Authority author) {
		authorDao.add(author);
	}

	@Override
	public void delete(Authority author) {
		authorDao.delete(author);
	}

	@Override
	public void update(Authority author) {
		authorDao.update(author);
	}

	@Override
	public List view(String id) {
		List list = authorDao.view(id);
		return list;
	}

	@Override
	public List searchById(String authority_id) {
		List list = authorDao.searchById(authority_id);
		return list;
	}

}
