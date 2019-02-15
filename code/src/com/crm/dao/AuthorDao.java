package com.crm.dao;

import java.util.List;

import com.crm.vo.Authority;

public interface AuthorDao {
	public List findAll();
	public Authority find(String authority_id);
	public void add(Authority author);
	public void delete(Authority author);
	public void update(Authority author);
	public List view(String id);
	public List searchById(String authority_id);
}
