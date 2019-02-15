package com.crm.service;

import java.util.List;

import com.crm.vo.Authority;
import com.crm.vo.User;

public interface AuthorService {
	public List findAll();
	public Authority find(String authority_id);
	public void add(Authority author);
	public void delete(Authority author);
	public void update(Authority author);
	public List view(String id);
	public List searchById(String authority_id);

}
